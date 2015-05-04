git config --global user.name "amatsukan"
git config --global user.email "luiz.cfj@hotmail.com"
ls -al ~/.ssh
ssh-keygen -t rsa -C "luiz.cfj@apilab.ufsc.br"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
sudo apt-get install xclip
xclip -sel clip < ~/.ssh/id_rsa.pub


