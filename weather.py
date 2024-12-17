#!/usr/bin/env python

# Financial data
import yfinance as yf
# Dates and times
import datetime as dt


# URL for fetching weather data (Open-Meteo API example)
WEATHER_API_URL = "https://prodapi.metweb.ie/observations/athenry/today"

# Parameters for the API request
PARAMS = {
    "current_weather": True # Get current weather data
}

def fetch_weather():
    try:
        # Make the API request
        response = requests.get(WEATHER_API_URL, params=PARAMS)
        response.raise_for_status()  # Raise an error for HTTP issues
        data = response.json()

        # Extract relevant weather data
        weather = data["current_weather"]
        temperature = weather["temperature"]
        windspeed = weather["windspeed"]
        time = weather["time"]

        # Create a formatted string with the weather data
        weather_info = (
            f"Weather Data ({datetime.datetime.now()}):\n"
            