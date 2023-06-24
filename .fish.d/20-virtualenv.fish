function __auto_source_virtualenv \
  --on-variable PWD \
  --description "Activate or deactivate virtualenv on directory change"
  if status --is-command-substitution
    return
  end

  set gitdir (git rev-parse --show-toplevel 2>/dev/null)

  if [ $status -eq 0 ]
    if test "$VIRTUAL_ENV" = "$gitdir"
      return
    end

    if test -e "$gitdir/venv/bin/activate.fish"
      source "$gitdir/venv/bin/activate.fish"
      return
    end
  end

  if test -n "$VIRTUAL_ENV"
    deactivate
  end
end

# Run it once manually in case if the new session is opened in a project directory
__auto_source_virtualenv
