# Custom prompt

# Color shortcuts
R=$fg_no_bold[red]
G=$fg_no_bold[green]
M=$fg_no_bold[magenta]
Y=$fg_no_bold[yellow]
B=$fg_no_bold[blue]
RESET=$reset_color

PROMPT='[%{$fg_no_bold[magenta]%}%*%{$reset_color%}] %{$fg_no_bold[red]%}»%{$reset_color%} '

RPROMPT='%{$fg_no_bold[green]%}${PWD/#$HOME/~}%{$reset_color%}'
