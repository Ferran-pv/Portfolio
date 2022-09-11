#!/bin/bash

# chmod +u+x 0Create_venv.sh


############ Help
if [ $# -ne 1 ]; then
    echo -e "You must specify: \n 'CreateVenv' if it's the 1rst time, \n 'OpenJlab' if not"
	exit 1
fi


############ Script
if [ $1 == 'CreateVenv' ]; then 
    pip3 install virtualenv
    virtualenv .venv
    . .venv/bin/activate
    source .venv/bin/activate
    pip3 install -r 0requirements.txt
    ipython kernel install --user --name=venv
    jupyter lab
    # If needed: jupyter kernelspec uninstall venv
elif [ $1 == 'OpenJlab' ]; then
    source .venv/bin/activate
    jupyter lab
fi



