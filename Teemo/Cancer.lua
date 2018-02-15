if myHero.charName ~= "Teemo" then return end

function OnLoad()
    local version = 0.02
    CheckUpdatesLib()
    CheckUpdates(version)

    if _G.Lulzlib then
        _G.Lulzlib:CreateBaseMenu()
        SetSkin(myHero, LulzMenu.Skins - 1)
        Orbwalker()
        Prediction(LulzMenu.General)
        CTargetSelector()
        ItemsAndSummoners()
        AntiBaseUlt()
        Humanizer()
        ThreshLantern()
	recallTracker()
        _G[myHero.charName]()
    end
end
function OnUnload()
    SetSkin(myHero, -1)
end

class "Teemo"
function Teemo:__init()
	self.basePos = {[100] = Vector(2088, 0, 2222), [200] = Vector(12759, 0, 12861)}
	self.nextUltCast = 0
	self.lastCommand = 0
	self.stealthTime = 0
	self.stealthing = false
    Teemo.SpellTable = {
        Q = {range = 675, speed = 2200, delay = 0.625, width = 70, collision = false},
		R = {range = {400,650,900}, speed = 2200, delay = 0.625, radius = 60, collision = false},
    }
	
	self:AddToMenu()
    self.enemyHeros = GetEnemyHeroes()
    self.enemyMinions = minionManager(MINION_ENEMY, self.SpellTable.Q.range - 400, myHero, MINION_SORT_HEALTH_ASC)
    self.jungleMinions = minionManager(MINION_JUNGLE, 625, myHero, MINION_SORT_MAXHEALTH_ASC)

    AddDrawCallback(function() self:OnDraw() end)
    AddTickCallback(function() self:OnTick() end)
	AddNewPathCallback(function(unit, startPos, endPos, isDash, dashSpeed, dashGravity, dashDistance) self:OnNewPath(unit, startPos, endPos, isDash, dashSpeed, dashGravity, dashDistance) end)
	AddIssueOrderCallback(function(source, order, position, target) self:OnIssueOrder(source, order, position, target) end)
end
function Teemo:AddToMenu()
	LulzMenu.Draw.E:removeParam("Enabled")
	LulzMenu.Draw.E:removeParam("Hide")
	LulzMenu.Draw.W:removeParam("Enabled")
	LulzMenu.Draw.W:removeParam("Hide")
	LulzMenu.Draw.W:removeParam("CircleColor")
	LulzMenu.Draw:addParam("StealthTracker", "Draw stealth tracker", 1, true)
    LulzMenu.Spell.QMenu:addParam("EnableCombo", "Use in combo", 1, true)
    LulzMenu.Spell.QMenu:addParam("EnableHarass", "Use in harass", 1, true)
    LulzMenu.Spell.QMenu:addParam("EnableClear", "Use in clear", SCRIPT_PARAM_LIST, 2,{"Off","Last Hit","Clear"})
    LulzMenu.Spell.QMenu:addParam("EnableJungle", "Use in jungle", 1, true)
    LulzMenu.Spell.QMenu:addParam("EnableKillSteal", "Use in kill steal", 1, true)
    LulzMenu.Spell.QMenu:addParam("PlaceHolder", "", SCRIPT_PARAM_INFO, "")
    LulzMenu.Spell.QMenu:addParam("HarassMana", "Harass mana managment % >", SCRIPT_PARAM_SLICE, 30, 0, 100, 0)
    LulzMenu.Spell.QMenu:addParam("ClearMana", "Lane clear mana managment % >", SCRIPT_PARAM_SLICE, 60, 0, 100, 0)
    LulzMenu.Spell.QMenu:addParam("jungleMana", "Jungle clear mana managment % >", SCRIPT_PARAM_SLICE, 60, 0, 100, 0)

    LulzMenu.Spell.WMenu:addParam("EnableCombo", "Use in combo", 1, true)
	LulzMenu.Spell.WMenu:addParam("ComboMana", "Combo mana managment % >", SCRIPT_PARAM_SLICE, 30, 0, 100, 0)
	
    LulzMenu.Spell.RMenu:addParam("EnableCombo", "Use in combo", 1, true)
    LulzMenu.Spell.RMenu:addParam("EnableHarass", "Use in harass", 1, false)
    LulzMenu.Spell.RMenu:addParam("EnableClear", "Use in lane clear", 1, false)
    LulzMenu.Spell.RMenu:addParam("EnableJungle", "Use in jungle", 1, false)
    LulzMenu.Spell.RMenu:addParam("EnableKillSteal", "Use in kill steal", 1, true)
    LulzMenu.Spell.RMenu:addParam("PlaceHolder", "", SCRIPT_PARAM_INFO, "")
    LulzMenu.Spell.RMenu:addParam("HarassMana", "Harass mana managment % >", SCRIPT_PARAM_SLICE, 30, 0, 100, 0)
    LulzMenu.Spell.RMenu:addParam("ClearMana", "Lane clear mana managment % >", SCRIPT_PARAM_SLICE, 60, 0, 100, 0)
	LulzMenu.Spell.RMenu:addParam("jungleMana", "Jungle clear mana managment % >", SCRIPT_PARAM_SLICE, 60, 0, 100, 0)
    LulzMenu.Spell.RMenu:addParam("PlaceHolder2", "", SCRIPT_PARAM_INFO, "")
    Prediction:AddToMenu(LulzMenu.Spell.RMenu)
