set PATH $PATH ../vendor/bin ../../vendor/bin

alias patch="patch -p1 --no-backup-if-mismatch"
alias gomango="cd $SUGARCRM_MANGO_DIR/sugarcrm"
alias gobuild="cd $SUGARCRM_BUILD_DIR"
alias gotest="cd $SUGARCRM_BUILD_DIR/tests/\{old\}"

if [ -d "$GOPATH/src/github.com/sugarcrm/multiverse" ]
    alias multi="cd $GOPATH/src/github.com/sugarcrm/multiverse"
    set PATH $PATH $GOPATH/src/github.com/sugarcrm/multiverse/tools/bin/linux
end
