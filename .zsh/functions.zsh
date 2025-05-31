l(){
    cd $(eval "sed -n 's|start_directory: ||p' ~/.tmuxp/$1")
    tmuxp load ~/.tmuxp/$1
}
