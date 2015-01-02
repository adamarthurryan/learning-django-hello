#!/bin/bash



## adapted from http://www.masnun.com/2014/06/27/python-and-django-on-vagrant.html

#
sudo apt-get -y update

# install packages
sudo apt-get -y install python-pip
sudo apt-get -y install python-dev libmysqlclient-dev libpq-dev

# backup .bash_profile
cp /home/vagrant/.bash_profile /home/vagrant/.bash_profile.backup

# configure virtualenvs
#sudo pip install virtualenv
#mkdir ~/.virtualenvs
#sudo pip install virtualenvwrapper
#echo "# Virtual Env" >> /home/vagrant/.bash_profile
#echo "export WORKON_HOME=~/.virtualenvs" >> /home/vagrant/.bash_profile
#echo ". /usr/local/bin/virtualenvwrapper.sh" >> /home/vagrant/.bash_profile
#echo . /home/vagrant/.bash_profile

#instead of worrying about virtualenvs right now, just install django
pip install Django==1.7.1

#configure run django alias
echo "# Aliases" >> /home/vagrant/.bash_profile
echo "alias djrun=\"python manage.py runserver 0.0.0.0:8080\"" >> /home/vagrant/.bash_profile


