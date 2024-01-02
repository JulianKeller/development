# basic bash script template
# TODO this is untested and written by GPT-4

#!/bin/bash

# A template for a general-purpose Bash script with command-line argument parsing

# Function to show usage and help
show_help() {
    echo "Usage: ${0##*/} [-h] [-a <argument>]"
    echo "Options:"
    echo "    -h         display this help and exit"
    echo "    -a <arg>   description of the argument"
}

# Initialize our own variables
argument=""

# Parse command line arguments
while getopts "ha:" opt; do
    case "$opt" in
    h)  show_help
        exit 0
        ;;
    a)  argument=$OPTARG
        ;;
    '?')
        show_help >&2
        exit 1
        ;;
    esac
done

# Main function
main() {
    echo "Starting script..."

    # Example use of the provided argument
    if [ -n "$argument" ]; then
        echo "Argument provided: $argument"
    else
        echo "No argument provided."
    fi

    # Your script's logic goes here
    echo "Script processing..."

    # Successfully exit script
    echo "Script finished."
}

# Ensure the script is not being sourced and is being executed
if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    main "$@"
fi

