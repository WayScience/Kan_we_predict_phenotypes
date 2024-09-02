#!/bin/bash

# activate conda env
conda activate kan

# convert notebooks into python scripts
jupyter nbconvert --to script --output-dir=nbconverted/ *.ipynb

# run the scripts
conda run -n kan python nbconverted/0.download-data.py
