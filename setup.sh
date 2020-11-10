#!/usr/bin/env bash

set -e

CURRENT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )
JSON_FILE="${CURRENT_DIR}/traefik/acme/acme.json"

if [[ -f ${JSON_FILE} ]]
then
  rm ${JSON_FILE}
fi

touch ${JSON_FILE}
chmod 600 ${JSON_FILE}