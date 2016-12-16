autoload -Uz colors && colors

# vcs_info
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr ✚
zstyle ':vcs_info:*' formats "(%{$fg[cyan]%}%b%{$reset_color%}) %{$fg[green]%}%u%{$reset_color%}"
precmd () { vcs_info }

PROMPT='[%{$fg[green]%}%n%{$reset_color%}:%{$fg[yellow]%}%2/%{$reset_color%}]%{$fg[cyan]%}~>%{$reset_color%} '
RPROMPT='${vcs_info_msg_0_}'
