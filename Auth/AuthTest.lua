function OnLoad()
    HiImAuthenticated()
end

function OnTick()
	if AUTH == true then
		print("You Are Authed")
	end
end

class "HiImAuthenticated"
function HiImAuthenticated:__init()
	print("<b><font color=\"#3399FF\">Hi I'm Authenticating:</font></b> <font color=\"#FFFFFF\"> Checking Authentication Status</font>")
	startTime = os.clock()
	AddUnloadCallback(function() self:Report() end)
	self.Auth()
end
function HiImAuthenticated:Auth()
	local socket = require("socket")
	client = socket.connect("localhost", 80)
	client:send("GET /AuthTest/CheckAuth.php?user=" .. Base64Encode(GetUser()) .. "&state=0&time=0 HTTP/1.0\r\n\r\n")
		while true do
		s, status, partial = client:receive(1024)
		
		local authstring = string.split(s or partial, "\n")
		if tonumber(authstring[#authstring]) == 999999 then
			print("Authed")
			AUTH = true
		elseif tonumber(authstring[#authstring]) > 0 then
			print("You Have " .. math.ceil(tonumber(authstring[#authstring]) / 60) .. " hours of trial time remaining!")
			AUTH = true
		elseif tonumber(authstring[#authstring]) == 0 then
			print("You seem to be out of trial time! Please buy the script to continue using it!")
			AUTH = false
		else
			print("Error communicating with the server!")
			AUTH = false
		end
		
		if status == "closed" then 
			break 
		end
	end
	client:close()
end
function HiImAuthenticated:Report()
	local socket = require("socket")
	client = socket.connect("localhost", 80)
	client:send("GET /AuthTest/CheckAuth.php?time=" .. math.ceil((os.clock() - startTime) / 60) .. "&user=" .. Base64Encode(GetUser()) .. "&state=1 HTTP/1.0\r\n\r\n")
	client:close()
end
