#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
SCRIPT_PATH='/usr/local/bin/pscrpt'

if [[ ! -f "$DIR/pscrpt.py" ]]; then
	echo "pscrpt.py not found in the current directory"
	exit 1
fi

if ! chmod +x "$DIR/pscrpt.py"; then
	echo "Failed to make pscrpt.py executable"
	exit 1
fi

if [[ -f $SCRIPT_PATH ]]; then
	
	if [[ $1 == "-f" ]]; then
		if ! /usr/bin/sudo /bin/rm $SCRIPT_PATH; then
			echo "Failed to remove existing script"
			exit 1
		fi
	else
		echo "pscrpt is already installed"
		echo "If you want to override the installation add -f flag"
		exit 0
	fi
fi

if ! /usr/bin/sudo /bin/cp "$DIR/pscrpt.py" $SCRIPT_PATH; then
    echo "Failed to copy pscrpt.py to $SCRIPT_PATH"
    exit 1
fi

echo "Install complete. You can now run pscrpt."

