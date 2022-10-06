#!/bin/bash

# Download dataset using kaggle API
# https://github.com/Kaggle/kaggle-api
# pip install kaggle
# ~/.kaggle/kaggle.json might be needed


# Dataset will be downloaded in 'input' directory
mkdir input
cd input

# 1. Accepted, rejected dataset
kaggle datasets download wordsforthewise/lending-club
unzip *.zip
mv accepted_2007_to_2018q4.csv/* accepted.csv
mv rejected_2007_to_2018q4.csv/* rejected.csv
rmdir *
rm *.zip *.csv.gz

# 2. Feature description (file exists in input directory)
#wget https://resources.lendingclub.com/LCDataDictionary.xlsx
