# Snippets

Generate SSH Keypair

`ssh-keygen -t rsa -b 4096 -C "$(openssl rand -hex 12)"`
