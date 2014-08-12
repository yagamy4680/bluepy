#!/bin/bash
CURRENT=$(pwd)

BLUEZ_VERSION="5.13"
BLUEZ_URL="https://www.kernel.org/pub/linux/bluetooth/bluez-${BLUEZ_VERSION}.tar.gz"

[ -f "/tmp/bluez-${BLUEZ_VERSION}.tar.gz" ] || wget -O /tmp/bluez-${BLUEZ_VERSION}.tar.gz ${BLUEZ_URL}

[ -d "${CURRENT}/bluez-${BLUEZ_VERSION}"  ] || tar xvf /tmp/bluez-${BLUEZ_VERSION}.tar.gz -C .

[ -f "${CURRENT}/bluez-${BLUEZ_VERSION}/config.h" ] || cd ${CURRENT}/bluez-${BLUEZ_VERSION} && ./configure --disable-systemd && make && cd ${CURRENT}

BLUEZ_PATH=${CURRENT}/bluez-${BLUEZ_VERSION}  make -C ${CURRENT}/bluepy all
