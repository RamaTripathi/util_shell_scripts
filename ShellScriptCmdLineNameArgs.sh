#!/bin/bash
set -x  # Output executed commands
set -e  # Make script fail as soon as one command fails

for ARGUMENT in "$@"
do

    KEY=$(echo $ARGUMENT | cut -f1 -d=)
    VALUE=$(echo $ARGUMENT | cut -f2 -d=)   

    case "$KEY" in
            STEPS)              STEPS=${VALUE} ;;
            REPOSITORY_NAME)    REPOSITORY_NAME=${VALUE} ;;     
            *)   
    esac    


done

echo "STEPS = $STEPS"
echo "REPOSITORY_NAME = $REPOSITORY_NAME"
