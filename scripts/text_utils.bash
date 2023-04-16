#! /bin/bash

function normalize() {
    if [[ "${#@}" == "0" ]]
    then 
        echo "please pass in an argument" >&2
        return 1
    fi 
    
    echo "$@" | tr '[:upper:]' '[:lower:]' | sed 's/ /_/g'
}