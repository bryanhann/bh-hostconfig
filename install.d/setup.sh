#!/usr/bin/env bash

log "++ inner [$0] [$*]"
log "PWD is [$PWD]"
log "tilde is [~]"
log "HOME is [$HOME]"
log "BASE is [$BASE]"
run sudo apt -f install
_install stow
_install mcrypt
_install gh
_install expect
run ./gh.d/gh.login
run gh repo clone bh-bh ${BASE}/bh
run ${BASE}/bh/install
log "begin /home/ubuntu stuff [~]"

[ -f ./.profile ] && log "inner: found ~/.profile"
[ -f ./.bashrc ]  && log "inner: found ~/.bashrc"
cat ./.profile | grep bhx || echo 'set PATH=${PATH}:~/.local/bin' >> ./.profile
cat ./.profile | grep bhx || echo '[ which bhx ] && eval $(bhx --profile)' >> ./.profile
cat ./.bashrc  | grep bhx || echo '[ which bhx ] && eval $(bhx --bashrc) ' >> ./.bashrc
log "-- inner [$0] [$*]"
