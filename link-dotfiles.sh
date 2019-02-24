#!/usr/bin/env bash

set -euo pipefail

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Stowing dotfiles under $DIR..."

for file in $DIR/*; do
	if [ -d ${file} ]; then
		echo "  stowing $(basename $file)";
		stow $(basename $file);
	fi
done

echo "Done"
