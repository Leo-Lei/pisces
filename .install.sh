#! /usr/bin/bash

wget https://codeload.github.com/Leo-Lei/Pisces/zip/master -O /opt/pisces.zip
yum install -y unzip
unzip /opt/pisces.zip -d /opt
rm -rf /opt/pisces.zip

chmod 744 /opt/Pisces-master/install_python_lib.py
chmod 744 /opt/Pisces-master/install_docker.py

# install python modules to {python}/site-packages
/opt/Pisces-master/install_python_lib.py
# install docker engine
/opt/Pisces-master/install_docker.py

chmod 744 /opt/Pisces-master/run_zookeeper.py