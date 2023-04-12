#!/bin/bash
config_path="./config/docker-compose"
printf "# - AUTOMATICALLY GENERATED BY DEPLOYMNET SCRIPT-\n# - Changes here will be overwritten. - \n" > docker-compose.yml
cat "$config_path/01_network.yml"   >> docker-compose.yml
cat "$config_path/02_orc.yml"       >> docker-compose.yml
cat "$config_path/03_webui.yml"     >> docker-compose.yml
cat "$config_path/05_docs.yml"      >> docker-compose.yml
cat "$config_path/20_bots.yml"      >> docker-compose.yml
docker-compose up --remove-orphans -d