end
function Teemo:OnDraw()
    local function ReturnColor(color) return ARGB(color[1],color[2],color[3],color[4]) end
    if not myHero.dead then
        if LulzMenu.Draw.Q.Enabled and (_G.Lulzlib:IsQReady() or not LulzMenu.Draw.Q.Hide) then
            _G.Lulzlib:RenderCircle("Q")
        end
        if LulzMenu.Draw.R.Enabled and (_G.Lulzlib:IsRReady() or not LulzMenu.Draw.R.Hide) then
            _G.Lulzlib:RenderCircle("R")
        end
		
		if LulzMenu.Draw.StealthTracker then
			if GetDistance(myHero.endPath) == 0 or IsWallOfGrass(myHero.pos) then
				if self.stealthTime > Lulzlib.clock() then
					Lulzlib:ShadowText(tostring(self.stealthTime - Lulzlib.clock()):sub(0,4), myHero)
					self.stealthing = true
				else
					if not self.stealthing then
						self.stealthTime = Lulzlib.clock() + 1.6
					end
				end
			end
		end
		
        if LulzMenu.Draw.DrawTarget then
            if Target ~= nil then
                DrawCircle3D(Target.x, Target.y, Target.z, 100, 1, ARGB(255,255,0,0), 100)
            end
        end
    end
end
function Teemo:OnIssueOrder(source, order, position, target)
	if not LulzMenu.Draw.StealthTracker then return end
	if source == myHero then
		self.lastCommand = _G.Lulzlib.clock()
		
		if not IsWallOfGrass(myHero.pos) then
			self.stealthing = false
			self.stealthTime = 0
		end
	end
end
function Teemo:OnTick()
    _G.Target = CTargetSelector:GetTarget()

    self:Combo()
    self:Harass()
    self:LaneClear()
    self:KillSteal()
    self:FleeMode()
end
function Teemo:Combo()
    if Orbwalker:IsFighting() then
        if ValidTarget(Target) then
            if LulzMenu.Spell.QMenu.EnableCombo then self:CastQ(Target) end
			if LulzMenu.Spell.WMenu.EnableCombo then self:CastW(Target) end
			if LulzMenu.Spell.RMenu.EnableCombo then self:CastR(Target) end
        end
    end
end
function Teemo:Harass()
    if Orbwalker:IsHarassing() then
        if ValidTarget(Target) and LulzMenu.Spell.QMenu.HarassMana < Lulzlib:ManaPercent() then
            if LulzMenu.Spell.QMenu.EnableHarass then self:CastQ(Target) end
        end
    end
