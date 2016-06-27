export CLICOLOR=1
#source ~/.zsh/colors.zsh
source ~/.zsh/setopt.zsh
source ~/.zsh/history.zsh
source ~/.zsh/exports.zsh
source ~/.zsh/prompt.zsh
source ~/.zsh/completion.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/bindkeys.zsh

source /usr/local/bin/virtualenvwrapper_lazy.sh

function l(){
    tmuxp load ~/.tmuxp/$1.yaml
}
