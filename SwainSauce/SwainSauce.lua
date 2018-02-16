if myHero.charName ~= "Swain" then return end

function OnLoad()
    local version = 0.04
    CheckUpdatesLib()
    CheckUpdates(version)

    if _G.Lulzlib then
        _G.Lulzlib:CreateBaseMenu("Swain Sauce")
        SetSkin(myHero, LulzMenu.Skins - 1)
        Orbwalker()
        Prediction(LulzMenu.General)
        CTargetSelector()
        ItemsAndSummoners(1)
        AntiBaseUlt()
        Humanizer()
        ThreshLantern()
		recallTracker()
		--Awareness()
        _G[myHero.charName]()
    end
end
function OnUnload()
    SetSkin(myHero, -1)
end

class "Swain"
function Swain:__init()
    Swain.SpellTable = {
        Q = {range = 725, speed = Lulzlib.huge, delay = 0.25, angle = 45, collision = true},
		W = {range = 3500, speed = 2200, delay = 0.55, radius = 125, collision = false},
		E = {range = 850, speed = 1200, delay = 0.25, width = 150, collision = true},
		R = {range = 650},
    }
	Swain.spellDmg = {
        [_Q] = function(unit) if Lulzlib:IsQReady() then return myHero:CalcMagicDamage(unit, ((((myHero:GetSpellData(_Q).level * 45) + 20) + (myHero.ap * 0.4)))) end end,
        [_E] = function(unit) if Lulzlib:IsEReady() then return myHero:CalcMagicDamage(unit, ((((myHero:GetSpellData(_E).level * 35)) + (myHero.ap * 0.25)) + (((myHero:GetSpellData(_E).level * 25) + 10) + (myHero.ap * .25)) + (35 + (myHero.ap * .45)))) end end,
        [_W] = function(unit) if Lulzlib:IsWReady() then return myHero:CalcMagicDamage(unit, ((((myHero:GetSpellData(_W).level * 50) + 50) + (myHero.ap * .7)))) end end,
    }
	self.InterruptableSpell = {
		{name = "katarinar", duration = 1}, -- Katarina R
		{name = "galioidolofdurand", duration = 1}, -- Galio R
		{name = "crowstorm", duration = 1}, -- Fiddle R
		{name = "drain", duration = 1}, -- Fiddle W
		{name = "absolutezero", duration = 1}, -- Nunu R
		{name = "shenstandunited", duration = 1}, -- Shen R
		{name = "urgotswap2", duration = 1}, -- Urgot R
		{name = "alzaharnethergrasp", duration = 2.5}, -- Malzahar R
		{name = "fallenone", duration = 1.5}, -- Karthus R
		{name = "pantheon_grandskyfall_jump", duration = 1.8}, -- Pantheon R
		{name = "varusq", duration = 1}, -- Varus Q
		{name = "caitlynaceintthehole", duration = 1}, -- Caitlyn R
		{name = "missfortunebullettime", duration = 2.5}, -- MissFortune R
		{name = "infiniteduress", duration = 2}, -- Warwick R
		{name = "lucianr", duration = 2}, -- Lucian R
		{name = "jhinr", duration = 2.5}, -- Jhin R
	}
	
	self:AddToMenu()
    self.enemyHeros = GetEnemyHeroes()
    self.enemyMinions = minionManager(MINION_ENEMY, self.SpellTable.Q.range - 400, myHero, MINION_SORT_HEALTH_ASC)
    self.jungleMinions = minionManager(MINION_JUNGLE, 625, myHero, MINION_SORT_MAXHEALTH_ASC)

    AddDrawCallback(function() self:OnDraw() end)
    AddTickCallback(function() self:OnTick() end)
	AddProcessSpellCallback(function(unit, spell) self:OnProcessSpell(unit, spell) end)
