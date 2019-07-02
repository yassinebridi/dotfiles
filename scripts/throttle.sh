#!/usr/bin/env bash

if [[ -f /tmp/throttle-check ]]; then
    echo "Currently throttling at $(cat /tmp/throttle-check). (throttle-off to stop)"
else
    echo "Not currently throttling. (throttle-on to start)"
fi
