#!/bin/bash

sudo touch /etc/dpkg/dpkg.cfg.d/01_nodoc
sudo bash -c "echo 'path-exclude /usr/share/doc/*' >> /etc/dpkg/dpkg.cfg.d/01_nodoc"
sudo bash -c "echo 'path-exclude /usr/share/man/*' >> /etc/dpkg/dpkg.cfg.d/01_nodoc"
sudo bash -c "echo 'path-exclude /usr/share/groff/*' >> /etc/dpkg/dpkg.cfg.d/01_nodoc"
sudo bash -c "echo 'path-exclude /usr/share/info/*' >> /etc/dpkg/dpkg.cfg.d/01_nodoc"
sudo bash -c "echo 'path-exclude /usr/share/lintian/*' >> /etc/dpkg/dpkg.cfg.d/01_nodoc"

sudo rm -rf /usr/share/doc /usr/share/man /usr/share/groff /usr/share/info /usr/share/lintian
