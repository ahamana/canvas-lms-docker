#!/bin/sh
set -e

if [ -f ${HOME}/script/canvas_init ]; then
  ${HOME}/script/canvas_init start
fi

exec "$@"
