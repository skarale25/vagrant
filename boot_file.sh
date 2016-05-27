#!/bin/bash


echo "Provisioning virtual machine.."

apt-get update

echo "Installing ipython and matplotlib.."
apt-get install ipython-notebook python-matplotlib -y

echo "Installing python-numpy.."
apt-get install python-numpy -y

echo "installing cython.."
apt-get install cython -y

echo "installing python-scipy"
apt-get install python-scipy -y

if ![ -L /var/www ]; then
        rm -rf /var/www
        ln -fs /vagrant /var/www
fi
