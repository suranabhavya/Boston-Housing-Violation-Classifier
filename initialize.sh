#!/bin/bash

ENV_NAME="venv"

python3 -m venv $ENV_NAME

source $ENV_NAME/bin/activate

pip install --upgrade pip

pip install -r requirements.txt

pip install ipykernel

python -m ipykernel install --user --name=$ENV_NAME --display-name "Python ($ENV_NAME)"

echo "Virtual environment '$ENV_NAME' is ready and linked to Jupyter as 'Python ($ENV_NAME)'"
