#!/bin/bash

# activate conda env
conda activate cell-kan

# convert notebooks into python scripts
jupyter nbconvert --to script --output-dir=nbconverted/ *.ipynb

# run the scripts
conda run -n cell-kan python nbconverted/0.download-data.py
