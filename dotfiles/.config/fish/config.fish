#################################
# FISH
#################################
# default
set PATH /Users/$USER/.pyenv/shims ~/.local/bin /usr/local/bin /opt/homebrew/bin ~/.pyenv/versions/cli/bin /bin /sbin /usr/bin /usr/sbin /usr/local/sbin

# for making escape key work as meta, need to suppress it
set fish_escape_delay_ms 3000

# suppress fish_greeting message
set -g fish_greeting


#################################
# THEME
#################################
### STARSHIP
starship init fish | source

#################################
# TOOLS
#################################
######## GPG ########
set GPG_TTY tty

######## pyenv ########
set -g PYENV_ROOT $HOME/.pyenv
set PYENV_VERSION 3.10.3
status is-interactive; and pyenv init --path | source
pyenv init - | source
status --is-interactive; and pyenv virtualenv-init - | source

######## pipenv ########
set pipenv_fish_fancy yes

#################################
# alias
#################################
######## topydo ########
function t
    topydo $argv
end

function tt
    topydo due:"<=today"
end

function tr
    topydo ls -- -@recurring
end

function tc
    topydo columns
end

# ######## taskwarrior ########
# function t
#     task $argv
# end

# function tt
#     task due:today
# end

# function ta
#     task -recurring
# end


######## git ########
function gg
    git log --graph --oneline --all
end

function diff
    colordiff $argv
end

function diff-latest
    git diff HEAD~1..HEAD
end


######## the rest ########
function budget
    fava -p 5004 ~/Cloud/Apps/fava/beans.beancount
end

#function ping
#    gping $argv
#end

function mping
    host $argv | iponmap -c
end

# function cbonsai
#   docker exec -it cbonsai cbonsai -li
# end

function ls
    exa --icons -1 --group-directories-first $argv
end

function cat
    bat $argv
end
