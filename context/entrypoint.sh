#!/bin/bash -e

cd /home/bob
export HOME=/home/bob

if [ ! -z "$RUN_UID" ]; then
    usermod -o -u $RUN_UID bob
fi

exec gosu bob "${@}"
