
#!/bin/bash

# API URL to fetch weather data (replace with an actual weather API endpoint)
API_URL="https://prodapi.metweb.ie/observations/athenry/today"

# Fetch the weather data and save it to weather_data.txt
curl -s $API_URL > weather_data.txt

# Optional: Print out a message to confirm the script ran successfully
echo "Weather data saved to weather_data.txt"
