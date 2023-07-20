#!/bin/bash

ALEX_CONFIG=/srv/Software/config.xml
export ALEX_CONFIG

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"

source $DIR/../venv12/bin/activate
export PYTHONPATH=$DIR/../AlexandriaBase:$DIR/../AlexandriaGui:$DIR/../AlexandriaPlugins:$PYTHONPATH
python3 $DIR/../AlexandriaGui/tkgui/main.py
