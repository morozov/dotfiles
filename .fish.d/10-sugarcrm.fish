set PATH $PATH ../vendor/bin ../../vendor/bin

alias patch="patch -p1 --no-backup-if-mismatch"
alias gomango="cd $SUGARCRM_MANGO_DIR/sugarcrm"
alias gobuild="cd $SUGARCRM_BUILD_DIR"
alias gotest="cd $SUGARCRM_BUILD_DIR/tests/\{old\}"

if [ -d "$HOME/Projects/multiverse" ]
    alias multi="cd $HOME/Projects/multiverse"
    set PATH $PATH $HOME/Projects/multiverse/tools/bin
end
