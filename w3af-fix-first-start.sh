#!/usr/bin/env bash

if [ -f ~/.w3af/startup.conf ]
then
    if ! grep -i "^accepted-disclaimer = true$" ~/.w3af/startup.conf
    then
        echo "accepted-disclaimer = true" >> ~/.w3af/startup.conf
    fi
else
    if [ ! -d ~/.w3af ]
    then
        mkdir ~/.w3af
    fi
    echo "[STARTUP_CONFIG]" >> ~/.w3af/startup.conf
    echo "auto-update = true" >> ~/.w3af/startup.conf
    echo "frequency = D" >> ~/.w3af/startup.conf
    echo "accepted-disclaimer = true" >> ~/.w3af/startup.conf
fi