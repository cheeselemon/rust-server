#!/bin/bash
# requires sudo? yes

# series of commands to wipe rust server. 

# down 
sudo docker compose down

# replace RUST_SERVER_SEED={todays_date} in .env
sed -i "s/RUST_SERVER_SEED=.*/RUST_SERVER_SEED=$(date +%Y%m%d)/" .env

# up
sudo docker compose up -d