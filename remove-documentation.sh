#!/bin/bash

sudo bash -c 'cat >~/etc/dpkg/dpkg.cfg.d/01_nodoc <<EOL
path-exclude /usr/share/doc/*
path-exclude /usr/share/man/*
path-exclude /usr/share/groff/*
path-exclude /usr/share/info/*
path-exclude /usr/share/lintian/*
path-exclude /usr/share/linda/*
EOL'

sudo rm -rf /usr/share/doc /usr/share/man /usr/share/groff /usr/share/info /usr/share/lintian
