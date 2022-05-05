#
# ~/.bashrc
#

#cowsay -f dragon "MANNAGGIA IL SANGUE DI CRISTO"
#cowsay -f  beavis.zen "EH EH"
#cowsay -f me "YES"


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# setting the ENV
export JUPYTERLAB_DIR=$HOME/.local/share/jupyter/lab

# variabile ambiente per android-studio (solo se lo faccio partire da shell)
export _JAVA_AWT_WM_NONREPARENTING=1

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias ll="ls -lah"


# short programming PS1
CYAN="\[$(tput setaf 45)\]"
RESET="\[$(tput sgr0)\]"
#PS1="${CYAN}\A \u ${RESET}$ "


# output figo
#PS1="\[\033[0;37m\]\342\224\214\342\224\200\$([[ \$? != 0 ]] && echo \"[\[\033[0;31m\]\342\234\227\[\033[0;37m\]]\342\224\200\")[$(if [[ ${EUID} == 0 ]]; then echo '\[\033[38;5;196m\]\u'; else echo '\[\033[38;5;117m\]\u\[\033[0;37m\]@\[\033[0;96m\]\h'; fi)\[\033[0;37m\]]\342\224\200[\[\033[38;5;85m\]\w\[\033[0;37m\]]\n\[\033[0;37m\]\342\224\224\342\224\200\342\224\200\342\225\274 \[\033[0m\]"

#PS1="[\$?]-[\t]-[\H]-[\W]-($(git branch 2>/dev/null | grep '^*' | colrm 1 2))\n\[$(tput sgr0)\]"

# output figo 2
#PS1="┌─[\[$(tput sgr0)\]\[\033[38;5;4m\]\t\[$(tput sgr0)\]]─[\[$(tput sgr0)\]\[\033[38;5;220m\]\u\[$(tput sgr0)\]@\[$(tput sgr0)\]\[\033[38;5;202m\]\h\[$(tput sgr0)\]]─\[$(tput sgr0)\]\[[\033[38;5;6m\]\w\[$(tput sgr0)\]\[$(tput sgr0)\]]\n└──╼ "


PS1="┌─\342\224\200\$([[ \$? != 0 ]] && echo \"[\[\033[0;31m\]\342\234\227\[\033[0;37m\]]\342\224\200\")[\[$(tput sgr0)\]\[\033[38;5;4m\]\t\[$(tput sgr0)\]]─[\[$(tput sgr0)\]\[\033[38;5;220m\]\u\[$(tput sgr0)\]@\[$(tput sgr0)\]\[\033[38;5;202m\]\h\[$(tput sgr0)\]]─[\[$(tput sgr0)\]\[\033[38;5;51m\]\w\[$(tput sgr0)\]]\n└──╼ \[$(tput sgr    0)\]\[\033[38;5;40m\]\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')\[$(tput sgr0)\]\[$(tput sgr0)\] "

#######################################
#######################################
#######################################


# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/lorenzo/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/lorenzo/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/lorenzo/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/lorenzo/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<




