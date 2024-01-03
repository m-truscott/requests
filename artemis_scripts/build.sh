#!/bin/bash     

# Import variables
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
source "$DIR/variables.sh"

# Populate BUILD with the build command
BUILD="pip install -r requirements-dev.txt && pip install werkzeug==2.3.8 && pip install pytest-mock"
echo "Running build command: $BUILD"
eval $BUILD
