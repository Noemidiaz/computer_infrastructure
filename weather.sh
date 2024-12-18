#! /bin/bash

date
echo "Downloading weather data"
wget -O data/weather/ `date +"%Y%m%d_%H%M%S"_athenry.json"`https://prodapi.metweb.ie/observations/athenry/today  
wget -O data/weather/$(date +"%Y%m%d_%H%M%S_athenry.json") https://prodapi.metweb.ie/observations/athenry/today 
echo "weather data download"
date

