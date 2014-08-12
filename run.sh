#!/bin/bash
CURRENT=$(pwd)

cd ${CURRENT}/bluepy
sudo python ./sensortag.py
cd ${CURRENT}
