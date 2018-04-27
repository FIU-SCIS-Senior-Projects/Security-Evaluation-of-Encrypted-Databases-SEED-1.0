# cryptdb_supp

##### 1. Downloading and installing required software.
* Download and install VirtualBox from https://www.virtualbox.org/wiki/Downloads
* Download a desktop image of Ubuntu14 from http://releases.ubuntu.com/14.04/
* Open VirtualBox and create a new machine
	* Type: Linux
	* Version: Ubuntu
	* Hard disk: Create a virtual hard disk now
	* Allocation of 15GB is recommended

##### 2. Set up the machine using the Ubuntu14 image
* Select the new machine, and click start
* Select the ubuntu image, if not already selected, and click start
* Once the machine boots, follow on-screen instructions to install Ubuntu

##### 3. Updating the software
* On first reboot, the system will prompt you to upgrade to the newer Ubuntu16. Decline
* To update the system, there are two options:
	* I. Launch software updater
	* II. Launch terminal, and use the commands:
		* **sudo apt update**
		* **sudo apt upgrade**
* Restart the machine to complete the updates

##### 4. Downloading and installing required software for CryptDB
* Download the cryptdb_supp folder from the GitHub page
	* **git clone https://github.com/EncryptDB-Research/cryptdb_supp**
* In terminal, navigate to the cryptdb_supp folder
	* **cd cryptdb_supp**
* Run the setup.sh file using the command **sudo ./setup.sh**
	* This will install bison, ruby, apache, php, download CryptDB, and replace the install.rb, and wrapper.lua files
* Navigate back to the CryptDB folder, and run **sudo scripts/install.rb .**
	* Do not omit the dot at the end of the command
	* This will install CryptDB
	* In order for CryptDB to work with its default configurations, MySQL password should be **letmein**
	
#### 5. Using cryptdb
* To run CryptDB, there should be a cdbserver.sh and cdbclient.sh file inside the cryptdb directory
	* Run the server file with **./cdbserver.sh** first, then
	* Run the client file with **./cdbclient.sh** in a seperate window
* To exit from CryptDB, make sure that all clients disconnect before terminating the server
	* To disconnect the client, simply enter **quit**
	* To terminate the server use ctrl-c
* (Prototype) There is a basic webapp that is able to display information about the databases on the CryptDB system
  * Open a browser, and navigate to localhost/webview
  * Enter the required information, and click connect
  * Able to **CREATE** and **DROP** databases and tables
  * Able to view the values of a table

#### 6. (Optional) Inserting the Medical database
* Navigate to cryptdb_supp/data
* Run the insert script with **python insert.py**
  * NOTE: The proxy server should be running, as the script connects to it in order to insert data

#### 7. (Optional) Frequency analysis of a column
* Navigate to cryptdb_supp/data
* Run the stats script with **python stats.py**
  * This is from the attackers view, so everything will be in encrypted form
* Navigate through the databases, tables, and choose a column
  * Frequency analysis is only viable against columns using deterministic encryption, and using non-unique data
