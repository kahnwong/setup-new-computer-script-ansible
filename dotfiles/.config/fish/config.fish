################
# FISH
################
# default
set PATH \
    /opt/homebrew/bin \
    ~/.local/bin \
    /usr/local/bin \
    /usr/local/sbin \
    /usr/bin \
    /usr/sbin \
    /bin \
    /sbin

# for making escape key work as meta, need to suppress it
set fish_escape_delay_ms 3000

# suppress fish_greeting message
set -g fish_greeting


################
# PROMPT
################
### STARSHIP
starship init fish | source
# oh-my-posh init fish | source
# oh-my-posh init fish --config $(brew --prefix oh-my-posh)/themes/the-unnamed.omp.json | source

# oh-my-posh init fish --config $(brew --prefix oh-my-posh)/themes/star.omp.json | source
# oh-my-posh init fish --config ~/.config/oh-my-posh/kahnwong.omp.yaml | source


################
# GPG
################
set GPG_TTY tty


################
# golang
################
set GOPATH ~/go
set PATH $PATH:$GOPATH/bin


################
# pyenv
################
set -g PYENV_ROOT $HOME/.pyenv
set PYENV_VERSION 3.10.6
status is-interactive; and pyenv init --path | source
pyenv init - | source
status --is-interactive; and pyenv virtualenv-init - | source


################
# pipenv
################
set pipenv_fish_fancy yes


################
# topydo
################
function t
    topydo $argv
end

function tt
    topydo due:"<=today"
end

function tr
    topydo ls -- -@recurring
end

function tw
    topydo @work
end

function tc
    topydo columns
end


################
# taskwarrior
################
# function t
#     task $argv
# end

# function tt
#     task due:today
# end

# function ta
#     task -recurring
# end


################
# git
################
function gg
    git log --graph --oneline --all
end

function diff
    colordiff $argv
end

function diff-latest
    git diff HEAD~1..HEAD
end

function diff
    difft $argv
end


################
# misc
################
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

function dig
    dog $argv
end

function du
    dust $argv
end

function ps
    procs $argv
end

function vi
    nvim $argv
end


function tere
    set --local result (command tere $argv)
    [ -n "$result" ] && cd -- "$result"
end


################
# terraform
################
function init-terraformer
    terraform state replace-provider -auto-approve registry.terraform.io/-/aws hashicorp/aws && terraform init
end

function tf-cost
    infracost breakdown \
        --format html \
        --out-file infracost-report.html \
        --usage-file /tmp/ignore.yml \
        --sync-usage-file \
        --path .
end


################
# vscode
################
function rcode
    code --folder-uri=vscode-remote://ssh-remote+nuc/root/$argv/
end
