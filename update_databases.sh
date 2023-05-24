#!/usr/bash
#conda activate BTG_finders
mkdir -p /home/student/day8_pipelines/

mkdir -p /home/student/BTG/dbs/
cd /home/student/BTG/dbs/

git clone https://bitbucket.org/genomicepidemiology/virulencefinder_db.git
git clone https://bitbucket.org/genomicepidemiology/plasmidfinder_db.git

cd /home/student/BTG/dbs/virulencefinder_db
VIRULENCE_DB=$(pwd)
python3 INSTALL.py kma_index

cd /home/student/BTG/dbs/plasmidfinder_db
PLASMID_DB=$(pwd)
python3 INSTALL.py kma_index

amrfinder --update
