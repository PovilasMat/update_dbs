#!/usr/bash

mkdir -p /home/gebt/BTG/Day8_pipelines/

mkdir -p /home/gebt/BTG/Day8_pipelines/dbs/
cd /home/gebt/BTG/Day8_pipelines/dbs/

git clone https://bitbucket.org/genomicepidemiology/resfinder_db.git

cd resfinder_db

micromamba run -n BTG_resistance python3 INSTALL.py kma_index

micromamba run -n BTG_resistance amrfinder --update
