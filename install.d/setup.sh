#!/usr/bin/env bash

log "++ inner [$0] [$*]"
log "tilde is [~]"
log "HOME is [$HOME]"
run sudo apt -f install
#sudo apt dist-upgrade -y
_install stow
_install mcrypt
_install gh

log "begin /home/ubuntu stuff [~]"
[ -d /home/ubuntu ] && log "inner: found /home/ubuntu"
[ -d /home/ubuntu ] || run mkdir /home/ubuntu
run cd /home/ubuntu
[ -f ./.profile ] && log "inner: found ~/.profile"
[ -f ./.bashrc ]  && log "inner: found ~/.bashrc"
cat ./.profile | grep bhx || echo 'set PATH=${PATH}:~/.local/bin' >> ./.profile
cat ./.profile | grep bhx || echo '[ which bhx ] && eval $(bhx --profile)' >> ./.profile
cat ./.bashrc  | grep bhx || echo '[ which bhx ] && eval $(bhx --bashrc) ' >> ./.bashrc
log "-- inner [$0] [$*]"
