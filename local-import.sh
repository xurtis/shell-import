#!/bin/sh
set -e

import_script=$(mktemp)
curl -Ls -o "${import_script}" https://import.xurt.is/import.sh
_="${import_script}"
. "${import_script}"
rm "${import_script}"

run import-install
