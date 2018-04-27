# install ruby #
echo "installing ruby"
sudo apt install ruby
echo 'ruby installed'

# download cryptdb #
echo "installing git and cloning cryptdb repository"
cd ~
git clone https://github.com/EncryptDB-Research/cryptdb-seed
echo "cryptdb cloned to home dir"

cd ~/cryptdb-seed/

echo "installing Bison2.7"
apt-get remove bison libbison-dev
cd packages \
&& apt-get -y install m4 \
&& dpkg -i libbison-dev_2.7.1.dfsg-1_amd64.deb \
&& dpkg -i bison_2.7.1.dfsg-1_amd64.deb \
&& cd ..
echo "Bison2.7 installed"

# create cdb scripts #
echo 'creating scripts to run CryptDB server'
echo $'#!/bin/bash\nexport EDBDIR=/home/user/cryptdb/\n./bins/proxy-bin/bin/mysql-proxy --plugins=proxy --event-threads=4 --max-open-files=1024 --proxy-lua-script=$EDBDIR/mysqlproxy/wrapper.lua --proxy-address=127.0.0.1:3307 --proxy-backend-addresses=localhost:3306' > proxy.sh
sudo chmod +x proxy.sh
echo "cdb scripts created"


# install apache and php #
echo "installing apache and php"
sudo apt install apache2
sudo apt install php5
sudo apt install apache2-utils
sudo apt install php5-mysql
echo "installed apache and php"

# Adding the data insertion folder
mkdir ~/cryptdb-seed/data
ln -s ~/cryptdb-attacks/data ~/cryptdb-seed/data

# install python deps to run the insert scripts
apt-get update \
&& apt-get install -y python-pip python-pandas python-numpy \
&& pip install --upgrade pip \
&& pip install -r ~/crytpdb-seed/data/requirements.txt


# installing cryptdb
sudo scripts/install.rb .

touch ~/crytpdb-seed/mysqlproxy/freqs 

