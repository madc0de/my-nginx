#!/bin/bash
apt-get update -y; apt-get upgrade -y; apt-get dist-upgrade -y
apt-get clean
apt-get install -y build-essential zlib1g-dev elfutils libdw-dev gettext 
