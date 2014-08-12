#!/bin/bash
BLUEZ_VERSION="5.13"
BLUEZ_URL="https://www.kernel.org/pub/linux/bluetooth/bluez-${BLUEZ_VERSION}.tar.gz"

wget -O /tmp/bluez-${BLUEZ_VERSION}.tar.gz ${BLUEZ_URL}

