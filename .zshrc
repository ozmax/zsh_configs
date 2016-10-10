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

l(){
    tmuxp load ~/.tmuxp/$1.yaml
}

recreatedb(){
    dropdb $1
    createdb $1
}

revenv() {
    if test -n "$VIRTUAL_ENV"; then
        venv_name=$(echo "$VIRTUAL_ENV" | sed "s|$WORKON_HOME/||")
        deactivate
    else
        echo "Please specify or activate an enviroment."
        return
    fi
    rmvirtualenv "$venv_name"
    mkvirtualenv "$venv_name"
}

diffreqs() {
    diff <(sed -e 's|git+ssh://git@bitbucket.org/indev/\(.*\)\.git.*-\([0-9\.]*\)$|\1==\2|' -e 's/[[:space:]]*#.*//' -e '/^[[:space:]]*$/d' requirements.txt | sort) <(pip freeze | sort)
}

placeholdit(){
    wget -O $2.png "http://placehold.it/$1.png"
}

rmpyc() {
    find . -name "*.pyc" -delete
}