end
function Teemo:LaneClear()
    if Orbwalker:IsLaneClearing() then
        if LulzMenu.Spell.QMenu.EnableJungle then
            self.jungleMinions:update()

            if Lulzlib:IsQReady() then
                for i, jungle in pairs(self.jungleMinions.objects) do
                    if jungle ~= nil and ValidTarget(jungle) and GetDistance(jungle) < self.SpellTable.Q.range and string.split(jungle.charName,'_')[2] ~= "Plant" then
                        self:CastQ(jungle)
                    end
                end
            end
        end
		
		if LulzMenu.Spell.RMenu.EnableJungle then
            self.jungleMinions:update()

            if Lulzlib:IsRReady() then
                for i, jungle in pairs(self.jungleMinions.objects) do
                    if jungle ~= nil and ValidTarget(jungle) and GetDistance(jungle) < self.SpellTable.R.range[myHero:GetSpellData(3).level] and string.split(jungle.charName,'_')[2] ~= "Plant" then
						if Lulzlib:ManaPercent() > LulzMenu.Spell.RMenu.jungleMana then
							if Lulzlib.clock() > self.nextUltCast then
								CastSpell(_R, jungle.x, jungle.z)
								self.nextUltCast = Lulzlib.clock() + 5
							end
						end
                    end
                end
            end
        end

        if LulzMenu.Spell.QMenu.EnableClear > 1 then
            self.enemyMinions:update()
            if Lulzlib:IsQReady() then
                for i, minion in pairs(self.enemyMinions.objects) do
                    if minion ~= nil and ValidTarget(minion) and GetDistance(minion) < self.SpellTable.Q.range then
                        if LulzMenu.Spell.QMenu.EnableClear == 3 then
                            if CountMinionsHit(minion) > 2 then
                                self:CastQ(minion)
                            end
                        else
                            if getDmg("Q", minion, myHero) > minion.health then
                                self:CastQ(minion)
                            end
                        end
                    end
                end
            end
        end
    end
end
function Teemo:CastQ(enemy)
    if Lulzlib:IsQReady() then
        if GetDistance(enemy) < self.SpellTable.Q.range then
            CastSpell(_Q, enemy)
        end
    end
end
function Teemo:CastW(enemy)
    if Lulzlib:IsWReady() and Lulzlib:ManaPercent() > LulzMenu.Spell.WMenu.ComboMana then
        if GetDistance(enemy) > self.SpellTable.Q.range and GetDistance(enemy) < self.SpellTable.Q.range + 100 then
            CastSpell(_W)
		elseif GetDistance(enemy) < 500 then
			CastSpell(_W)
        end
    end
end
function Teemo:CastR(enemy)
    if Lulzlib:IsRReady() then
		if Lulzlib.clock() > self.nextUltCast then
			local castSpot = enemy + (Vector(enemy.endPath) - enemy):normalized() * 550
			if GetDistance(castSpot) < self.SpellTable.R.range[myHero:GetSpellData(3).level] then
				CastSpell(_R, castSpot.x, castSpot.z)
				self.nextUltCast = Lulzlib.clock() + 5
			end
		end
    end
end
function Teemo:OnNewPath(unit, startPos, endPos, isDash, dashSpeed, dashGravity, dashDistance)
	if unit.isMe and LulzMenu.General.Lane then
		DelayAction(function()
			if Lulzlib:IsWReady() and GetInGameTimer() < 1400 then
				if InFountain() and GetDistance(myHero.endPath) > 2000 then
					CastSpell(1)
				elseif GetGame().map.shortName == "summonerRift" and GetDistance(self.basePos[myHero.team]) < 2000 and GetDistance(myHero.endPath) > 4000 then
					CastSpell(1)
				end
			end
		end, 1)
	end
end
function Teemo:KillSteal()
    for i, enemy in _G.Lulzlib.pairs(self.enemyHeros) do
        if enemy and ValidTarget(enemy) then
            if LulzMenu.Spell.QMenu.EnableKs then
                if getDmg("Q", enemy, myHero) > enemy.health then
                    self:CastQ(enemy)
                end
			end
        end
    end
end
function Teemo:FleeMode()
    if LulzMenu.Hotkeys.FleeKey then
        myHero:MoveTo(mousePos.x, mousePos.z)
    end
end

class "SxScriptUpdate"
function CheckUpdatesLib()
    local ToUpdate = {}
    ToUpdate.UseHttps = true
    ToUpdate.Host = "raw.githubusercontent.com"
    ToUpdate.VersionPath = "/Celtech/BOL/master/Lulzlub/version"
    ToUpdate.ScriptPath =  "/Celtech/BOL/master/Lulzlub/Lulzlib.lua"
    ToUpdate.SavePath = LIB_PATH.."Lulzlib.lua"
    ToUpdate.Version = nil
    ToUpdate.CallbackUpdate = function(NewVersion,OldVersion) print("<font color='#55AAAA'>[Lulzlib]</font> <font color='#FFFFFF'>".."Updated to v"..NewVersion.."</font>") end
    ToUpdate.CallbackNoUpdate = function(OldVersion) print("<font color='#55AAAA'>[Lulzlib]</font> <font color='#FFFFFF'>".."No Updates Found, loading version " .. OldVersion .. "</font>") LIBUPDATED = true  end
    ToUpdate.CallbackNewVersion = function(NewVersion) print("<font color='#55AAAA'>[Lulzlib]</font> <font color='#FFFFFF'>".."New Version found ("..NewVersion.."). Please wait until its downloaded then F9x2".."</font>") end
    ToUpdate.CallbackError = function(NewVersion) print("<font color='#55AAAA'>[Lulzlib]</font> <font color='#FFFFFF'>".."Error while Downloading. Please try again.".."</font>") end

    if FileExist(LIB_PATH.."Lulzlib.lua") then
        require "Lulzlib"
		_G.Lulzlib = Lulzlib()
        ToUpdate.Version = Lulzlib.version
    else
        ToUpdate.Version = .00
    end


    SxScriptUpdate(ToUpdate.Version,ToUpdate.UseHttps, ToUpdate.Host, ToUpdate.VersionPath, ToUpdate.ScriptPath, ToUpdate.SavePath, ToUpdate.CallbackUpdate,ToUpdate.CallbackNoUpdate, ToUpdate.CallbackNewVersion,ToUpdate.CallbackError)
