#!/bin/bash

# install Bison2.7 #
echo "installing Bison2.7"
sudo apt remove bison
mkdir /tmp/bison
cd /tmp/bison
apt-get update
apt-get install -y build-essential m4
wget http://ftp.gnu.org/gnu/bison/bison-2.7.tar.gz
tar -xvf bison-2.7.tar.gz
rm bison-2.7.tar.gz
cd bison-2.7
./configure --prefix=/usr/local/bison --with-libiconv-prefix=/usr/local/libiconv/
make
make install
ln -s /usr/local/bison/bin/bison /usr/bin/bison
ln -s /usr/local/bison/bin/yacc /usr/bin/yacc
apt install g++-4.7
echo "Bison2.7 installed"

# install ruby #
echo "installing ruby"
sudo apt install ruby -y
echo 'ruby installed'

# download cryptdb #
echo "installing git and cloning cryptdb repository"
cd ~
git clone -b public git://g.csail.mit.edu/cryptdb
echo "cryptdb cloned to home dir"

# create cdb scripts #
echo 'creating scripts to run CryptDB client and server'
cd ~/cryptdb/
echo $'#!/bin/bash\nmysql -uroot -p -h 127.0.0.1 -P 3307' > cdbclient.sh
echo $'#!/bin/bash\nexport EDBDIR=/home/user/cryptdb\n./bins/proxy-bin/bin/mysql-proxy --plugins=proxy --event-threads=4 --max-open-files=1024 --proxy-lua-script=$EDBDIR/mysqlproxy/wrapper.lua --proxy-address=127.0.0.1:3307 --proxy-backend-addresses=localhost:3306' > cdbserver.sh
sudo chmod +x cdbclient.sh
sudo chmod +x cdbserver.sh
echo "cdb scripts created"


# install apache and php #
echo "installing apache and php"
sudo apt install apache2 -y
sudo apt install php5 -y
sudo apt install apache2-utils -y
sudo apt install php5-mysql -y
echo "installed apache and php"

# install python modules for scripts
sudo apt install python-numpy -y
sudo apt install python-pandas -y
sudo apt install python-pip -y
sudo pip install pymysql
sudo apt install python-mysqldb -y

# replace files with modified versions
sudo rm ~/cryptdb/scripts/install.rb
sudo rm ~/cryptdb/mysqlproxy/wrapper.lua
sudo cp ~/cryptdb_supp/wrapper.lua ~/cryptdb/mysqlproxy/
sudo cp ~/cryptdb_supp/install.rb ~/cryptdb/scripts/
sudo touch ~/cryptdb/mysqlproxy/freqs

# move webview to apache2 root
sudo cp -r ~/cryptdb_supp/webview/ /var/www/html/

# install cryptdb system
cd ~/cryptdb
sudo scripts/install.rb .
