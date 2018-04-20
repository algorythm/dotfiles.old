#!/usr/bin/env bash

if [ ! -x "$(command -v gpg)" ]; then
    echo "GPG is not installed on your system. Please install before proceeding."
    exit 1
fi

gpg --list-secret-keys --keyid-format LONG
