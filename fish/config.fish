set PATH /opt/vagrant/bin $PATH
set PATH /opt/idea-IC/bin $PATH
set fish_greeting ""
setenv EDITOR vim

function update
    sudo apt-get update
    sudo apt-get upgrade -y
end
