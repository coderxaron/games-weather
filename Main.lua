local HttpService = game:GetService("HttpService")
local WEATHER_URL = "https://raw.githubusercontent.com/coderxaron/games-weather/main/weather.json"

local function getWeatherDATA()
	local STATUS_Weather = HttpService:GetAsync(WEATHER_URL)
	local Weather = HttpService:JSONDecode(STATUS_Weather)
	print(Weather)
end

while true do
	getWeatherDATA()
	wait(30)
end
