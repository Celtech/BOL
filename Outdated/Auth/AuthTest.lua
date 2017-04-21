function OnLoad()
    HiImAuthenticated("localhost", "/AuthTest/CheckAuth.php")
end

function OnTick()
	if AUTH == true then

	end
end

class "HiImAuthenticated"
function HiImAuthenticated:__init(Host, Path)
	print("<b><font color=\"#3399FF\">Hi I'm Authenticating:</font></b> <font color=\"#FFFFFF\"> Checking Authentication Status</font>")
	self.startTime = os.clock()
	self:Auth(Host, Path)
	self.AUTHED = false
	AddUnloadCallback(function() self:Report(self.startTime, Host, Path) end)
end
function HiImAuthenticated:Auth(Host,Path)
	local socket = require("socket")
	print(Host .. Path)
	local client = socket.connect(Host, 80)
	client:send("GET " .. Path .. "?user=" .. Base64Encode(GetUser()) .. "&state=0&time=0 HTTP/1.0\r\n\r\n")
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
function HiImAuthenticated:Report(startTime, Host, Path)
	local socket = require("socket")
	client = socket.connect(Host, 80)
	client:send("GET " .. Path .. "?time=" .. math.ceil((os.clock() - startTime) / 60) .. "&user=" .. Base64Encode(GetUser()) .. "&state=1 HTTP/1.0\r\n\r\n")
	client:close()
end
