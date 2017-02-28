set -x PATH ~/.rvm/bin ~/bin $PATH
set -x CLICOLOR_FORCE 1
set -x GOPATH ~
set -x UNITYCLOUDOPS "/opt/unity/unitycloud-ops"
set -x PATH $UNITYCLOUDOPS/bin $PATH

set fish_greeting ""
setenv EDITOR vim

function update
    sudo apt-get update
    sudo apt-get dist-upgrade -y
    sudo apt-get autoremove -y
    sudo apt-get clean
end

function format-json
    python -mjson.tool
end

alias ls=ls++
rvm default