end
function Swain:AddToMenu()
	LulzMenu.Draw.E:addParam("CircleColor", "Circle color", SCRIPT_PARAM_COLOR, {255,255,0,255})

    LulzMenu.Spell.QMenu:addParam("EnableCombo", "Use in combo", 1, true)
    LulzMenu.Spell.QMenu:addParam("EnableHarass", "Use in harass", 1, true)
    LulzMenu.Spell.QMenu:addParam("EnableClear", "Use in clear", SCRIPT_PARAM_LIST, 2,{"Off","Last Hit","Clear"})
    LulzMenu.Spell.QMenu:addParam("EnableJungle", "Use in jungle", 1, true)
    LulzMenu.Spell.QMenu:addParam("EnableKillSteal", "Use in kill steal", 1, true)
    LulzMenu.Spell.QMenu:addParam("PlaceHolder", "", SCRIPT_PARAM_INFO, "")
    LulzMenu.Spell.QMenu:addParam("HarassMana", "Harass mana managment % >", SCRIPT_PARAM_SLICE, 30, 0, 100, 0)
    LulzMenu.Spell.QMenu:addParam("ClearMana", "Lane clear mana managment % >", SCRIPT_PARAM_SLICE, 60, 0, 100, 0)
    LulzMenu.Spell.QMenu:addParam("jungleMana", "Jungle clear mana managment % >", SCRIPT_PARAM_SLICE, 60, 0, 100, 0)
	Prediction:AddToMenu(LulzMenu.Spell.QMenu)
	
    LulzMenu.Spell.WMenu:addParam("EnableCombo", "Use in combo", 1, true)
    LulzMenu.Spell.WMenu:addParam("EnableHarass", "Use in harass", 1, true)
    LulzMenu.Spell.WMenu:addParam("EnableClear", "Use in clear", SCRIPT_PARAM_LIST, 2,{"Off","Last Hit","Clear"})
    LulzMenu.Spell.WMenu:addParam("EnableJungle", "Use in jungle", 1, true)
    LulzMenu.Spell.WMenu:addParam("EnableKillSteal", "Use in kill steal", 1, true)
    LulzMenu.Spell.WMenu:addParam("PlaceHolder", "", SCRIPT_PARAM_INFO, "")
    LulzMenu.Spell.WMenu:addParam("HarassMana", "Harass mana managment % >", SCRIPT_PARAM_SLICE, 30, 0, 100, 0)
    LulzMenu.Spell.WMenu:addParam("ClearMana", "Lane clear mana managment % >", SCRIPT_PARAM_SLICE, 60, 0, 100, 0)
    LulzMenu.Spell.WMenu:addParam("jungleMana", "Jungle clear mana managment % >", SCRIPT_PARAM_SLICE, 60, 0, 100, 0)
	Prediction:AddToMenu(LulzMenu.Spell.WMenu)
	
	LulzMenu.Spell.EMenu:addParam("EnableCombo", "Use in combo", 1, true)
    LulzMenu.Spell.EMenu:addParam("EnableHarass", "Use in harass", 1, true)
    LulzMenu.Spell.EMenu:addParam("EnableClear", "Use in clear", SCRIPT_PARAM_LIST, 2,{"Off","Last Hit","Clear"})
    LulzMenu.Spell.EMenu:addParam("EnableJungle", "Use in jungle", 1, true)
    LulzMenu.Spell.EMenu:addParam("EnableKillSteal", "Use in kill steal", 1, true)
    LulzMenu.Spell.EMenu:addParam("PlaceHolder", "", SCRIPT_PARAM_INFO, "")
    LulzMenu.Spell.EMenu:addParam("HarassMana", "Harass mana managment % >", SCRIPT_PARAM_SLICE, 30, 0, 100, 0)
    LulzMenu.Spell.EMenu:addParam("ClearMana", "Lane clear mana managment % >", SCRIPT_PARAM_SLICE, 60, 0, 100, 0)
    LulzMenu.Spell.EMenu:addParam("jungleMana", "Jungle clear mana managment % >", SCRIPT_PARAM_SLICE, 60, 0, 100, 0)
	Prediction:AddToMenu(LulzMenu.Spell.EMenu)
	
    LulzMenu.Spell.RMenu:addParam("EnableCombo", "Use in combo", 1, true)
    LulzMenu.Spell.RMenu:addParam("EnableClear", "Use in lane clear", 1, false)
    LulzMenu.Spell.RMenu:addParam("EnableJungle", "Use in jungle", 1, false)
    LulzMenu.Spell.RMenu:addParam("EnableKillSteal", "Use in kill steal", 1, true)
    LulzMenu.Spell.RMenu:addParam("PlaceHolder", "", SCRIPT_PARAM_INFO, "")
	LulzMenu.Spell.RMenu:addParam("MinToUlt", "Min number of enemies to ult", SCRIPT_PARAM_SLICE, 2, 0, 5, 0)
    LulzMenu.Spell.RMenu:addParam("ClearMana", "Lane clear mana managment % >", SCRIPT_PARAM_SLICE, 60, 0, 100, 0)
	LulzMenu.Spell.RMenu:addParam("jungleMana", "Jungle clear mana managment % >", SCRIPT_PARAM_SLICE, 60, 0, 100, 0)
    Prediction:AddToMenu(LulzMenu.Spell.RMenu)
