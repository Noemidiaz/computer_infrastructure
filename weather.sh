#! /bin/bash

date
echo "Downloading weather data"
wget -O data/weather/$(date +"%Y%m%d_%H%M%S_athenry.json") https://prodapi.metweb.ie/observations/athenry/today 
echo "weather data download"
date

#Project
# Create a weather_data.txt file
echo "File created" > weather_data.txt

# Add the file to git
git add weather_data.txt