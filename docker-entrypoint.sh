#!/bin/sh
set -e

readonly CANVAS_INIT_SCRIPT="${HOME}/script/canvas_init"

if [ -f ${CANVAS_INIT_SCRIPT} ]; then
  ${CANVAS_INIT_SCRIPT} start
fi

exec "$@"
