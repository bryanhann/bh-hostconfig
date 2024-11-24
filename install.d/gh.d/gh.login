#!/usr/bin/env bash
cd $(dirname $0)
[ -f ./gh.login.token ] || mcrypt -d ./gh.login.token.nc
gh auth status && {
    echo already logged on
    exit
}
./gh.login.expect $(cat ./gh.login.token)
