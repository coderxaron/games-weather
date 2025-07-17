So this is small Projekt with that you can host live Events,
that will be on all Roblox Servers.

Pro: Its Completly Free!
works well
easy to Setup

Contra: if you have a bigger game with more active Servers you need
to set the refresh timer higher which would make the events delayed
and Cloudflare has its Limits

How it works:
You host a Repo with the following Files on Cloudflare Pages

weather.json Has the Events stored like Rain: false
and the _headers is for disabling cache and instantly publishing the Changes to Clodflare

Put the Main.Lua in ServerScriptService and Implement your Event logic

and Thats it.

3 Running Roblox Servers ~ 10 sec Refresh
6 Running Servers ~ 30 sec

if you have private servers count these as 1 Server since the script is 
running on the Server only for that Person


