#!/bin/bash
sudo apt-get install python3.8-full
sudo apt-get install python3.8-dev
sudo apt-get install python3.8-distutils
sudo apt-get install python3.8-venv

sudo apt-get install pkg-config
sudo apt-get install libcairo2

python3.8 -m venv venv
source venv/bin/activate 
python -m pip install requirements.txt
python -m ipykernel install --name python3.8
cd vgtk
python setup.py build_ext --inplace
