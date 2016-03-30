source ~/.zsh/setopt.zsh
source ~/.zsh/history.zsh
source ~/.zsh/exports.zsh
source ~/.zsh/prompt.zsh
source ~/.zsh/completion.zsh

source /usr/local/bin/virtualenvwrapper_lazy.sh

function l(){
    tmuxp load ~/.tmuxp/$1.yaml
}

function killtp(){
    the_session="$(tmux display-message -p '#S')"
    echo $the_session
    tmux kill-session -t $the_session
}

