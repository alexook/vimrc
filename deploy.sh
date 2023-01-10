#!/bin/bash

echo "Process ID: $$"
echo "File Name: $0"
echo "First Parameter : $1"
echo "Second Parameter : $2"
echo "All parameters 1: $@"
echo "All parameters 2: $*"
echo "Total: $#"

USER_NAME=$(getent passwd `who` | head -n 1 | cut -d : -f 1)


echo "${USER_NAME}"

function ensure_no_cli_args() {
    if [ $# -ne 0 ]
    then
        echo "No command line arguments accepted!" >&2
        exit 1
    fi
}

function ensure_root_permissions() {
    if ! sudo -v
    then
        echo "Root permissions required to deploy the driver!" >&2
        exit 1
    fi
}

function deploy_config() {

    for action in add build install
    do
		echo "${action} "
    done
 
	cp ./vimconfig.txt ${HOME}/.vimrc
}


ensure_no_cli_args
#ensure_root_permissions
deploy_config

echo "Successfully"
