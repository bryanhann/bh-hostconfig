#!/usr/bin/env bash

my.log "++[$0][$*]"

bashrc=/etc/bash.bashrc
magic=magic_23874
bin=$(dirname $(which my.magic))

cat ${bashrc} | grep ${magic} || {
    my.log add [${bin}] to PATH in ${bashrc}
    echo "PATH=\${PATH}:${bin} # ${magic}" >> ${bashrc}
}

my.log "--[$0] [$*]"