end
function CheckUpdates(Version)
	local ToUpdate = {}
    ToUpdate.UseHttps = true
    ToUpdate.Host = "raw.githubusercontent.com"
    ToUpdate.VersionPath = "/Celtech/BOL/master/Teemo/Cancer.version"
    ToUpdate.ScriptPath =  "/Celtech/BOL/master/Teemo/Cancer.lua"
    ToUpdate.SavePath = SCRIPT_PATH.._ENV.FILE_NAME
    ToUpdate.CallbackUpdate = function(NewVersion,OldVersion) print("<font color='#FF0000'>["..myHero.charName.."]</font> <font color='#FFFFFF'>".."Updated to v"..NewVersion.."</font>") end
    ToUpdate.CallbackNoUpdate = function(OldVersion) print("<font color='#FF0000'>["..myHero.charName.."]</font> <font color='#FFFFFF'>".."No Updates Found, loading version ".. OldVersion .."</font>") SCRIPTUPDATED = true  end
    ToUpdate.CallbackNewVersion = function(NewVersion) print("<font color='#FF0000'>["..myHero.charName.."]</font> <font color='#FFFFFF'>".."New Version found ("..NewVersion.."). Please wait until its downloaded then F9x2".."</font>") end
    ToUpdate.CallbackError = function(NewVersion) print("<font color='#FF0000'>["..myHero.charName.."]</font> <font color='#FFFFFF'>".."Error while Downloading. Please try again.".."</font>") end

    SxScriptUpdate(Version,ToUpdate.UseHttps, ToUpdate.Host, ToUpdate.VersionPath, ToUpdate.ScriptPath, ToUpdate.SavePath, ToUpdate.CallbackUpdate,ToUpdate.CallbackNoUpdate, ToUpdate.CallbackNewVersion,ToUpdate.CallbackError)
end
function DownloadSXOrb()
    local ToUpdate = {}
    ToUpdate.UseHttps = true
    ToUpdate.Host = "raw.githubusercontent.com"
    ToUpdate.VersionPath = "/Superx321/BoL/master/common/SxOrbWalk.Version"
    ToUpdate.ScriptPath =  "/Superx321/BoL/master/common/SxOrbWalk.lua"
    ToUpdate.SavePath = LIB_PATH.."SxOrbWalk.lua"
    ToUpdate.Version = nil
    ToUpdate.CallbackUpdate = function(NewVersion,OldVersion) require "SxOrbWalk" SxOrb:LoadToMenu() end
    ToUpdate.CallbackNoUpdate = function(OldVersion)  require "SxOrbWalk" SxOrb:LoadToMenu()  end
    ToUpdate.CallbackNewVersion = function(NewVersion) print("<font color='#ff8300'>[SxOrbWalker]</font> <font color='#FFFFFF'>".."Downloading SxOrbWalker v"..NewVersion..". No need to reload!".."</font>") end
    ToUpdate.CallbackError = function(NewVersion) print("<font color='#ff8300'>[SxOrbWalker]</font> <font color='#FFFFFF'>".."Error while Downloading. Please try again.".."</font>") end

    SxScriptUpdate(0.00,ToUpdate.UseHttps, ToUpdate.Host, ToUpdate.VersionPath, ToUpdate.ScriptPath, ToUpdate.SavePath, ToUpdate.CallbackUpdate,ToUpdate.CallbackNoUpdate, ToUpdate.CallbackNewVersion,ToUpdate.CallbackError, true)
