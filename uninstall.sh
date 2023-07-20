#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
SCRIPT_PATH='/usr/local/bin/pscrpt'

if [[ ! -f "$SCRIPT_PATH" ]]; then
	echo "pscript does not seem to be installed"
	exit 1
else
    if ! /usr/bin/sudo /bin/rm $SCRIPT_PATH; then
        echo "Failed to remove existing script"
        exit 1
    fi
    echo "pscrpt uninstalled successfully"
    exit 0
fi