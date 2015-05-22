grep -q -F 'deb http://star-www.st-andrews.ac.uk/cran/bin/linux/debian wheezy-cran3/' /etc/apt/sources.list || echo 'deb http://star-www.st-andrews.ac.uk/cran/bin/linux/debian wheezy-cran3/ ' >> /etc/apt/sources.list
apt-key adv --keyserver keys.gnupg.net --recv-key 381BA480
apt-get update
apt-get install -y r-base-core
R --vanilla < /usr/local/src/upgrade.R

