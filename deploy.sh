#!/usr/bin/env bash
PROJECT_PATH=$( cd $(dirname $0) ; pwd -P )
CONFIG_FILE=$PROJECT_PATH/_config.yml
if [ -f $CONFIG_FILE ]; then rm $CONFIG_FILE; fi
cp _prodconfig.yml $CONFIG_FILE
hexo clean
hexo generate
hexo deploy