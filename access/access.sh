#!/bin/bash

for x in $(find ${1}/* -type d); do
    sudo chmod  +x ${x}/*.sh
done