end
function SxScriptUpdate:__init(LocalVersion,UseHttps, Host, VersionPath, ScriptPath, SavePath, CallbackUpdate, CallbackNoUpdate, CallbackNewVersion,CallbackError, IsLib)
    self.LocalVersion = LocalVersion
    self.Host = Host
    self.VersionPath = '/BoL/TCPUpdater/GetScript'..(UseHttps and '5' or '6')..'.php?script='..self:Base64Encode(self.Host..VersionPath)..'&rand='..math.random(99999999)
    self.ScriptPath = '/BoL/TCPUpdater/GetScript'..(UseHttps and '5' or '6')..'.php?script='..self:Base64Encode(self.Host..ScriptPath)..'&rand='..math.random(99999999)
    self.SavePath = SavePath
    self.CallbackUpdate = CallbackUpdate
    self.CallbackNoUpdate = CallbackNoUpdate
    self.CallbackNewVersion = CallbackNewVersion
    self.CallbackError = CallbackError
    self.Updated = false
    self.isLib = IsLib or false
    AddDrawCallback(function() self:OnDraw() end)
    self:CreateSocket(self.VersionPath)
    self.DownloadStatus = 'Connect to Server for VersionInfo'
    AddTickCallback(function() self:GetOnlineVersion() end)
end
function SxScriptUpdate:OnDraw()
    if self.DownloadStatus ~= 'Downloading Script (100%)' and self.DownloadStatus ~= 'Downloading VersionInfo (100%)'then
        DrawText('Download Status: '..(self.DownloadStatus or 'Unknown'),50,10,50,ARGB(0xFF,0xFF,0xFF,0xFF))
    end

    if self.Updated and not self.isLib then
        DrawTextA('Update Downloaded, Reload the script!',50,WINDOW_W / 2,WINDOW_H / 2,ARGB(0xFF,0xFF,0x00,0x00), "center", "center")
    end
end
function SxScriptUpdate:CreateSocket(url)
    if not self.LuaSocket then
        self.LuaSocket = require("socket")
    else
        self.Socket:close()
        self.Socket = nil
        self.Size = nil
        self.RecvStarted = false
    end
    self.LuaSocket = require("socket")
    self.Socket = self.LuaSocket.tcp()
    self.Socket:settimeout(0, 'b')
    self.Socket:settimeout(99999999, 't')
    self.Socket:connect('sx-bol.eu', 80)
    self.Url = url
    self.Started = false
    self.Lastprint = ""
    self.File = ""
