local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService"):IsStudio

local WEATHER_DATA = "https://raw.githubusercontent.com/coderxaron/games-weather/main/weather.json" --// This URL is only for testing
local WEATHER_URL = "https://yourdomain.pages.dev/weather.json"

if RunService then
	print("[Studio]: Running TestURL")
else
	print("[Game]: Running RealURL")
	WEATHER_DATA = WEATHER_URL
end

local function getWeatherDATA()
	local STATUS_Weather = HttpService:GetAsync(WEATHER_DATA)
	local Weather = HttpService:JSONDecode(STATUS_Weather)
	print(Weather)
    
	if Weather.Rain then
       warn("[Weather]: Rain")
	end
end

while true do
	getWeatherDATA()
	task.wait(30)
end
