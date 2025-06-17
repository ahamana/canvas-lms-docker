#!/bin/sh
set -e

if [ -f ${PWD}/script/canvas_init ]; then
    ${PWD}/script/canvas_init start
fi

exec "$@"