end
function Swain:OnDraw()
    if not myHero.dead then
        if LulzMenu.Draw.Q.Enabled and (_G.Lulzlib:IsQReady() or not LulzMenu.Draw.Q.Hide) then
            _G.Lulzlib:RenderCircle("Q")
        end
		
		if LulzMenu.Draw.W.Enabled and (_G.Lulzlib:IsWReady() or not LulzMenu.Draw.W.Hide) then
			DrawCircleMinimap(myHero.x, myHero.y, myHero.z, 3500, 1, Lulzlib:ReturnColor(LulzMenu.Draw.W.CircleColor), 50)
		end
		
		if LulzMenu.Draw.E.Enabled and (_G.Lulzlib:IsEReady() or not LulzMenu.Draw.E.Hide) then
            _G.Lulzlib:RenderCircle("E")
        end
		
        if LulzMenu.Draw.R.Enabled and (_G.Lulzlib:IsRReady() or not LulzMenu.Draw.R.Hide) then
            _G.Lulzlib:RenderCircle("R")
        end
        
		if LulzMenu.Draw.damage.Enabled then
			for i, enemy in _G.Lulzlib.pairs(self.enemyHeros) do
				if enemy and ValidTarget(enemy) and GetDistance(enemy) < 1500 then
					Lulzlib:DrawDmg(enemy)
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
function Swain:OnTick()
    _G.Target = CTargetSelector:GetTarget()

    self:Combo()
    self:Harass()
    self:LaneClear()
    self:KillSteal()
    self:FleeMode()
end
function Swain:Combo()
    if Orbwalker:IsFighting() then
        if ValidTarget(Target) then
            if LulzMenu.Spell.QMenu.EnableCombo then self:CastQ(Target) end
			if LulzMenu.Spell.WMenu.EnableCombo then self:CastW(Target) end
			if LulzMenu.Spell.EMenu.EnableCombo then self:CastE(Target) end
			if LulzMenu.Spell.RMenu.EnableCombo then self:CastR(Target) end
        end
    end
end
function Swain:Harass()
    if Orbwalker:IsHarassing() then
		if ValidTarget(Target) then
            if LulzMenu.Spell.QMenu.EnableHarass and LulzMenu.Spell.QMenu.HarassMana < Lulzlib:ManaPercent() then self:CastQ(Target) end
			if LulzMenu.Spell.WMenu.EnableHarass and LulzMenu.Spell.WMenu.HarassMana < Lulzlib:ManaPercent() then self:CastW(Target) end
			if LulzMenu.Spell.EMenu.EnableHarass and LulzMenu.Spell.EMenu.HarassMana < Lulzlib:ManaPercent() then self:CastE(Target) end
        end
    end
end
function Swain:LaneClear()
    if Orbwalker:IsLaneClearing() then
        if LulzMenu.Spell.QMenu.EnableJungle then
            self.jungleMinions:update()

            if Lulzlib:IsQReady() then
                for i, jungle in pairs(self.jungleMinions.objects) do
                    if jungle ~= nil and ValidTarget(jungle) and GetDistance(jungle) < self.SpellTable.Q.range and string.split(jungle.charName,'_')[2] ~= "Plant" then
						if Lulzlib:ManaPercent() > LulzMenu.Spell.QMenu.jungleMana then
							self:CastQ(jungle)
						end
                    end
                end
            end
        end
		if LulzMenu.Spell.WMenu.EnableJungle then
            self.jungleMinions:update()

            if Lulzlib:IsWReady() then
                for i, jungle in pairs(self.jungleMinions.objects) do
                    if jungle ~= nil and ValidTarget(jungle) and GetDistance(jungle) < self.SpellTable.W.range and string.split(jungle.charName,'_')[2] ~= "Plant" then
						if Lulzlib:ManaPercent() > LulzMenu.Spell.WMenu.jungleMana then
							self:CastW(jungle)
						end
                    end
                end
            end
        end
        if LulzMenu.Spell.EMenu.EnableJungle then
            self.jungleMinions:update()

            if Lulzlib:IsEReady() then
                for i, jungle in pairs(self.jungleMinions.objects) do
                    if jungle ~= nil and ValidTarget(jungle) and GetDistance(jungle) < self.SpellTable.E.range and string.split(jungle.charName,'_')[2] ~= "Plant" then
						if Lulzlib:ManaPercent() > LulzMenu.Spell.EMenu.jungleMana then
							self:CastE(jungle)
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
						if Lulzlib:ManaPercent() > LulzMenu.Spell.QMenu.ClearMana then
							if LulzMenu.Spell.QMenu.EnableClear == 3 then
								self:CastQ(minion)
							else
								if Lulzlib:GetDamage(_Q, minion) > minion.health then
									self:CastQ(minion)
								end
							end
						end
                    end
                end
            end
        end
		if LulzMenu.Spell.WMenu.EnableClear > 1 then
            self.enemyMinions:update()
            if Lulzlib:IsWReady() then
                for i, minion in pairs(self.enemyMinions.objects) do
                    if minion ~= nil and ValidTarget(minion) and GetDistance(minion) < self.SpellTable.W.range then
						if Lulzlib:ManaPercent() > LulzMenu.Spell.WMenu.ClearMana then
							if LulzMenu.Spell.WMenu.EnableClear == 3 then
								self:CastW(minion)
							else
								if Lulzlib:GetDamage(_W, minion) > minion.health then
									self:CastW(minion)
								end
							end
						end
                    end
                end
            end
        end
		if LulzMenu.Spell.EMenu.EnableClear > 1 then
            self.enemyMinions:update()
            if Lulzlib:IsEReady() then
                for i, minion in pairs(self.enemyMinions.objects) do
                    if minion ~= nil and ValidTarget(minion) and GetDistance(minion) < self.SpellTable.E.range then
						if Lulzlib:ManaPercent() > LulzMenu.Spell.EMenu.ClearMana then
							if LulzMenu.Spell.EMenu.EnableClear == 3 then
								self:CastE(minion)
							else
								if Lulzlib:GetDamage(_E, minion) > minion.health then
									self:CastE(minion)
								end
							end
						end
                    end
                end
            end
        end
	end
