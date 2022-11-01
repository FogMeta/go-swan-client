#!/bin/bash

URL_PREFIX=https://github.com/filswan/go-swan-client/releases/download
BINARY_NAME=swan-client-2.0.0-linux-amd64
TAG_NAME=v2.0.0

wget --no-check-certificate ${URL_PREFIX}/${TAG_NAME}/${BINARY_NAME}
wget --no-check-certificate ${URL_PREFIX}/${TAG_NAME}/config.toml.example

CONF_FILE_DIR=${HOME}/.swan/client
mkdir -p ${CONF_FILE_DIR}

CONF_FILE_PATH=${CONF_FILE_DIR}/config.toml
echo $CONF_FILE_PATH

if [ -f "${CONF_FILE_PATH}" ]; then
    echo "${CONF_FILE_PATH} exists"
else
    cp ./config.toml.example $CONF_FILE_PATH
    echo "${CONF_FILE_PATH} created"
fi

chmod +x ./${BINARY_NAME}
