#!/usr/bash
#conda activate BTG_finders
mkdir -p /home/gebt/BTG/Day8_pipelines/

mkdir -p /home/gebt/BTG/Day8_pipelines/dbs/
cd /home/gebt/BTG/Day8_pipelines/dbs/

git clone https://bitbucket.org/genomicepidemiology/plasmidfinder_db.git

cd plasmidfinder_db
PLASMID_DB=$(pwd)
micromamba run -n BTG_resistance python3 INSTALL.py kma_index

micromamba run -n BTG_resistance amrfinder --update
