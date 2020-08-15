# Snippets

Generate SSH Keypair

`ssh-keygen -t rsa -b 4096 -C "$(openssl rand -hex 12)"`

Renew Using Certbot

`15 3 * * * /usr/bin/certbot renew --quiet`

Setup SublimeText Open from CLI

`ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl`

Enable docker-machine and Start docker

`eval $(docker-machine env default)`
