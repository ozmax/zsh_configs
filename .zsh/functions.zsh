l(){
    cd $(eval "sed -n 's|start_directory: ||p' ~/.tmuxp/$1")
    tmuxp load ~/.tmuxp/$1
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