end
function SxScriptUpdate:Base64Encode(data)
    local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
    return ((data:gsub('.', function(x)
        local r,b='',x:byte()
        for i=8,1,-1 do r=r..(b%2^i-b%2^(i-1)>0 and '1' or '0') end
        return r;
    end)..'0000'):gsub('%d%d%d?%d?%d?%d?', function(x)
        if (#x < 6) then return '' end
        local c=0
        for i=1,6 do c=c+(x:sub(i,i)=='1' and 2^(6-i) or 0) end
        return b:sub(c+1,c+1)
    end)..({ '', '==', '=' })[#data%3+1])
end
function SxScriptUpdate:GetOnlineVersion()
    if self.GotScriptVersion then return end

    self.Receive, self.Status, self.Snipped = self.Socket:receive(1024)
    if self.Status == 'timeout' and not self.Started then
        self.Started = true
        self.Socket:send("GET "..self.Url.." HTTP/1.0\r\nHost: sx-bol.eu\r\n\r\n")
    end
    if (self.Receive or (#self.Snipped > 0)) and not self.RecvStarted then
        self.RecvStarted = true
        self.DownloadStatus = 'Downloading VersionInfo (0%)'
    end

    self.File = self.File .. (self.Receive or self.Snipped)
    if self.File:find('</s'..'ize>') then
        if not self.Size then
            self.Size = tonumber(self.File:sub(self.File:find('<si'..'ze>')+6,self.File:find('</si'..'ze>')-1))
        end
        if self.File:find('<scr'..'ipt>') then
            local _,ScriptFind = self.File:find('<scr'..'ipt>')
            local ScriptEnd = self.File:find('</scr'..'ipt>')
            if ScriptEnd then ScriptEnd = ScriptEnd - 1 end
            local DownloadedSize = self.File:sub(ScriptFind+1,ScriptEnd or -1):len()
            self.DownloadStatus = 'Downloading VersionInfo ('.. math.round(100/self.Size*DownloadedSize,2)..'%)'
        end
    end
    if self.File:find('</scr'..'ipt>') then
        self.DownloadStatus = 'Downloading VersionInfo (100%)'
        local a,b = self.File:find('\r\n\r\n')
        self.File = self.File:sub(a,-1)
        self.NewFile = ''
        for line,content in ipairs(self.File:split('\n')) do
            if content:len() > 5 then
                self.NewFile = self.NewFile .. content
            end
        end
        local HeaderEnd, ContentStart = self.File:find('<scr'..'ipt>')
        local ContentEnd, _ = self.File:find('</sc'..'ript>')
        if not ContentStart or not ContentEnd then
            if self.CallbackError and type(self.CallbackError) == 'function' then
                self.CallbackError()
            end
        else
            self.OnlineVersion = (Base64Decode(self.File:sub(ContentStart + 1,ContentEnd-1)))
            self.OnlineVersion = tonumber(self.OnlineVersion)
            if self.OnlineVersion > self.LocalVersion then
                if self.CallbackNewVersion and type(self.CallbackNewVersion) == 'function' then
                    self.CallbackNewVersion(self.OnlineVersion,self.LocalVersion)
                end
                self:CreateSocket(self.ScriptPath)
                self.DownloadStatus = 'Connect to Server for ScriptDownload'
                AddTickCallback(function() self:DownloadUpdate() end)
            else
                if self.CallbackNoUpdate and type(self.CallbackNoUpdate) == 'function' then
                    self.CallbackNoUpdate(self.LocalVersion)
                end
            end
        end
        self.GotScriptVersion = true
    end
end
function SxScriptUpdate:DownloadUpdate()
    if self.GotSxScriptUpdate then return end
    self.Receive, self.Status, self.Snipped = self.Socket:receive(1024)
    if self.Status == 'timeout' and not self.Started then
        self.Started = true
        self.Socket:send("GET "..self.Url.." HTTP/1.0\r\nHost: sx-bol.eu\r\n\r\n")
    end
    if (self.Receive or (#self.Snipped > 0)) and not self.RecvStarted then
        self.RecvStarted = true
        self.DownloadStatus = 'Downloading Script (0%)'
    end

    self.File = self.File .. (self.Receive or self.Snipped)
    if self.File:find('</si'..'ze>') then
        if not self.Size then
            self.Size = tonumber(self.File:sub(self.File:find('<si'..'ze>')+6,self.File:find('</si'..'ze>')-1))
        end
        if self.File:find('<scr'..'ipt>') then
            local _,ScriptFind = self.File:find('<scr'..'ipt>')
            local ScriptEnd = self.File:find('</scr'..'ipt>')
            if ScriptEnd then ScriptEnd = ScriptEnd - 1 end
            local DownloadedSize = self.File:sub(ScriptFind+1,ScriptEnd or -1):len()
            self.DownloadStatus = 'Downloading Script ('..math.round(100/self.Size*DownloadedSize,2)..'%)'
        end
    end
    if self.File:find('</scr'..'ipt>') then
        self.DownloadStatus = 'Downloading Script (100%)'
        local a,b = self.File:find('\r\n\r\n')
        self.File = self.File:sub(a,-1)
        self.NewFile = ''
        for line,content in ipairs(self.File:split('\n')) do
            if content:len() > 5 then
                self.NewFile = self.NewFile .. content
            end
        end
        local HeaderEnd, ContentStart = self.NewFile:find('<sc'..'ript>')
        local ContentEnd, _ = self.NewFile:find('</scr'..'ipt>')
        if not ContentStart or not ContentEnd then
            if self.CallbackError and type(self.CallbackError) == 'function' then
                self.CallbackError()
            end
        else
            local newf = self.NewFile:sub(ContentStart+1,ContentEnd-1)
            local newf = newf:gsub('\r','')
            if newf:len() ~= self.Size then
                if self.CallbackError and type(self.CallbackError) == 'function' then
                    self.CallbackError()
                end
                return
            end
            local newf = Base64Decode(newf)
            if type(load(newf)) ~= 'function' then
                if self.CallbackError and type(self.CallbackError) == 'function' then
                    self.CallbackError()
                end
            else
                local f = io.open(self.SavePath,"w+b")
                f:write(newf)
                f:close()
                if self.CallbackUpdate and type(self.CallbackUpdate) == 'function' then
                    self.CallbackUpdate(self.OnlineVersion,self.LocalVersion)
                    self.Updated = true
                end
            end
        end
        self.GotSxScriptUpdate = true
    end
end
