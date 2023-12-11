function __auto_source_virtualenv \
  --on-variable PWD \
  --description "Activate or deactivate virtualenv on directory change"
  if status --is-command-substitution
    return
  end

  set -l current_dir (pwd)
  set -l target_file "venv/bin/activate.fish"

  while true
    if test "$VIRTUAL_ENV" = "$current_dir"
      return
    end

    if test -e "$current_dir/$target_file"
      source "$current_dir/$target_file"
      return
    end

    set -l parent_dir (dirname $current_dir)

    if test "$parent_dir" = "$current_dir"
      if test -n "$VIRTUAL_ENV"
        deactivate
      end

      return
    end

    set current_dir $parent_dir
  end
end

# Run it once manually in case if the new session is opened in a project directory
__auto_source_virtualenv
