# Seed Docker Setup

## This README goes through the steps of installing cryptdb user Docker

## How to get started using Docker:

#### 1. Install Docker from https://docs.docker.com/install/

#### 2. Clone down the docker repo https://github.com/FIU-SCIS-Senior-Projects/Security-Evaluation-of-Encrypted-Databases-SEED-1.0.git

    git clone https://github.com/FIU-SCIS-Senior-Projects/Security-Evaluation-of-Encrypted-Databases-SEED-1.0.git
    cd Code

#### 3. Build docker image (Open the Docker Quickstart Terminal if using OS X or Windows)

    sudo docker build -t cryptdb:v1 .
    
    #To build without caching use:
    sudo docker build --no-cache=true -t cryptdb:v1 .

This will create a docker image using ubuntu 14.04 with cryptdb installed inside. Then we can run this image as a virtual machine.

#### 4. Running Docker

Option 1: Autorun
    
    sudo ./run.sh


This runs docker container and then opens the command line inside the vm. If you exit from here the run commands auto stops the vm.

Option 2: Manual Run

    docker run --name cryptdb_v1 --volume $(pwd)/data:/opt/cryptdb/data/ -d -p 3306:3306 -p 3307:3307 -e MYSQL_ROOT_PASSWORD='letmein' cryptdb:1.0

The password must be `letmein`. This will run the docker container but we still have to login into the command line inside the container by doing

    sudo docker exec -it cryptdb_v1 bash

#### 1. Running the server and client

Server

    export EDBDIR=/opt/cryptdb
    export CRYPTDB_PROXY_DEBUG=tru
    export LD_LIBRARY_PATH=$EDBDIR/obj/
    bash proxy.sh

Client

    bash client.sh 

Each of these commands is required to be ran in two separate terminals. If your computer does not have mysql client, then open a second terminal inside docker  running the following command from your regular computer terminal.

    sudo docker exec -it cryptdb_v1 bash

Then run the client command stated earlier. If you are using a regular VM instead of docker then just run the client command in one of the VM's terminals.    

If you would like to run everything in one terminal then do

    bash proxy &
    bash client.sh

Two separate terminals is highly recommended to see cryptdb's server output.

Note: In order for cryptdb to work with its default configurations, MySQL password should be **letmein**

## Inserting data with python  (Optional). The commands below are run inside the docker container terminal

#### 1. Install python dependencies 

    bash ./data/setup.sh

This will install the necessary python dependencies

#### 2. Run the following commands to insert the data

    cd data
    # regular insertion
    python insert.py
    # sensitive insertion
    python insert_sensitive.py


## Running frequency attacks

We created two insertion scripts, one insert data normally and the other one inserts data using cryptdb sensitive annotations. Using pandas data frame the scripts load up ~5k records of names that get inserted to the database. Some other times we also use ~1.9k unique name records records. Before inserting each data item we create a data set of patient records with 4 diseases, cancer, pneumonia, headache and flu, we then add them to the records about to be inserted with a desired distribution for later comparison after the attack. After all the data is inserted we login through mysql and run a couple queries to test that the insertion step worked. Then we run a query to take off the random layer from the illness to leave it at the DET layer. Then we use `stats.py` to run the frequency analysis on this column. 

To run the attack do the following after the data is inserted. Inside mysql client shell run

    use Medical; # or MedicalS which is created by insert_sensitive.py script
    select * from records where illness='cancer';

This will peel off the random layer from the `illness` column and put it at DET. To confirm this, run the below command, it will show the `illness` column at the DET level.

    set @cryptdb='show';

After this, close mysql client and run the `stats.py` file in the data folder. From here on there's a little bit of guessing, since the table and column names are encrypted, but usually we find what the columns after a following these steps. 

While the script is running: 

1. Select database we which to analyse (Most likely `Medical`)
2. Pick the first encrypted table name. 
3. From the list of encrypted columns, pick one that contains `oEQ` in the name (which stands for equality or DET). Then the script will give a count of distinct values in the column, 
4. If the unique count is equal the total count then the layer still at RND, so we try a different column name that contains `oEQ`.  If we ran out of columns with `oEQ` then go back to the table selection and select a different table.
5. We repeat step 4 until we find the column that has only 4 unique values
6. Then the script will prompt to save the frequencies, select yes and check the file to see the frequencies obtained from the column. 

Note: We know beforehand that we only have 4 unique values but in a real attack, the attacker would stop when the unique count is not equal the total count. 
