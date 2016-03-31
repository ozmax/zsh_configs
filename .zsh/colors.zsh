autoload -Uz colors && colors

export CLICOLOR=0

### LS COLORS ###

# directory color
LS_COLORS='di=1;34:'

#file color
LS_COLORS=$LS_COLORS:'fi=4;93:'

# symlink color
LS_COLORS=$LS_COLORS:'ln=0;36:'

# executable color
LS_COLORS=$LS_COLORS:'ex=0;31:'
export LS_COLORS

#################