end
function Swain:CastQ(enemy)
    if Lulzlib:IsQReady() then
        local CastPosition, HitChance = Prediction:GetConeCastPosition(enemy, self.SpellTable.Q)
		if CastPosition and HitChance >= LulzMenu.Spell.QMenu.Accuracy and GetDistance(enemy) <= self.SpellTable.Q.range then
			CastSpell(_Q, CastPosition.x, CastPosition.z)
		end
    end
end
function Swain:CastW(enemy)
    if Lulzlib:IsWReady() then
        local CastPosition, HitChance = Prediction:GetCircularCastPosition(enemy, self.SpellTable.W)
		if CastPosition and HitChance >= LulzMenu.Spell.WMenu.Accuracy and GetDistance(enemy) <= self.SpellTable.W.range then
			CastSpell(_W, CastPosition.x, CastPosition.z)
		end
    end
end
function Swain:CastE(enemy)
    if Lulzlib:IsEReady() then
		local CastPosition, HitChance = Prediction:GetLineCastPosition(enemy, self.SpellTable.E)
		if CastPosition and HitChance >= LulzMenu.Spell.EMenu.Accuracy and GetDistance(enemy) <= self.SpellTable.E.range then
			CastSpell(_E, CastPosition.x, CastPosition.z)
		end
    end
end
function Swain:CastR(enemy)
    if Lulzlib:IsRReady() then
		if Lulzlib:CountEnemiesNearUnitReg(myHero, self.SpellTable.R.range) >= LulzMenu.Spell.RMenu.MinToUlt then
			CastSpell(_R)
		end
    end
end
function Swain:KillSteal()
    for i, enemy in _G.Lulzlib.pairs(self.enemyHeros) do
        if enemy and ValidTarget(enemy) then
            if LulzMenu.Spell.QMenu.EnableKs then
				if Lulzlib:GetDamage(_Q, enemy) > enemy.health then
                    self:CastQ(enemy)
                end
			end
			
			if LulzMenu.Spell.WMenu.EnableKs then
                if Lulzlib:GetDamage(_W, enemy) > enemy.health then
                    self:CastW(enemy)
                end
			end
			
			if LulzMenu.Spell.EMenu.EnableKs then
                if Lulzlib:GetDamage(_E, enemy) > enemy.health then
                    self:CastE(enemy)
                end
			end
        end
    end
end
function Swain:FleeMode()
    if LulzMenu.Hotkeys.FleeKey then
        myHero:MoveTo(mousePos.x, mousePos.z)
    end
end
function Swain:OnProcessSpell(unit, spell)
	if unit and unit.valid and unit.type == myHero.type and unit.team ~= myHero.team and spell and spell.name and GetDistance(unit) < self.SpellTable.E.range then
		for k, v in ipairs(self.InterruptableSpell) do
			if spell.name:lower() == self.InterruptableSpell[k].name then
				CastSpell(_E, unit.x, unit.z)
			end
		end
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
    ToUpdate.VersionPath = "/Celtech/BOL/master/SwainSauce/SwainSauce.version"
    ToUpdate.ScriptPath =  "/Celtech/BOL/master/SwainSauce/SwainSauce.lua"
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
