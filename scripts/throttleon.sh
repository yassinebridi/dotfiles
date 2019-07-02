#!/usr/bin/env bash

if [[ -z "$1" ]]; then
    echo "You must pass a throttle time, 200ms, for example."
else
    sudo tc qdisc add dev lo root netem delay $1 && echo $1 > /tmp/throttle-check
fi
