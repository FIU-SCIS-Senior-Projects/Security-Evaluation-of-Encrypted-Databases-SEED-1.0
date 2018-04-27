# Code base for seed

## This is the code base for SEED. There are two ways of installing/using the software. One way is to use Docker, for this you can use the `docker-setup` folder and follow the instructions in the README. To install it in a regular virtual machine go to the `cryptdb_supp` folder and follow the instructions there. 

## File Structure

### **Dockerfile**

Creates the docker images

### **run.sh**

Runs the docker container then opens a terminal inside the container

### **/docs**

Contains all research documents used in the project. This includes papers from MIT Lincoln Labs.

### **/cryptdb-seed**
Contains the cryptdb system, with the updated code for the implementation. The files and folder below contain the C++ files to build cryptdb. All of these files and folders were imported from the original cryptdb https://github.com/CryptDB/cryptdb so we will not explain them. The most important files worked on are `/mysqlproxy/wrapper.lua` which contains all the insertion modifications, `proxy.sh` starts the proxy, and `client.sh` starats a client that connects to the proxy. The `README.md` file contains instructions on how to run cryptdb once installed and the files modified so far in this Project.
	
	/bins
 	/conf
 	/crypto
	/doc
	/eval
	/logs
	/main
	/mysqlproxy
	/newtesting
	/packages
	/parser
	/scripts
	/test
	/tools
	/traces
	/udf
	/uti
	.gitignore
	client.sh
	GNUmakefile
	LICENSE
	README.md
	mergedep.pl
	proxy.sh

### **/docker-setup**
Contains the `README.md` to use Docker and to use the software inside the docker container. It also contains the instructions to run frequency analysis. The `/data` folder contains all data insertions scripts, and setup files to install the nessesary python dependencies. 

	README.md
	/data

### **/cryptdb_supp** 
Contains the necessary files to install the CryptDB system on a regular virtual machine other than Docker. The folder is composed of `README.md` which has the full instructions to install the system on a regular vm. The `setup.sh` file  which sets up the system with all necessary files and programs. The `/data` folder which holds the insert and frequency analysis python scripts. The `/webview` folder which is a basic web app for the CryptDB system. The `install.rb`  which is a modified version of CryptDB's install.rb file, that does not install bison. The `wrapper.lua`  which is also a modified version of CryptDB's wrapper.lua file, where we implemented our features.

	README.md 
	setup.sh
	/data
	/webview
	install.rb
	wrapper.lua
