# https://aws.amazon.com/premiumsupport/knowledge-center/authenticate-mfa-cli/
function aws-mfa
    if [ (count $argv) -ge 1 ]
        set -gx AWS_PROFILE $argv[1]
    end

    set MFA_ID (aws sts get-caller-identity --query Arn --output text| sed 's,user/,mfa/,')
    or return 1

    read -P "Type the MFA code for $MFA_ID: " MFA_CODE

    set response (aws sts get-session-token --serial-number $MFA_ID --token-code $MFA_CODE)
    or return 1

    set -gx AWS_ACCESS_KEY_ID     (echo $response | jq -r .Credentials.AccessKeyId)
    set -gx AWS_SECRET_ACCESS_KEY (echo $response | jq -r .Credentials.SecretAccessKey)
    set -gx AWS_SESSION_TOKEN     (echo $response | jq -r .Credentials.SessionToken)

    echo -n "Token expires at: "
    echo $response | jq -r .Credentials.Expiration
end

function __fish_aws_mfa_profiles
    perl -lne 's/^\[([^]]*)\]/\1/ or next; print' < ~/.aws/credentials
end

complete -f -c aws-mfa -a "(__fish_aws_mfa_profiles)" -d "AWS_PROFILE"
