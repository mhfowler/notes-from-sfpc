#!/usr/bin/env bash
set -e
PROJECT_PATH=$( cd $(dirname $0) ; pwd -P )
CONFIG_FILE=$PROJECT_PATH/_config.yml
if [ -f $CONFIG_FILE ]; then rm $CONFIG_FILE; fi
cp _localconfig.yml $CONFIG_FILE
hexo server