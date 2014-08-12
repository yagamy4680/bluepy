#!/bin/bash
CURRENT=$(pwd)
rm -rf ${CURRENT}/bluez-${BLUEZ_VERSION}
make -C ${CURRENT}/bluepy clean
