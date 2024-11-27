#!/bin/bash


sudo apt update

sudo apt -y upgrade

echo "System updated ==========================================================="

sudo apt -y install r-base
echo "R installed =============================================================="

wget https://download1.rstudio.org/electron/jammy/amd64/rstudio-2024.09.1-394-amd64.deb

sudo chmod 777 rstudio-2024.09.1-394-amd64.deb
sudo apt install -f ./rstudio-2024.09.1-394-amd64.deb
echo "Download and install RStudio ============================================+"

sudo apt-get install r-cran-shazam

Rscript -e 'install.packages("tigger", repos="https://cloud.r-project.org")'
