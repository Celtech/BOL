if myHero.charName ~= "Xayah" and myHero.charName ~= "Rakan" then return end
assert(load(Base64Decode("G0x1YVIAAQQEBAgAGZMNChoKAAAAAAAAAAAAAQMeAAAABAAAAEYAQAClAAAAXUAAAUZAQAClQAAAXUAAAWWAAAAIQACBZcAAAAhAgIFGAEEApQABAF1AAAFGQEEAgYABAF1AAAFGgEEApUABAEqAgINGgEEApYABAEqAAIRGgEEApcABAEqAgIRGgEEApQACAEqAAIUfAIAACwAAAAQSAAAAQWRkVW5sb2FkQ2FsbGJhY2sABBQAAABBZGRCdWdzcGxhdENhbGxiYWNrAAQMAAAAVHJhY2tlckxvYWQABA0AAABCb2xUb29sc1RpbWUABBQAAABBZGRHYW1lT3ZlckNhbGxiYWNrAAQGAAAAY2xhc3MABA4AAABTY3JpcHRUcmFja2VyAAQHAAAAX19pbml0AAQSAAAAU2VuZFZhbHVlVG9TZXJ2ZXIABAoAAABzZW5kRGF0YXMABAsAAABHZXRXZWJQYWdlAAkAAAACAAAAAwAAAAAAAwkAAAAFAAAAGABAABcAAIAfAIAABQAAAAxAQACBgAAAHUCAAR8AgAADAAAAAAQSAAAAU2VuZFZhbHVlVG9TZXJ2ZXIABAcAAAB1bmxvYWQAAAAAAAEAAAABAAAAAAAAAAAAAAAAAAAAAAAEAAAABQAAAAAAAwkAAAAFAAAAGABAABcAAIAfAIAABQAAAAxAQACBgAAAHUCAAR8AgAADAAAAAAQSAAAAU2VuZFZhbHVlVG9TZXJ2ZXIABAkAAABidWdzcGxhdAAAAAAAAQAAAAEAAAAAAAAAAAAAAAAAAAAAAAUAAAAHAAAAAQAEDQAAAEYAwACAAAAAXYAAAUkAAABFAAAATEDAAMGAAABdQIABRsDAAKUAAADBAAEAXUCAAR8AgAAFAAAABA4AAABTY3JpcHRUcmFja2VyAAQSAAAAU2VuZFZhbHVlVG9TZXJ2ZXIABAUAAABsb2FkAAQMAAAARGVsYXlBY3Rpb24AAwAAAAAAQHpAAQAAAAYAAAAHAAAAAAADBQAAAAUAAAAMAEAAgUAAAB1AgAEfAIAAAgAAAAQSAAAAU2VuZFZhbHVlVG9TZXJ2ZXIABAgAAAB3b3JraW5nAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgAAAAEAAAAAAAAAAAAAAAAAAAAAAAAACAAAAA0AAAAAAAksAAAABgBAAB2AgAAaQEAAF4AAgEGAAABfAAABF8AIgEbAQABHAMEAgUABAMaAQQDHwMEBEAFCAN0AAAFdgAAAhsBAAIcAQQHBQAEABoFBAAfBQQJQQUIAj0HCAE6BgQIdAQABnYAAAMbAQADHAMEBAUEBAEaBQQBHwcECjwHCAI6BAQDPQUIBjsEBA10BAAHdgAAAAAGAAEGBAgCAAQABwYECAAACgAEWAQICHwEAAR8AgAALAAAABA8AAABHZXRJbkdhbWVUaW1lcgADAAAAAAAAAAAECQAAADAwOjAwOjAwAAQHAAAAc3RyaW5nAAQHAAAAZm9ybWF0AAQGAAAAJTAyLmYABAUAAABtYXRoAAQGAAAAZmxvb3IAAwAAAAAAIKxAAwAAAAAAAE5ABAIAAAA6AAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAADgAAABAAAAAAAAMUAAAABgBAAB2AgAAHQEAAGwAAABdAA4AGAEAAHYCAAAeAQAAbAAAAFwABgAUAgAAMwEAAgYAAAB1AgAEXwACABQCAAAzAQACBAAEAHUCAAR8AgAAFAAAABAgAAABHZXRHYW1lAAQHAAAAaXNPdmVyAAQEAAAAd2luAAQSAAAAU2VuZFZhbHVlVG9TZXJ2ZXIABAYAAABsb29zZQAAAAAAAgAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAEQAAABEAAAACAAICAAAACkAAgB8AgAABAAAABAoAAABzY3JpcHRLZXkAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEQAAABIAAAACAAUKAAAAhgBAAMAAgACdgAABGEBAARfAAICFAIAAjIBAAQABgACdQIABHwCAAAMAAAAEBQAAAHR5cGUABAcAAABzdHJpbmcABAoAAABzZW5kRGF0YXMAAAAAAAIAAAAAAAEAAAAAAAAAAAAAAAAAAAAAABMAAAAiAAAAAgATPwAAAApAAICGgEAAnYCAAAqAgICGAEEAxkBBAAaBQQAHwUECQQECAB2BAAFGgUEAR8HBAoFBAgBdgQABhoFBAIfBQQPBgQIAnYEAAcaBQQDHwcEDAcICAN2BAAEGgkEAB8JBBEECAwAdggABFgECAt0AAAGdgAAACoCAgYaAQwCdgIAACoCAhgoAxIeGQEQAmwAAABdAAIAKgMSHFwAAgArAxIeGQEUAh4BFAQqAAIqFAIAAjMBFAQEBBgBBQQYAh4FGAMHBBgAAAoAAQQIHAIcCRQDBQgcAB0NAAEGDBwCHw0AAwcMHAAdEQwBBBAgAh8RDAFaBhAKdQAACHwCAACEAAAAEBwAAAGFjdGlvbgAECQAAAHVzZXJuYW1lAAQIAAAAR2V0VXNlcgAEBQAAAGh3aWQABA0AAABCYXNlNjRFbmNvZGUABAkAAAB0b3N0cmluZwAEAwAAAG9zAAQHAAAAZ2V0ZW52AAQVAAAAUFJPQ0VTU09SX0lERU5USUZJRVIABAkAAABVU0VSTkFNRQAEDQAAAENPTVBVVEVSTkFNRQAEEAAAAFBST0NFU1NPUl9MRVZFTAAEEwAAAFBST0NFU1NPUl9SRVZJU0lPTgAECwAAAGluZ2FtZVRpbWUABA0AAABCb2xUb29sc1RpbWUABAYAAABpc1ZpcAAEAQAAAAAECQAAAFZJUF9VU0VSAAMAAAAAAADwPwMAAAAAAAAAAAQJAAAAY2hhbXBpb24ABAcAAABteUhlcm8ABAkAAABjaGFyTmFtZQAECwAAAEdldFdlYlBhZ2UABA4AAABib2wtdG9vbHMuY29tAAQXAAAAL2FwaS9ldmVudHM/c2NyaXB0S2V5PQAECgAAAHNjcmlwdEtleQAECQAAACZhY3Rpb249AAQLAAAAJmNoYW1waW9uPQAEDgAAACZib2xVc2VybmFtZT0ABAcAAAAmaHdpZD0ABA0AAAAmaW5nYW1lVGltZT0ABAgAAAAmaXNWaXA9AAAAAAACAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAjAAAAJwAAAAMACiEAAADGQEAAAYEAAN2AAAHHwMAB3YCAAArAAIDHAEAAzADBAUABgACBQQEA3UAAAscAQADMgMEBQcEBAIABAAHBAQIAAAKAAEFCAgBWQYIC3UCAAccAQADMgMIBQcECAIEBAwDdQAACxwBAAMyAwgFBQQMAgYEDAN1AAAIKAMSHCgDEiB8AgAASAAAABAcAAABTb2NrZXQABAgAAAByZXF1aXJlAAQHAAAAc29ja2V0AAQEAAAAdGNwAAQIAAAAY29ubmVjdAADAAAAAAAAVEAEBQAAAHNlbmQABAUAAABHRVQgAAQSAAAAIEhUVFAvMS4wDQpIb3N0OiAABAUAAAANCg0KAAQLAAAAc2V0dGltZW91dAADAAAAAAAAAAAEAgAAAGIAAwAAAPyD15dBBAIAAAB0AAQKAAAATGFzdFByaW50AAQBAAAAAAQFAAAARmlsZQAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAABAAAAAAAAAAAAAAAAAAAAAAA="), nil, "bt", _ENV))()
TrackerLoad("7c0PSV2nxVLfueY5")

function OnLoad()
    local version = 0.11
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
        _G[myHero.charName]()
    end
end
function OnUnload()
    SetSkin(myHero, -1)
end

class "Rakan"
function Rakan:__init()
    _G.Lulzlib:Log("Rakan is currently under development. He will be added soon <3.")
end

class "Xayah"
function Xayah:__init()
    Xayah.SpellTable = {
       AA = {range = myHero.range + myHero.boundingRadius},
        Q = {range = 1075, speed = 2000, delay = 0.25, width = 75, collision = false},
        W = {range = 1000, delay = 0.25},
        E = {range = 1075, speed = 2000, delay = 0.00, width = 75, collision = false},
        R = {range = 1040, speed = 2000, delay = 0.50, angle = 150, collision = false, aoe = true}
    }
    Xayah.spellDmg = {
        [_Q] = function(unit) if _G.Lulzlib:IsQReady() then return myHero:CalcMagicDamage(unit, ((((myHero:GetSpellData(_Q).level * 20) + 20) + (myHero.addDamage * 0.4)))) end end,
        [_E] = function(unit) if _G.Lulzlib:IsEReady() then return myHero:CalcMagicDamage(unit, ((((myHero:GetSpellData(_E).level * 10) + 40) + (myHero.addDamage * 0.6)))) end end,
        [_R] = function(unit) if _G.Lulzlib:IsRReady() then return myHero:CalcMagicDamage(unit, ((((myHero:GetSpellData(_R).level * 50) + 50) + (myHero.addDamage * 1.0)))) end end
    }
    self.feathers = {}
    --[[
    type 1 = distance check
    type 2 = line/cone skillshot w/ collision
    type 3 = line/cone skillshot w/o collision
    type 4 = circular skillshot
    type 5 = targeted
    ]]
    self.jukeTable = {
    	["Aatrox"] = {
    		{type = 4, range = 1200, spell = _Q, name = "Q"}
    	},
    	["Ahri"] = {
    		{type = 2, range = 800,  spell = _E, name = "E"},
    	},
    	["Alistar"] = {
    		{type = 2, range = 1200, spell = _Q, name = "Q"}
    	},
    	["Amumu"] = {
    		{type = 1, range = 800,  spell = _R, name = "R"},
    		{type = 2, range = 1200, spell = _Q, name = "Q"}
    	},
    	["Anivia"] = {
    		{type = 3, range = 1200, spell = _Q, name = "Q"}
    	},
    	["Annie"] = {
    		{type = 5, range = 1200, spell = _Q, name = "Q"},
    		{type = 3, range = 1200, spell = _W, name = "W"},
    		{type = 4, range = 800,  spell = _R, name = "R"},

    	},
    	["Ashe"] = {
    		{type = 3, range = 800,  spell = _R, name = "R"},
    	},
    	["Azir"] = {
    		{type = 3, range = 800,  spell = _R, name = "R"},
    	},
    	["Bard"] = {
    		{type = 4, range = 800,  spell = _R, name = "R"},
    	},
    	["Blitzcrank"] = {
    		{type = 1, range = 800,  spell = _R, name = "R"},
    		{type = 2, range = 1200, spell = _Q, name = "Q"}
    	},
    	["Brand"] = {
    		{type = 5, range = 800,  spell = _R, name = "R"},
    	},
    	["Braum"] = {
    		{type = 3, range = 800,  spell = _R, name = "R"},
    	},
    	["Cassiopeia"] = {
    		{type = 3, range = 800,  spell = _R, name = "R"},
    	},
    	["ChoGath"] = {
    		{type = 4, range = 1200, spell = _Q, name = "Q"}
    	},
    	["Draven"] = {
    		{type = 3, range = 800,  spell = _R, name = "R"},
    	},
    	["Ezreal"] = {
    		{type = 3, range = 800,  spell = _R, name = "R"},
    	},
    	["Fiddlesticks"] = {
    		{type = 4, range = 800,  spell = _R, name = "R"},
    	},
    	["Fizz"] = {
    		{type = 3, range = 800,  spell = _R, name = "R"},
    	},
    	["Gangplank"] = {
    		{type = 4, range = 800,  spell = _R, name = "R"},
    	},
    	["Gragas"] = {
    		{type = 4, range = 800,  spell = _R, name = "R"},
    	},
    	["Graves"] = {
    		{type = 3, range = 800,  spell = _R, name = "R"},
    	},
    	["Hecarim"] = {
    		{type = 3, range = 800,  spell = _R, name = "R"},
    	},
    	["Illaoi"] = {
    		{type = 1, range = 800,  spell = _R, name = "R"},
    	},
    	["Ivern"] = {
    		{type = 3, range = 1200, spell = _Q, name = "Q"}
    	},
    	["Jinx"] = {
    		{type = 3, range = 800,  spell = _R, name = "R"},
    	},
    	["Karthus"] = {
    		{type = 6, range = 800,  spell = _R, name = "R", delay = 1},
    	},
    	["Katarina"] = {
    		{type = 1, range = 800,  spell = _R, name = "R"},
    	},
    	["Kennen"] = {
    		{type = 1, range = 800,  spell = _R, name = "R"},
    	},
    	["Leona"] = {
    		{type = 4, range = 800,  spell = _R, name = "R"},
    	},
    	["Lux"] = {
    		{type = 3, range = 800,  spell = _R, name = "R"},
    	},
    	["Malphite"] = {
    		{type = 4, range = 800,  spell = _R, name = "R"},
    	},
    	["MissFortune"] = {
    		{type = 3, range = 800,  spell = _R, name = "R"},
    	},
    	["Morgana"] = {
    		{type = 6, range = 800,  spell = _R, name = "R"},
    	},
    	["Nami"] = {
    		{type = 3, range = 800,  spell = _R, name = "R"},
    	},
    	["Nautilus"] = {
    		{type = 5, range = 800,  spell = _R, name = "R"},
    	},
    	["Nunu"] = {
    		{type = 1, range = 800,  spell = _R, name = "R"},
    	},
    	["Orianna"] = {
    		{type = 4, range = 800,  spell = _R, name = "R"},
    	},
    	["Riven"] = {
    		{type = 3, range = 800,  spell = _R, name = "R"},
    	},
    	["Rumble"] = {
    		{type = 3, range = 800,  spell = _R, name = "R"},
    	},
    	["Sejuani"] = {
    		{type = 3, range = 800,  spell = _R, name = "R"},
    	},
    	["Sona"] = {
    		{type = 3, range = 800,  spell = _R, name = "R"},
    	},
    	["Syndra"] = {
    		{type = 5, range = 800,  spell = _R, name = "R"},
    	},
    	["Tristana"] = {
    		{type = 5, range = 800,  spell = _R, name = "R"},
    	},
    	["Veigar"] = {
    		{type = 5, range = 800,  spell = _R, name = "R"},
    	},
    	["VelKoz"] = {
    		{type = 3, range = 800,  spell = _R, name = "R"},
    	},
    	["Vi"] = {
    		{type = 5, range = 800,  spell = _R, name = "R"},
    	},
    	["Viktor"] = {
    		{type = 4, range = 800,  spell = _R, name = "R"},
    	},
    	["Warwick"] = {
    		{type = 3, range = 800,  spell = _R, name = "R"},
    	},
    	["Wukong"] = {
    		{type = 1, range = 800,  spell = _R, name = "R"},
    	},
    	["Zed"] = {
    		{type = 6, range = 800,  spell = _R, name = "R"},
    	},
    	["Ziggs"] = {
    		{type = 4, range = 800,  spell = _R, name = "R"},
    	},
    	["Zyra"] = {
    		{type = 4, range = 800,  spell = _R, name = "R"},
    	},
    }

    self.enemyHeros = GetEnemyHeroes()
    self.allyHeros = GetAllyHeroes()
    self.enemyMinions = minionManager(MINION_ENEMY, self.SpellTable.Q.range - 400, myHero, MINION_SORT_HEALTH_ASC)
    self.jungleMinions = minionManager(MINION_JUNGLE, 625, myHero, MINION_SORT_MAXHEALTH_ASC)

    self:AddToMenu()
    AddTickCallback(function() self:OnTick() end)
    AddDrawCallback(function() self:OnDraw() end)
    AddCreateObjCallback(function(object) self:TrackFeathers(object) end)
    AddDeleteObjCallback(function(object) self:TrackFeathersDelete(object) end)
    AddProcessSpellCallback(function(unit, spell) self:UltimateJuke(unit,spell) end)
end
function Xayah:AddToMenu()
    LulzMenu.Draw.E:addParam("Feathers", "Draw feather circles", 1, true)
    LulzMenu.Draw.E:addParam("Timers", "Draw feather timers", 1, true)
    LulzMenu.Draw.E:addParam("Lines", "Draw feather lines", 1, true)
    LulzMenu.Draw.E:addParam("CircleColor", "Feather circle color", SCRIPT_PARAM_COLOR, {255,128,128,128})
    LulzMenu.Draw.E:addParam("HitCircleColor", "Feather that will hit line color", SCRIPT_PARAM_COLOR, {255,0,255,0})
    LulzMenu.Draw.E:addParam("WontHitCircleColor", "Feather that won't hit line color", SCRIPT_PARAM_COLOR, {255,255,0,0})

    LulzMenu.Spell.QMenu:addParam("EnableCombo", "Use in combo", 1, true)
    LulzMenu.Spell.QMenu:addParam("EnableHarass", "Use in harass", 1, true)
    LulzMenu.Spell.QMenu:addParam("EnableClear", "Use in clear", SCRIPT_PARAM_LIST, 2,{"Off","Last Hit","Clear"})
    LulzMenu.Spell.QMenu:addParam("EnableJungle", "Use in jungle", 1, true)
    LulzMenu.Spell.QMenu:addParam("EnableKillSteal", "Use in kill steal", 1, true)
    LulzMenu.Spell.QMenu:addParam("PlaceHolder", "", SCRIPT_PARAM_INFO, "")
    LulzMenu.Spell.QMenu:addParam("HarassMana", "Harass mana managment % >", SCRIPT_PARAM_SLICE, 30, 0, 100, 0)
    LulzMenu.Spell.QMenu:addParam("ClearMana", "Lane clear mana managment % >", SCRIPT_PARAM_SLICE, 60, 0, 100, 0)
    LulzMenu.Spell.QMenu:addParam("PlaceHolder2", "", SCRIPT_PARAM_INFO, "")
    Prediction:AddToMenu(LulzMenu.Spell.QMenu)

    LulzMenu.Spell.WMenu:addParam("EnableCombo", "Use in combo", 1, true)
    LulzMenu.Spell.WMenu:addParam("EnableHarass", "Use in harass", 1, false)
    LulzMenu.Spell.WMenu:addParam("EnableClear", "Use in clear", SCRIPT_PARAM_LIST, 1,{"Off","Last Hit","Clear"})
    LulzMenu.Spell.WMenu:addParam("EnableJungle", "Use in jungle", 1, true)
    LulzMenu.Spell.WMenu:addParam("EnableKillSteal", "Use in kill steal", 1, true)
    LulzMenu.Spell.WMenu:addParam("RakanCheck", "Check for Rakan before cast", 1, true)
    LulzMenu.Spell.WMenu:addParam("PlaceHolder", "", SCRIPT_PARAM_INFO, "")
    LulzMenu.Spell.WMenu:addParam("HarassMana", "Harass mana managment % >", SCRIPT_PARAM_SLICE, 30, 0, 100, 0)
    LulzMenu.Spell.WMenu:addParam("ClearMana", "Lane clear mana managment % >", SCRIPT_PARAM_SLICE, 60, 0, 100, 0)
    LulzMenu.Spell.WMenu:addParam("Buffer", "Rakan buffer range check", SCRIPT_PARAM_SLICE, 100, 0, 500, 0)

    LulzMenu.Spell.EMenu:addParam("EnableCombo", "Use in combo", 1, true)
    LulzMenu.Spell.EMenu:addParam("EnableHarass", "Use in harass", 1, true)
    LulzMenu.Spell.EMenu:addParam("EnableClear", "Use in clear", SCRIPT_PARAM_LIST, 1,{"Off","Last Hit","Clear"})
    LulzMenu.Spell.EMenu:addParam("EnableJungle", "Use in jungle", 1, true)
    LulzMenu.Spell.EMenu:addParam("EnableKillSteal", "Use in kill steal", 1, true)
    LulzMenu.Spell.EMenu:addParam("PlaceHolder", "", SCRIPT_PARAM_INFO, "")
    LulzMenu.Spell.EMenu:addParam("Feathers", "Min number of feathers to hit", SCRIPT_PARAM_SLICE, 3, 1, 10, 0)
    LulzMenu.Spell.EMenu:addParam("HarassMana", "Harass mana managment % >", SCRIPT_PARAM_SLICE, 70, 0, 100, 0)
    LulzMenu.Spell.EMenu:addParam("ClearMana", "Lane clear mana managment % >", SCRIPT_PARAM_SLICE, 60, 0, 100, 0)

    LulzMenu.Spell.RMenu:addParam("EnableCombo", "Use in combo", 1, true)
    LulzMenu.Spell.RMenu:addParam("EnableHarass", "Use in harass", 1, false)
    LulzMenu.Spell.RMenu:addParam("EnableClear", "Use in lane clear", 1, false)
    LulzMenu.Spell.RMenu:addParam("EnableJungle", "Use in jungle", 1, false)
    LulzMenu.Spell.RMenu:addParam("EnableKillSteal", "Use in kill steal", 1, true)
    LulzMenu.Spell.RMenu:addParam("PlaceHolder", "", SCRIPT_PARAM_INFO, "")
    LulzMenu.Spell.RMenu:addParam("HarassMana", "Harass mana managment % >", SCRIPT_PARAM_SLICE, 30, 0, 100, 0)
    LulzMenu.Spell.RMenu:addParam("ClearMana", "Lane clear mana managment % >", SCRIPT_PARAM_SLICE, 60, 0, 100, 0)
    LulzMenu.Spell.RMenu:addParam("PlaceHolder2", "", SCRIPT_PARAM_INFO, "")
    Prediction:AddToMenu(LulzMenu.Spell.RMenu)
    LulzMenu.Spell.RMenu:addParam("PlaceHolder3", "", SCRIPT_PARAM_INFO, "")
    LulzMenu.Spell.RMenu:addParam("PlaceHolder4", "Ultimate Juke Settings", SCRIPT_PARAM_INFO, "")
    LulzMenu.Spell.RMenu:addParam("EnableJuke", "Enable juking with ultimate", 1, true)
    LulzMenu.Spell.RMenu:addParam("Collision", "Check collision when needed", 1, true)
    LulzMenu.Spell.RMenu:addParam("PlaceHolder5", "", SCRIPT_PARAM_INFO, "")
    --LulzMenu.Spell.RMenu:modifyParam("PlaceHolder4", "lBgColor", ARGB(255,255,255,255))
    for i=1, #self.enemyHeros do
        if self.jukeTable[self.enemyHeros[i].charName] then
            for j=1, #self.jukeTable[self.enemyHeros[i].charName] do
                LulzMenu.Spell.RMenu:addParam(self.enemyHeros[i].charName..self.jukeTable[self.enemyHeros[i].charName][j].name, self.enemyHeros[i].charName.." "..self.jukeTable[self.enemyHeros[i].charName][j].name, 1, true)
            end
        end
    end
end
function Xayah:OnTick()
    _G.Target = CTargetSelector:GetTarget()

    self:Combo()
    self:Harass()
    self:LaneClear()
    self:KillSteal()
end
function Xayah:OnDraw()
    if not myHero.dead then
        if LulzMenu.Draw.AA.Enabled then
            _G.Lulzlib:RenderCircle("AA")
        end
        if LulzMenu.Draw.Q.Enabled and (_G.Lulzlib:IsQReady() or not LulzMenu.Draw.Q.Hide) then
            _G.Lulzlib:RenderCircle("Q")
        end
        if LulzMenu.Draw.W.Enabled and (_G.Lulzlib:IsWReady() or not LulzMenu.Draw.W.Hide) then
            _G.Lulzlib:RenderCircle("W")
        end
        if LulzMenu.Draw.E.Enabled and (_G.Lulzlib:IsEReady() or not LulzMenu.Draw.E.Hide) then
            for i, feather in _G.Lulzlib.pairs(self.feathers) do
                if LulzMenu.Draw.E.Feathers then
                    DrawCircle3D(feather.object.x, feather.object.y, feather.object.z, 100, 1, _G.Lulzlib:ReturnColor(LulzMenu.Draw.E.CircleColor), LulzMenu.Draw.Quality)
                end

                if LulzMenu.Draw.E.Timers then
                    DrawText3D(tostring(_G.Lulzlib.ceil(feather.endtime - _G.Lulzlib.clock())), feather.object.x, feather.object.y + 10, feather.object.z - 30, 20, _G.Lulzlib:ReturnColor(LulzMenu.Draw.E.CircleColor), true)
                end

                if LulzMenu.Draw.E.Lines then
                    if ValidTarget(Target) then
                        if self:IsOnEPath(Target,feather.object) then
                            DrawLine3D(feather.object.x, feather.object.y, feather.object.z, myHero.x, myHero.y, myHero.z, 1, _G.Lulzlib:ReturnColor(LulzMenu.Draw.E.HitCircleColor))
                        else
                            DrawLine3D(feather.object.x, feather.object.y, feather.object.z, myHero.x, myHero.y, myHero.z, 1, _G.Lulzlib:ReturnColor(LulzMenu.Draw.E.WontHitCircleColor))
                        end
                    end
                end
            end
        end
        if LulzMenu.Draw.R.Enabled and (_G.Lulzlib:IsRReady() or not LulzMenu.Draw.R.Hide) then
            _G.Lulzlib:RenderCircle("R")
        end

        if LulzMenu.Draw.DrawTarget then
            if Target ~= nil then
                DrawCircle3D(Target.x, Target.y, Target.z, 100, 1, ARGB(255,255,0,0), 100)
            end
        end
    end
end
function Xayah:IsOnEPath(Target, feather)
    local LineEnd = myHero + (Vector(feather) - myHero):normalized() * GetDistance(feather)
    local pointSegment, pointLine, isOnSegment = VectorPointProjectionOnLineSegment(Vector(myHero), LineEnd, Vector(Target))
    if isOnSegment and GetDistance(Target, pointSegment) <= 85*1.25 then
        return true
    end
    return false
end
function Xayah:CastQ(enemy)
    if _G.Lulzlib:IsQReady() then
        local CastPosition, HitChance, Info = Prediction:GetLineCastPosition(enemy, self.SpellTable.Q)
        if CastPosition and HitChance >= LulzMenu.Spell.QMenu.Accuracy then
            if Info ~= nil and Info.collision ~= nil and not Info.collision or Info == nil or Info.collision == nil then
                CastSpell(_Q, CastPosition.x, CastPosition.z)
            end
        end
    end
end
function Xayah:CastW(enemy)
    if GetDistanceSqr(enemy) < (myHero.range + myHero.boundingRadius) * (myHero.range + myHero.boundingRadius) then
        if LulzMenu.Spell.WMenu.RakanCheck then
            for i, ally in _G.Lulzlib.pairs(self.allyHeros) do
                if ally.charName == "Rakan" then
                    if GetDistanceSqr(ally) > self.SpellTable.W.range * self.SpellTable.W.range and GetDistanceSqr(ally) < self.SpellTable.W.range * self.SpellTable.W.range + LulzMenu.Spell.WMenu.Buffer then
                        return
                    end
                end
            end
        end
        CastSpell(_W)
    end
end
function Xayah:CastE(enemy)
    if _G.Lulzlib:IsEReady() then
        local featherHitCount = 0
        for i, feather in _G.Lulzlib.pairs(self.feathers) do
            if self:IsOnEPath(enemy,feather.object) then
                featherHitCount = featherHitCount + 1
            end
        end

        if featherHitCount >= LulzMenu.Spell.EMenu.Feathers then
            CastSpell(_E)
        end
    end
end
function Xayah:CastR(enemy)
    local CastPosition, HitChance, Info = Prediction:GetConeCastPosition(enemy, self.SpellTable.R)
    if CastPosition and HitChance >= LulzMenu.Spell.RMenu.Accuracy then
        CastSpell(_R, CastPosition.x, CastPosition.z)
    end
end
function Xayah:Combo()
    if Orbwalker:IsFighting() then
        if ValidTarget(Target) then
            if LulzMenu.Spell.QMenu.EnableCombo then
                if _G.Lulzlib:IsQReady() then
                    self:CastQ(Target)
                end
            end

            if LulzMenu.Spell.WMenu.EnableCombo then
                if _G.Lulzlib:IsWReady() then
                    self:CastW(Target)
                end
            end

            if LulzMenu.Spell.EMenu.EnableCombo then
                if _G.Lulzlib:IsEReady() then
                    self:CastE(Target)
                end
            end

            if LulzMenu.Spell.RMenu.EnableCombo then
                if _G.Lulzlib:IsRReady() then
                    self:CastR(Target)
                end
            end
        end
    end
end
function Xayah:Harass()
    if Orbwalker:IsHarassing() then
        if ValidTarget(Target) then
            if LulzMenu.Spell.QMenu.EnableCombo and LulzMenu.Spell.QMenu.HarassMana >= _G.Lulzlib:ManaPercent() then
                if _G.Lulzlib:IsQReady() then
                    self:CastQ(Target)
                end
            end

            if LulzMenu.Spell.WMenu.EnableCombo and LulzMenu.Spell.WMenu.HarassMana >= _G.Lulzlib:ManaPercent() then
                if _G.Lulzlib:IsWReady() then
                    self:CastW(Target)
                end
            end

            if LulzMenu.Spell.EMenu.EnableCombo and LulzMenu.Spell.EMenu.HarassMana >= _G.Lulzlib:ManaPercent() then
                if _G.Lulzlib:IsEReady() then
                    self:CastE(Target)
                end
            end

            if LulzMenu.Spell.RMenu.EnableCombo and LulzMenu.Spell.RMenu.HarassMana >= _G.Lulzlib:ManaPercent() then
                if _G.Lulzlib:IsRReady() then
                    self:CastR(Target)
                end
            end
        end
    end
end
function Xayah:LaneClear()
    if Orbwalker:IsLaneClearing() then
        if LulzMenu.Spell.QMenu.EnableJungle then
            self.jungleMinions:update()
            if _G.Lulzlib:IsQReady() then
                for i, jungle in _G.Lulzlib.pairs(self.jungleMinions.objects) do
                    if jungle ~= nil and ValidTarget(jungle) and GetDistance(jungle) < self.SpellTable.Q.range and string.split(jungle.charName,'_')[2] ~= "Plant" then
                        self:CastQ(jungle)
                    end
                end
            end
        end


        if LulzMenu.Spell.WMenu.EnableJungle then
            self.jungleMinions:update()
            if _G.Lulzlib:IsWReady() then
                for i, jungle in _G.Lulzlib.pairs(self.jungleMinions.objects) do
                    if jungle ~= nil and ValidTarget(jungle) and GetDistance(jungle) < self.SpellTable.Q.range and string.split(jungle.charName,'_')[2] ~= "Plant" then
                        self:CastW(jungle)
                    end
                end
            end
        end

        if LulzMenu.Spell.EMenu.EnableJungle then
            self.jungleMinions:update()

            if _G.Lulzlib:IsEReady() then
                for i, jungle in _G.Lulzlib.pairs(self.jungleMinions.objects) do
                    if jungle ~= nil and ValidTarget(jungle) and string.split(jungle.charName,'_')[2] ~= "Plant" then
                        self:CastE(jungle)
                    end
                end
            end
        end

        if LulzMenu.Spell.QMenu.EnableClear > 1 then
            self.enemyMinions:update()
            for i, minion in _G.Lulzlib.pairs(self.enemyMinions.objects) do
                if minion ~= nil and ValidTarget(minion) and GetDistance(minion) < self.SpellTable.Q.range then
                    if LulzMenu.Spell.QMenu.EnableClear == 3 and _G.Lulzlib:IsQReady() then
                        self:CastQ(minion)
                    else
                        if _G.Lulzlib:GetDamage(_Q, minion) > minion.health then
                            self:CastQ(minion)
                        end
                    end

                    if LulzMenu.Spell.WMenu.EnableClear == 3 and _G.Lulzlib:IsWReady() then
                        self:CastW(minion)
                    end

                    if LulzMenu.Spell.EMenu.EnableClear == 3 and _G.Lulzlib:IsRReady() then
                        self:CastE(minion)
                    else
                        if _G.Lulzlib:GetDamage(_E, minion) > minion.health then
                            self:CastE(minion)
                        end
                    end
                end
            end
        end
    end
end
function Xayah:KillSteal()
    for i, enemy in _G.Lulzlib.pairs(self.enemyHeros) do
        if enemy and ValidTarget(enemy) then
            if LulzMenu.Spell.EMenu.EnableKs then
                if GetDistance(enemy) > self.SpellTable.Q.range and GetDistance(enemy) < (self.SpellTable.Q.range + self.SpellTable.E.range) then
                    if enemy.health < (getDmg("Q", enemy, myHero)+((myHero.damage)*1.1)+(myHero.ap*0.4)) then
                        local p = myHero + (Vector(enemy.pos) - myHero):normalized() * 475
                        self:CastE(p.x,p.z)
                        DelayAction((function() self:CastQ(enemy) end), .3)

                    end
                end
            end

            if LulzMenu.Spell.QMenu.EnableKs then
                if _G.Lulzlib:GetDamage(_Q, enemy) > enemy.health and enemy.health < _G.Lulzlib:GetDamage(_W, enemy) then
                    self:CastQ(enemy)
                end
            end

            if LulzMenu.Spell.WMenu.EnableKs then
                if _G.Lulzlib:GetDamage(_Q, enemy) < enemy.health and enemy.health > _G.Lulzlib:GetDamage(_W, enemy) then
                    self:CastW(enemy)
                end
            end
        end
    end
end
function Xayah:FleeMode()
    if LulzMenu.Hotkeys.FleeKey then
        myHero:MoveTo(mousePos.x, mousePos.z)

        if LulzMenu.Spell.QMenu.EnableFlee then
            if ItemsAndSummoners:HasItem(3025) then
                self:CastQ(Target)
            end
        end
    end
end
function Xayah:TrackFeathers(object)
    if object and object.valid and object.networkID and object.networkID ~= 0 then
        if object.name:find("Xayah_Base_Passive_Dagger_Mark") then
            self.feathers[object.networkID] = {object = object.pos, endtime = _G.Lulzlib.clock() + 6.1}
        end
    end
end
function Xayah:TrackFeathersDelete(object)
    if object and object.valid and object.networkID and object.networkID ~= 0 then
        if object.name:find("Xayah_Base_Passive_Dagger_Mark") then
            self.feathers[object.networkID] = nil
        end
    end
end
function Xayah:UltimateJuke(unit,spell)
    local function IsOnPath(Target, spellEndPos, range)
        local LineEnd = Target + (Vector(spellEndPos) - Target):normalized() * range
        local pointSegment, pointLine, isOnSegment = VectorPointProjectionOnLineSegment(Vector(Target), LineEnd, Vector(myHero))
        if isOnSegment and GetDistance(myHero, pointSegment) <= 85*1.25 then
            return true
        end
        return false
    end
    if not LulzMenu.Spell.RMenu.EnableJuke then return end
    if unit.team ~= myHero.team then
        if self.jukeTable[unit.charName] then
            for i=1, #self.jukeTable[unit.charName] do
                if unit:GetSpellData(self.jukeTable[unit.charName][i].spell).name == spell.name then
                    if LulzMenu.Spell.RMenu[unit.charName..self.jukeTable[unit.charName][i].name] then
                        if self.jukeTable[unit.charName][i].type == 1 then
                            if GetDistanceSqr(unit) < self.jukeTable[unit.charName][i].range * self.jukeTable[unit.charName][i].range then
                                CastSpell(_R, unit.x, unit.z)
                            end
                        elseif self.jukeTable[unit.charName][i].type == 2 then
                            if IsOnPath(unit, spell.endPos, self.jukeTable[unit.charName][i].range) then
                                CastSpell(_R, unit.x, unit.z)
                            end
                        end
                    end
                end
            end
        end
    end
end

class "ItemsAndSummoners"
function ItemsAndSummoners:__init()
    local function GetSummonerSpellFromName(name)
    	if myHero:GetSpellData(SUMMONER_1).name:lower():find(name:lower()) then
    		return SUMMONER_1
    	elseif myHero:GetSpellData(SUMMONER_2).name:lower():find(name:lower()) then
    		return SUMMONER_2
    	end
    end

    self.itemsAndSpells = {
        ["Potions"] = {"RegenerationPotion","ItemCrystalFlask","ItemDarkCrystalFlask","ItemCrystalFlaskJungle","ItemMiniRegenPotion"},
        ["OffensiveItems"] = {
            {"BilgewaterCutlass", 550, true},
            {"ItemSwordOfFeastAndFamine", 550, true},
            {"HextechGunblade", 700, true},
            {"YoumusBlade", 600, false},
            {"ItemVeilChannel",700, false},
            {"ItemSoFBoltSpellBase", 550, true}
        },
        ["DefensiveItems"] = {"ZhonyasHourglass", "RanduinsOmen", "ArchAngelsDummySpell"},
        ["CleanseItems"] = {"ItemMercurial", "QuicksilverSash"},
        ["Wards"] = {"ItemGhostWard","TrinketOrbLvl3","TrinketTotemLvl1"},
        ["Cooldowns"] = {
            ["LastPotion"] = 0
        },
        ["SummonerSpells"] = {
            ["Ignite"] = GetSummonerSpellFromName("SummonerDot"),
            ["Exaughst"] = GetSummonerSpellFromName("SummonerExhaust"),
            ["Heal"] = GetSummonerSpellFromName("SummonerHeal"),
            ["Ghost"] = GetSummonerSpellFromName("SummonerHaste"),
            ["Cleanse"] = GetSummonerSpellFromName("SummonerBoost"),
            ["Flash"] = GetSummonerSpellFromName("SummonerFlash"),
            ["Barrier"] = GetSummonerSpellFromName("SummonerBarrier"),
            ["Smite"] = GetSummonerSpellFromName("SummonerSmite")
        }
    }
    ItemsAndSummoners.enemyHeroes = GetEnemyHeroes()
    self.allyHeroes = GetAllyHeroes()
    self.lastTAttack = 0
    self.tDamage = 1
    self.lastRemove = 0
    self.firstBuy = true
    self.enemies = {}
	self.tick = 0
    self.killCount = myHero.kills
    self.trueItemSlot = nil

    self.jungleMinions = minionManager(MINION_JUNGLE, 625, myHero, MINION_SORT_MINHEALTH_DEC)
    for _, k in _G.Lulzlib.pairs(GetEnemyHeroes()) do
		self.enemies[k.networkID] = {k.visible, Vector(k), _G.Lulzlib.clock() + 1, Vector(k.path:Path(2))}
	end

    LulzMenu.Spell:addSubMenu("Summoner Spells Menu", "SummonerSpellsMenu")
    LulzMenu.Spell:addSubMenu("Masteries Menu", "MasteriesMenu")
        LulzMenu.Spell.MasteriesMenu:addParam("FerocityMasteries", "Ferocity Masteries", SCRIPT_PARAM_LIST, 1,{"None","Bounty Hunter","Double Edged Sword","Battle Trance"})
        LulzMenu.Spell.MasteriesMenu:addParam("Merciless", "Merciless", 1, false)
        LulzMenu.Spell.MasteriesMenu:addParam("Savagry", "Savagry", SCRIPT_PARAM_SLICE, 0, 0, 5, 0)

    AddLoadCallback(function() self:PrepSummonerSpells() end)

    AddTickCallback(function() self:OnTick() end)
    AddDrawCallback(function() self:AutoSmiteDraw() end)
    AddCastSpellCallback(function(iSpell, vStart, vEnd, target) self:FlashProtection(iSpell, vStart, vEnd, target) end)
    AddProcessAttackCallback(function(unit, spell) self:ProtectFromTower(unit, spell) end)
    AddProcessSpellCallback(function(unit, spell) self:SpellProtection(unit, spell) end)
	AddApplyBuffCallback(function(source, unit, buff) self:CleanseCC(source, unit, buff) end)
end
function ItemsAndSummoners:PrepSummonerSpells()
    if self.itemsAndSpells.SummonerSpells.Ignite then
        LulzMenu.Spell.SummonerSpellsMenu:addParam("SmartIgnite", "Use smart ignite", SCRIPT_PARAM_LIST, 2, {"Never", "Optimal", "Aggressive"})
    end
    if self.itemsAndSpells.SummonerSpells.Exaughst then
        LulzMenu.Spell.SummonerSpellsMenu:addParam("Exaughst", "Use exaughst", SCRIPT_PARAM_LIST, 4, {"Never", "High AP", "High AD", "Target"})
    end
    if self.itemsAndSpells.SummonerSpells.Heal then
        LulzMenu.Spell.SummonerSpellsMenu:addParam("Heal", "Use heal", 1, true)
        LulzMenu.Spell.SummonerSpellsMenu:addParam("HealAlly", "Use heal on ally", 1, true)
        LulzMenu.Spell.SummonerSpellsMenu:addParam("HealToChase", "Use heal to secure kill", 1, true)
        LulzMenu.Spell.SummonerSpellsMenu:addParam("HealthPercent", "If my health % is <", SCRIPT_PARAM_SLICE, 10, 0, 100, 0)
    end
    if self.itemsAndSpells.SummonerSpells.Ghost then
        LulzMenu.Spell.SummonerSpellsMenu:addParam("Ghost", "Use ghost to chase", SCRIPT_PARAM_LIST, 2, {"Never", "Optimal", "Aggressive"})
    end
    if self.itemsAndSpells.SummonerSpells.Flash then
        LulzMenu.Spell.SummonerSpellsMenu:addParam("Flash", "Block flash fails", 1, false)
    end
    if self.itemsAndSpells.SummonerSpells.Barrier then
        LulzMenu.Spell.SummonerSpellsMenu:addParam("Barrier", "Use barrier", 1, true)
        LulzMenu.Spell.SummonerSpellsMenu:addParam("HealthPercent", "If my health % is <", SCRIPT_PARAM_SLICE, 10, 0, 100, 0)
    end
    if self.itemsAndSpells.SummonerSpells.Cleanse then
        LulzMenu.Items.CleanseSettings:addParam("Cleanse", "Use Cleanse Summoner", SCRIPT_PARAM_ONOFF, true)
    end
    if self.itemsAndSpells.SummonerSpells.Smite then
        LulzMenu.Spell.SummonerSpellsMenu:addParam("Smite", "Use smite", SCRIPT_PARAM_ONOFF, true)
		LulzMenu.Spell.SummonerSpellsMenu:addParam("DrawSmite", "Draw smite range", SCRIPT_PARAM_ONOFF, true)
        LulzMenu.Spell.SummonerSpellsMenu:addParam("Dragon", "Use Smite on: Dragon", SCRIPT_PARAM_ONOFF, true)
		LulzMenu.Spell.SummonerSpellsMenu:addParam("Baron", "Use Smite on: Baron", SCRIPT_PARAM_ONOFF, true)
        LulzMenu.Spell.SummonerSpellsMenu:addParam("Red", "Use Smite on: Red Buff", SCRIPT_PARAM_ONOFF, true)
		LulzMenu.Spell.SummonerSpellsMenu:addParam("Blue", "Use Smite on: Blue Buff", SCRIPT_PARAM_ONOFF, true)
        LulzMenu.Spell.SummonerSpellsMenu:addParam("Crab", "Use Smite on: Rift Scuttler", SCRIPT_PARAM_ONOFF, false)
		LulzMenu.Spell.SummonerSpellsMenu:addParam("Razorbeak", "Use Smite on: Wraith", SCRIPT_PARAM_ONOFF, false)
		LulzMenu.Spell.SummonerSpellsMenu:addParam("Murkwolf", "Use Smite on: Wolf", SCRIPT_PARAM_ONOFF, false)
		LulzMenu.Spell.SummonerSpellsMenu:addParam("Krug", "Use Smite on: Krug", SCRIPT_PARAM_ONOFF, false)
		LulzMenu.Spell.SummonerSpellsMenu:addParam("Gromp", "Use Smite on: Gromp", SCRIPT_PARAM_ONOFF, false)
    end
end
function ItemsAndSummoners:OnTick()
    if not myHero.dead then
        self:UsePotion()
        self:HealToChase()
        self:AutoIgnite()
        self:UseItems()
        self:AutoLeveler()
        self:AutoBuy()
        self:AutoHeal()
        self:SightWard(self.enemies, self.tick)
        self:AutoSmite()
        self:TauntOnKill()
    end
end
function ItemsAndSummoners:HasItem(id)
  local itemSlot = GetInventorySlotItem(id)
  if itemSlot ~= nil then
    return true
  else
    return false
  end
end
function ItemsAndSummoners:GetSlotItemFromName(itemname)
	for i = 6, 12 do
		local item = myHero:GetSpellData(i).name
		if item and item:lower():find(itemname:lower()) and myHero:CanUseSpell(i) == READY then
			return i
		end
	end
	return nil
end
function ItemsAndSummoners:isFleeingFromMe(target, range)
    fpos = Prediction:GetPredictedPosistion(target, 0.26)
	if fpos and GetDistanceSqr(fpos) > range*range then
		return true
	end
	return false
end
function ItemsAndSummoners:FlashProtection(iSpell, vStart, vEnd, target)
    if self.itemsAndSpells.SummonerSpells.Flash and LulzMenu.Spell.SummonerSpellsMenu.Flash then
        if myHero:CanUseSpell(self.itemsAndSpells.SummonerSpells.Flash) == READY then
            local correctedMouse1 = myHero + (Vector(mousePos) - myHero):normalized() * (GetDistance(myHero, mousePos) + 30)
            local correctedMouse2 = myHero + (Vector(mousePos) - myHero):normalized() * 480
            local correctedMouseD3d = D3DXVECTOR3(correctedMouse2.x,correctedMouse2.y,correctedMouse2.z)
            local correctedMouseD3d2 = D3DXVECTOR3(correctedMouse1.x,correctedMouse1.y,correctedMouse1.z)
            if GetDistance(myHero, mousePos) > 450 then
                if IsWall(correctedMouseD3d) then
                    if iSpell == self.itemsAndSpells.SummonerSpells.Flash then
                		BlockSpell()
                	end
                end
            else
                if IsWall(correctedMouseD3d2) then
                    if iSpell == self.itemsAndSpells.SummonerSpells.Flash then
                		BlockSpell()
                	end
                end
            end
        end
    end
end
function ItemsAndSummoners:UsePotion()
    if not myHero.dead then
        if LulzMenu.Items.AutoPotion == 2 and Orbwalker:IsFighting() or LulzMenu.Items.AutoPotion == 3 then
        	if _G.Lulzlib.clock() - self.itemsAndSpells.Cooldowns.LastPotion < 8 then return end
            if LulzMenu.Items.HealthPercent >= (myHero.health / myHero.maxHealth * 100) then
                for i = 1, 5 do
                    if self:GetSlotItemFromName(self.itemsAndSpells.Potions[i]) ~= nil then
                        CastSpell(self:GetSlotItemFromName(self.itemsAndSpells.Potions[i]))
                		self.itemsAndSpells.Cooldowns.LastPotion= _G.Lulzlib.clock()
                    end
                end
            end
        end
    end
end
function ItemsAndSummoners:AutoIgnite()
    if self.itemsAndSpells.SummonerSpells.Ignite and LulzMenu.Spell.SummonerSpellsMenu.SmartIgnite > 1 then
        if myHero:CanUseSpell(self.itemsAndSpells.SummonerSpells.Ignite) == READY then
        	local IgniteDmg = 50 + (20 * myHero.level)
        	local aggro = LulzMenu.Spell.SummonerSpellsMenu.SmartIgnite == 3 and 0.05 or 0
        	for i, enemy in _G.Lulzlib.pairs(self.enemyHeroes) do
        		if ValidTarget(enemy, 600) then
        			local spellDamage = 0
        			local adDamage = myHero:CalcDamage(enemy, myHero.totalDamage)
        			spellDamage = spellDamage + adDamage
        			if myHero.health < myHero.maxHealth*(0.35+aggro) and enemy.health < enemy.maxHealth*(0.34+aggro)  and GetDistanceSqr(enemy) < 420 * 420 then
        				CastSpell(self.itemsAndSpells.SummonerSpells.Ignite, enemy)
        			end
        			local r = myHero.range+65
        			local trange = r < 575 and r or 575
        			if self:isFleeingFromMe(enemy, trange) then
        				if enemy.health < IgniteDmg + spellDamage  + 10 then
        					if myHero.ms < enemy.ms then
        						CastSpell(self.itemsAndSpells.SummonerSpells.Ignite, enemy)
        					end
        				end
        			end
        			if (GetDistanceSqr(enemy) > 160000 and (myHero.health+myHero.shield) < myHero.maxHealth*0.3) then
        				if enemy.health > spellDamage-(500*aggro) and enemy.health < IgniteDmg + spellDamage-(500*aggro)  then
        					CastSpell(self.itemsAndSpells.SummonerSpells.Ignite, enemy)
        				end
        			end
        		end
        	end
        end
    end
end
function ItemsAndSummoners:ProtectFromTower(unit, spell)
	if not unit or not unit.valid or not spell then return end
	if spell.target and spell.target.type == myHero.type and spell.target.team == myHero.team and (spell.name:lower():find("_turret_chaos") or spell.name:lower():find("_turret_order")) and not (spell.name:lower():find("4") or spell.name:lower():find("3")) then
		if GetDistance(unit) < 2000 then
			if _G.Lulzlib.clock() - self.lastTAttack < 1.75 then
				if self.tDamage < 1.75 then
					self.tDamage = self.tDamage + 0.375
				else
					self.tDamage = self.tDamage + 0.250
					self.tDamage = self.tDamage > 2.25 and 2.25 or self.tDamage
				end
			else
				self.tDamage = 1
			end
			self.lastTAttack = _G.Lulzlib.clock()
            if self.itemsAndSpells.SummonerSpells.Heal then
                if (myHero:CanUseSpell(self.itemsAndSpells.SummonerSpells.Heal) == 0) and spell.target.isMe then
    				local realDamage = unit.totalDamage / (((myHero.armor * 0.7) / 100) + 1)

    				if Prediction:GetPredictedHealth(myHero, 0.5) + myHero.shield <= realDamage * self.tDamage then
    					DelayAction(function()
    						CastSpell(self.itemsAndSpells.SummonerSpells.Heal)
                            _G.Lulzlib:Log("Saving you from tower")
    					end, 0.5)
    				end
    			end
            end

            if self.itemsAndSpells.SummonerSpells.Barrier then
                if (myHero:CanUseSpell(self.itemsAndSpells.SummonerSpells.Barrier) == 0) and spell.target.isMe then
    				local realDamage = unit.totalDamage / (((myHero.armor * 0.7) / 100) + 1)

    				if Prediction:GetPredictedHealth(myHero, 0.5) + myHero.shield <= realDamage * self.tDamage then
    					DelayAction(function()
    						CastSpell(self.itemsAndSpells.SummonerSpells.Barrier)
                            _G.Lulzlib:Log("Saving you from tower")
    					end, 0.5)
    				end
    			end
            end

		end
	end
end
function ItemsAndSummoners:HealToChase()
    local function CalcDist(enemy)
    	local ourMS, targetMS = ((myHero.ms*1.30)),Target.ms
    	local msDiff = ourMS - targetMS
    	local adDamage = myHero:CalcDamage(Target, myHero.totalDamage)

    	if (GetDistance(enemy) - msDiff) < (myHero.range + myHero.boundingRadius) and (GetDistance(enemy) - msDiff) > (myHero.range + myHero.boundingRadius) - 20 and adDamage > enemy.health and msDiff > 0 then
    		return true
    	else
    		return false
    	end
    end

	if self.itemsAndSpells.SummonerSpells.Heal and LulzMenu.Spell.SummonerSpellsMenu.HealToChase then
        if myHero:CanUseSpell(self.itemsAndSpells.SummonerSpells.Heal) == READY then
    		if ValidTarget(Target) and LulzMenu.Spell.SummonerSpellsMenu.HealToChase then
    			local ourMS, targetMS = myHero.ms,Target.ms
    			local adDamage = myHero:CalcDamage(Target, myHero.totalDamage)

    			if Orbwalker:IsFighting() then
    				local r = myHero.range+65
    				local trange = r < 575 and r or 575
    				if self:isFleeingFromMe(Target, trange) and CalcDist(Target) then
    					if not EREADY then
    						CastSpell(self.itemsAndSpells.SummonerSpells.Heal)
    					else
    						CastSpell(_E, Target.x, Target.z)
    					end
    				elseif EREADY and adDamage*2 > Target.health and GetDistance(Target) < (myHero.range + myHero.boundingRadius) + 475 then
    					CastSpell(_E, Target.x, Target.z)
    				end
    			end
    		end
        end
	end
end
function ItemsAndSummoners:AutoHeal()
	if self.itemsAndSpells.SummonerSpells.Heal and LulzMenu.Spell.SummonerSpellsMenu.Heal then
        if myHero:CanUseSpell(self.itemsAndSpells.SummonerSpells.Heal) == READY then
    		if myHero.health / myHero.maxHealth * 100 <= LulzMenu.Spell.SummonerSpellsMenu.HealthPercent then
                CastSpell(self.itemsAndSpells.SummonerSpells.Heal)
            end

            if LulzMenu.Spell.SummonerSpellsMenu.HealAlly then
                for i,ally in _G.Lulzlib.pairs(self.allyHeroes) do
                    if GetDistance(ally) <= 850 then
                        if ally.health / ally.maxHealth * 100 <= LulzMenu.Spell.SummonerSpellsMenu.HealthPercent then
                            CastSpell(self.itemsAndSpells.SummonerSpells.Heal)
                        end
                    end
                end
            end
        end
	end
end
function ItemsAndSummoners:UseItems()
	if not ValidTarget(Target) and Target ~= myHero then return end
	for i=1,5 do
        self.itemSlot = self:GetSlotItemFromName(self.itemsAndSpells.OffensiveItems[i][1])
        if self.itemSlot ~= nil then
            if GetDistance(myHero, Target) <= self.itemsAndSpells.OffensiveItems[i][2] then
                if self.itemsAndSpells.OffensiveItems[i][3] == true then
                    CastSpell(self.itemSlot, Target)
                else
                    CastItem(self.itemSlot)
                end
            end
        end
	end
end
function ItemsAndSummoners:SpellProtection(unit, spell)
    local function CastZhonya()
    	if not myHero.dead and not TargetHaveBuff("kindredrnodeathbuff") and not TargetHaveBuff("judicatorinter") then
    		local item = GetSlotItemFromName("ZhonyasHourglass")
    		if item then
    			CastSpell(item)
    			return true
    		end
    	end
    end

    if not unit or not unit.valid or not spell then return end
	if heal and LulzMenu.Spell.SummonerSpellsMenu.Heal and myHero:CanUseSpell(self.itemsAndSpells.SummonerSpells.Heal) == 0 and spell.target and spell.target.isMe and unit.team ~= myHero.team and unit.type == myHero.type then
		if myHero.health/myHero.maxHealth <= (LulzMenu.Spell.SummonerSpellsMenu.HealthPercent/100)*1.5 then
			CastSpell(self.itemsAndSpells.SummonerSpells.Heal)
		end
	end
	if spell.name:lower():find("zedr") and spell.target == myHero then
        if LulzMenu.Items.DefensiveItems.Enable then
    		DelayAction(function()
    		    CastZhonya()
    		end, .6)
        end
	end
end
function ItemsAndSummoners:CleanseCC(source, unit, buff)
    local function UseItemsCC()
    	if _G.Lulzlib.clock() - self.lastRemove < 1 then return end
        for i=1,2 do
            self.cleanseSlot = self:GetSlotItemFromName(self.itemsAndSpells.CleanseItems[i])
            if self.cleanseSlot ~= nil then
                DelayAction(function()
                    CastSpell(self.cleanseSlot,myHero)
                end, LulzMenu.Items.CleanseSettings.Delay/1000)
                self.lastRemove = _G.Lulzlib.clock()
            end
    	end


    	-- if MainMenu.cc.Summoner and SummonerSlot and myHero:CanUseSpell(SummonerSlot) == 0 then
    	-- 	DelayAction(function()
    	-- 		CastSpell(SummonerSlot)
    	-- 	end, MainMenu.cc.delay/1000)
    	-- 	lastRemove = _G.Lulzlib.clock()
    	-- end
    end
    local function CountEnemiesNearUnitReg(unit, range)
    	local count = 0
    	for i, enemy in _G.Lulzlib.pairs(ItemsAndSummoners.enemyHeroes) do
    		if enemy and enemy.valid and not enemy.dead and enemy.visible then
    			if  GetDistanceSqr(unit, enemy) < range * range  then
    				count = count + 1
    			end
    		end
    	end
    	return count
    end

    if not buff or not source or not source.valid or not unit or not unit.valid then return end
	if unit.isMe and (LulzMenu.Items.CleanseSettings.Enable == 3 or (LulzMenu.Items.CleanseSettings.Enable == 2 and Orbwalker:IsFighting())) then
        if (source.charName == "Rammus" and buff.type ~= 8) or source.charName == "Alistar" or source.charName:lower():find("baron") or source.charName:lower():find("spiderboss") or source.charName == "LeeSin" or (source.charName == "Hecarim" and not buff.name:lower():find("fleeslow")) then return end
		if buff.name and ((not cleanse and buff.type == 24) or buff.type == 5 or buff.type == 11 or buff.type == 22 or buff.type == 21 or buff.type == 8) or (buff.type == 25 and LulzMenu.Items.CleanseSettings.Blind)
		or (buff.type == 10 and buff.name and buff.name:lower():find("fleeslow")) then
		--or (LulzMenu.Items.CleanseSettings.Exhaust and buff.name and buff.name:lower():find("summonerexhaust")) then
			if buff.name and buff.name:lower():find("caitlynyor") and CountEnemiesNearUnitReg(myHero, 700) == 0   then
				return false
			elseif not source.charName:lower():find("blitzcrank") then
				UseItemsCC()
			end
		end
	end
end
function ItemsAndSummoners:AutoLeveler()
	if LulzMenu.General.Level.Enable then
	if LulzMenu.General.Level.Ignore and myHero.level <= 3 then return end
		self.abilitySequence = {
            {1,3,1,2,1,4,1,3,1,3,4,3,3,2,2,4,2,2},
            {1,2,3,1,1,4,1,2,1,2,4,2,2,3,3,4,3,3},
            {2,1,3,2,2,4,2,1,2,1,4,1,1,3,3,4,3,3},
            {2,3,1,2,2,4,2,3,2,3,4,3,3,1,1,4,1,1},
            {3,1,3,2,3,4,3,1,3,1,4,1,1,2,2,4,2,2},
            {3,2,3,1,3,4,3,2,3,2,4,2,2,1,1,4,1,1},
        }
        autoLevelSetSequence(self.abilitySequence[LulzMenu.General.Level.Sequence])
	end
end
function ItemsAndSummoners:AutoBuy()
    if LulzMenu.General.Buy.StartingItems then
		if myHero.level <= 1 and self.firstBuy and InFountain() then
			BuyItem(1055)
            BuyItem(2003)
            BuyItem(3340)
			self.firstBuy = false
		end
	end

	if LulzMenu.General.Buy.TrinketSwitch > 1 then
		if myHero.level >= 9 and InFountain() and myHero:GetSpellData(ITEM_7).name ~= "TrinketOrbLvl3" and LulzMenu.General.Buy.TrinketSwitch == 2 then
			BuyItem(3363)
		end

        if myHero.level >= 9 and InFountain() and myHero:GetSpellData(ITEM_7).name ~= "TrinketSweeperLvl3" and LulzMenu.General.Buy.TrinketSwitch == 3 then
			BuyItem(3364)
		end
	end
end
function ItemsAndSummoners:CastWard(wardPos)
    for i=1, #self.itemsAndSpells.Wards do
        self.itemSlot = self:GetSlotItemFromName(self.itemsAndSpells.Wards[i])
        if self.itemSlot ~= nil then
            self.trueItemSlot = self.itemSlot
            if self.trueItemSlot and myHero:CanUseSpell(self.itemSlot) == READY then
                DelayAction(function()
                    CastSpell(self.trueItemSlot, wardPos.x, wardPos.z)
                end, LulzMenu.Items.Warding.Delay/1000)
                break
            end
        end
    end
end
function ItemsAndSummoners:SightWard(enemies, tick)
    if LulzMenu.Items.Warding.Enable == 3 or LulzMenu.Items.Warding.Enable == 2 and Orbwalker:IsFighting() then
		tick = _G.Lulzlib.clock()+0.125
		for _, k in _G.Lulzlib.pairs(GetEnemyHeroes()) do
			if enemies[k.networkID][1] and not k.visible and not k.dead and enemies[k.networkID][3] >= _G.Lulzlib.clock() and GetDistance(k) < ( myHero.range + myHero.boundingRadius+50) then
				local pos = enemies[k.networkID][2]
				local dir = (enemies[k.networkID][4] - enemies[k.networkID][2]):normalized()
				for _=150, 600 do
					local ppos = pos + dir * _
					if IsWallOfGrass(D3DXVECTOR3(ppos.x,ppos.y,ppos.z)) then
						self:CastWard(ppos)
						enemies[k.networkID][3] = 0
                        return
					end
				end
			else
				if k.visible and not k.dead then
					enemies[k.networkID] = {k.visible, Vector(k), _G.Lulzlib.clock() + 1, Vector(k.path:Path(2))}
				end
			end
		end
	end
end
function ItemsAndSummoners:AutoSmite()
    if self.itemsAndSpells.SummonerSpells.Smite then
        if LulzMenu.Spell.SummonerSpellsMenu.Smite then
            self.jungleMinions:update()

            if myHero:CanUseSpell(self.itemsAndSpells.SummonerSpells.Smite) == READY then
        		for i, jungle in _G.Lulzlib.pairs(self.jungleMinions.objects) do
        			if jungle ~= nil then
                        if _G.Lulzlib.max(20 * myHero.level + 370, 30 * myHero.level + 330, 40 * myHero.level + 240, 50 * myHero.level + 100) >= jungle.health then
                            if LulzMenu.Spell.SummonerSpellsMenu[string.split(jungle.charName,'_')[2]] then
                                CastSpell(self.itemsAndSpells.SummonerSpells.Smite, jungle)
                            end
                        end
        			end
        		end
            end
        end
	end
end
function ItemsAndSummoners:AutoSmiteDraw()
    if self.itemsAndSpells.SummonerSpells.Smite then
        if LulzMenu.Spell.SummonerSpellsMenu.Smite and LulzMenu.Spell.SummonerSpellsMenu.DrawSmite then
            if myHero:CanUseSpell(self.itemsAndSpells.SummonerSpells.Smite) == READY then
                for i, jungle in _G.Lulzlib.pairs(self.jungleMinions.objects) do
                    if jungle ~= nil then
                        if LulzMenu.Spell.SummonerSpellsMenu[string.split(jungle.charName,'_')[2]] then
                            DrawText3D("Smite Damage " .. _G.Lulzlib.floor(_G.Lulzlib.max(20 * myHero.level + 370, 30 * myHero.level + 330, 40 * myHero.level + 240, 50 * myHero.level + 100)/jungle.health*100) .. "%", jungle.x, jungle.y, jungle.z, 20, ARGB(255,255,0,0), true)
                        end
                    end
                end
            end
        end
    end
end
function ItemsAndSummoners:TauntOnKill()
	if myHero.kills > self.killCount then
		DoEmote(LulzMenu.Taunt - 2)

		self.killCount = myHero.kills
	end
end

class "AntiBaseUlt"
function AntiBaseUlt:__init()
    self.lower, self.clock, self.recallingTime = string.lower, _G.Lulzlib.clock(), 0
    self.spellData = {
		['Ashe'] = {
			MissileName = "EnchantedCrystalArrow",
			Speed = 1600
		},
		['Draven'] = {
			MissileName = "DravenR",
			Speed = 2000
		},
		['Ezreal'] = {
			MissileName = "EzrealTrueshotBarrage",
			Speed = 2000
		},
		['Jinx'] = {
			MissileName = "JinxR",
			Speed = 1700
		}
	}

    LulzMenu.General:addSubMenu("Anti BaseUlt", "BaseUlt")
        LulzMenu.General.BaseUlt:addParam("Enabled", "Enable Anti BaseUlt", 1, true)

    for _, Hero in _G.Lulzlib.pairs(GetEnemyHeroes()) do
		if self.spellData[Hero.charName] ~= nil then
			LulzMenu.General.BaseUlt:addParam(Hero.charName, Hero.charName .. " - " .. self.spellData[Hero.charName].MissileName, SCRIPT_PARAM_ONOFF, true)
		end
	end
    if next(LulzMenu.General.BaseUlt._param) == nil then
	    LulzMenu.General.BaseUlt:addParam("Info", "No champions supported!", SCRIPT_PARAM_INFO, "")
    else
        AddProcessSpellCallback(function(unit, spell) self:OnProcessSpell(unit, spell) end)
        AddCreateObjCallback(function(object) self:OnCreateObj(object) end)
	end
end
function AntiBaseUlt:OnProcessSpell(unit, spell)
	if not LulzMenu.General.BaseUlt.Enabled then return end

	if unit == myHero and string.find(spell.name, "recall") then
		self.recallSpells = {
			['recall'] = 8.0,
			['recallimproved'] = 7.0,
			['odinrecall'] = 4.5,
			['odinrecallimproved'] = 4.0,
			['superrecall'] = 4.0,
			['superrecallimproved'] = 4.0
		}

		self.recallingTime = _G.Lulzlib.clock() + self.recallSpells[string.lower(spell.name)]
	end
end
function AntiBaseUlt:OnCreateObj(object)
    if not LulzMenu.General.BaseUlt.Enabled then return end

	if not object or not object.valid or object.type ~= "MissileClient" or not object.spellOwner or not object.spellOwner.valid
    or self.recallingTime < _G.Lulzlib.clock() or object.spellOwner.type ~= myHero.type or object.spellOwner.team == myHero.team
    or self.spellData[object.spellOwner.charName] == nil or not LulzMenu.General.BaseUlt[object.spellOwner.charName]
    or self.spellData[object.spellOwner.charName].MissileName ~= object.spellName then return end

    self.time = _G.Lulzlib.clock() + (GetDistance(object.pos, GetFountain()) / self.spellData[object.spellOwner.charName].Speed)
    if not self:IsLineCircleIntersection(GetFountain(), 500, object.pos, object.spellEnd) or 1 + self.recallingTime < self.time or self.recallingTime - 1 > self.time then
		return
	end

	myHero:MoveTo(1 + myHero.x, 1 + myHero.z)
	_G.Lulzlib:Log("Saving you from " .. object.spellOwner.charName .. " BaseUlt")
end
function AntiBaseUlt:IsLineCircleIntersection(circle, radius, v1, v2)
    local ToLineEnd = v2 - v1
	local ToCircle = circle - v1
	local Theta = (ToCircle.x * ToLineEnd.x + ToCircle.y * ToLineEnd.y) / (ToLineEnd.x * ToLineEnd.x + ToLineEnd.y * ToLineEnd.y)
	Theta = Theta <= 0 and 0 or 1

	local Closest = v1 + D3DXVECTOR3(ToLineEnd.x * Theta, ToLineEnd.y * Theta, ToLineEnd.z * Theta)
	local D = circle - Closest
	local Dist = (D.x * D.x) + (D.y * D.y)
	return Dist <= radius * radius
end

class "ThreshLantern"
function ThreshLantern:__init()
    self.lantern = nil

    AddTickCallback(function() self:OnTick() end)
    AddCreateObjCallback(function(a) self:OnCreateObj(a) end)
    AddDeleteObjCallback(function(a) self:OnDeleteObj(a) end)
end
function ThreshLantern:OnTick()
    if self.lantern ~= nil and LulzMenu.Hotkeys.FleeKey then
        if GetDistanceSqr(self.lantern) < 90000 then
            self.lantern:Interact()
        end
    end
end
function ThreshLantern:OnCreateObj(obj)
    if obj.name == "ThreshLantern" then
        self.lantern = obj
    end
end
function ThreshLantern:OnDeleteObj(obj)
    if obj.name == "ThreshLantern" then
        self.lantern = nil
    end
end

class "CTargetSelector"
function CTargetSelector:__init()
    CTargetSelector.targetSelector = TargetSelector(TARGET_LESS_CAST_PRIORITY, 1170, TEAM_ENEMY)
    CTargetSelector.enemyHeros = GetEnemyHeroes()
    focus = nil
    CTargetSelector.championTable = {
        [5] = {"Alistar", "Braum", "DrMundo", "Galio", "Garen", "Leona", "Nautilus", "Shen", "Singed", "Sion", "Poppy", "Rammus", "Skarner", "Tahm Kench", "Taric", "Thresh", "Zac"},
        [4] = {"Aatrox", "Amumu", "Blitzcrank", "Darius", "Gnar", "Gragas", "Illaoi", "Ivern", "Janna", "Kled", "Malphite", "Maokai", "Nami", "Nasus", "Nunu", "Olaf", "Sejuani", "Shyvana", "RekSai", "Renekton", "Swain", "Trundle", "Udyr", "Urgot", "Volibear", "Yorick"},
        [3] = {"Akali", "Anivia", "Bard", "ChoGath", "Ekko", "Elise", "Fiora", "Gangplank", "Hecarim", "Heimerdinger", "Irelia", "JarvanIV", "Jax", "Jayce", "Kassadin", "Kayle", "Lee Sin", "Lissandra", "Lulu", "Mordekaiser", "Morgana", "Nidalee", "Pantheon", "Sona", "Taliyah", "Tryndamere", "Vi", "Vladimir", "Warwick", "Wukong", "XinZhao", "Zilean", "Zyra"},
        [2] = {"Ahri", "Annie", "Aurelion Sol", "Azir", "Camille", "Cassiopeia", "Corki", "Diana", "Evelynn", "Fiddlesticks", "Fizz", "Graves", "Karma", "Karthus", "Katarina", "Kennen", "Kindred", "LeBlanc", "Lux", "Malzahar", "Nocturne", "Orianna", "Ryze", "Shaco", "Riven", "Rengar", "Syndra", "Soraka", "Talon", "Twisted Fate", "Veigar", "VelKoz","Viktor", "Xerath", "Zed", "Ziggs"},
        [1] = {"Ashe", "Brand", "Caitlyn", "Draven", "Ezreal", "Jhin", "Jinx", "Kalista", "KhaZix", "KogMaw", "Lucian", "Master Yi", "Miss Fortune", "Quinn", "Sivir", "Teemo", "Tristana", "Twitch", "Varus", "Vayne", "Yasuo"},
    }
    CTargetSelector.sendOnce = true

    LulzMenu:addSubMenu("Target Selection Menu", "Targeting")
    LulzMenu.Targeting:addParam("Focus", "Left click to focus", SCRIPT_PARAM_LIST, 2, {"Never","For 1 Minute", "Until Removed"})
    LulzMenu.Targeting:addParam("FocusIgnore", "Focus ignore range", SCRIPT_PARAM_SLICE, 1500, 0, 3000, 0)
    LulzMenu.Targeting:addParam("TargetingInfo2", "", SCRIPT_PARAM_INFO, "")
    LulzMenu.Targeting:addParam("Method", "Target selection method", SCRIPT_PARAM_LIST, 8,{"Low HP", "Most AP", "Most AD", "Less Cast", "Near Mouse", "Priority", "Low HP Priority", "Less Cast Priority"})
    LulzMenu.Targeting:addParam("OrbWalker", "Prefer orbwalker targeting", 1, true)
    LulzMenu.Targeting:addParam("TargetingInfo3", "", SCRIPT_PARAM_INFO, "")

    for i=1, #CTargetSelector.enemyHeros do
        for j = 1, 5 do
            for k = 1, #CTargetSelector.championTable[j] do
                if string.lower(CTargetSelector.championTable[j][k]) == string.lower(CTargetSelector.enemyHeros[i].charName) then
                    LulzMenu.Targeting:addParam(CTargetSelector.enemyHeros[i].charName, CTargetSelector.enemyHeros[i].charName, SCRIPT_PARAM_SLICE, i, 1, 5, 0)
                    break
                end
            end
        end

        if not LulzMenu.Targeting[CTargetSelector.enemyHeros[i].charName] then
            LulzMenu.Targeting:addParam(enemy.charName, enemy.charName, SCRIPT_PARAM_SLICE, 1, 1, 5, 0)
        end
    end

    LulzMenu.Targeting:addParam("TargetingInfo", "5 = Low Priority, 1 = Max Priority(You will focus first)", SCRIPT_PARAM_INFO, "")

    AddMsgCallback(function(msg,key) self:OnWndMsg(msg, key) end)
end
function CTargetSelector:GetTarget()
    if ValidTarget(focus) and GetDistanceSqr(focus) > LulzMenu.Targeting.FocusIgnore * LulzMenu.Targeting.FocusIgnore then
        return focus
    end
    local orbTarget = Orbwalker:GetOrbwalkerTarget()
    if LulzMenu.Targeting.OrbWalker and ValidTarget(orbTarget) then
        return orbTarget
    else
        CTargetSelector.targetSelector.mode = LulzMenu.Targeting.Method
        local priority = {}
        for i=1, #self.enemyHeros do
            _G.Lulzlib.insert(priority, LulzMenu.Targeting[#self.enemyHeros[i].charName])
        end
        table.sort(priority, function(a,b) return a < b end)

        for i=1, #self.enemyHeros do
            TS_SetHeroPriority(i, self.enemyHeros[i])
        end

        CTargetSelector.targetSelector:update()
        local tsTarget = CTargetSelector.targetSelector.target

        if ValidTarget(tsTarget) then
            return tsTarget
        else
            return nil
        end
    end
end
function CTargetSelector:ClosestEnemy(pos)
	if pos == nil then return _G.Lulzlib.huge, nil end
	local closestEnemy, distanceEnemy = nil, _G.Lulzlib.huge

	for i=1, #CTargetSelector.enemyHeros do
		if not CTargetSelector.enemyHeros[i].dead then
			if GetDistance(pos, CTargetSelector.enemyHeros[i]) < distanceEnemy then
				distanceEnemy = GetDistance(pos, CTargetSelector.enemyHeros[i])
				closestEnemy = CTargetSelector.enemyHeros[i]
			end
		end
	end

	return closestEnemy, distanceEnemy
end
function CTargetSelector:OnWndMsg(msg,key)
	if msg == WM_LBUTTONDOWN then
		local enemy, distance = self:ClosestEnemy(mousePos)

		if distance < 250 then
			if focus and focus.charName == enemy.charName then
				focus = nil
			else
				focus = enemy
                self:FocusTarget()
			end
		end
	end
end
function CTargetSelector:FocusTarget()
	if LulzMenu.Targeting.Focus > 1 then
		if CTargetSelector.sendOnce and LulzMenu.Targeting.Focus == 2 then
			DelayAction(function()
				if focus ~= nil then
					focus = nil
					CTargetSelector.sendOnce = true
				end
			end, 60)
			CTargetSelector.sendOnce = false
		end
	end
end

class "Humanizer"
function Humanizer:__init()
    self.lastCommand = 0
    self.lastMessage = 0
    self.bCount = 0
    self.streamMode = LulzMenu.Draw.StreamMode
    self.print,self.PrintChat = _G.print, _G.PrintChat
    self.globalUlt = {["Draven"] = true, ["Ezreal"] = true, ["Jinx"] = true, ["Ashe"] = true}
    self.originalCastSpell = _G.CastSpell
    self.originalValidTarget = _G.ValidTarget
    self.functionTrackerValid,self.functionTrackerCast = 0, 0

    self.gameVersion = GetGameVersion():sub(1,10)
    self.enemyHeros = GetEnemyHeroes()
    self.missingEnemy = {}
    for i=1, #self.enemyHeros do
    	self.missingEnemy[self.enemyHeros[i].charName] = _G.Lulzlib.clock()
    end

    LulzMenu:addSubMenu("Humanizer Menu", "Humanizer")
        LulzMenu.Humanizer:addSubMenu(myHero.charName.." Spell Whitelist", myHero.charName)
            LulzMenu.Humanizer[myHero.charName]:addParam("0", "Spell Q", SCRIPT_PARAM_ONOFF, false)
            LulzMenu.Humanizer[myHero.charName]:addParam("1", "Spell W", SCRIPT_PARAM_ONOFF, false)
            LulzMenu.Humanizer[myHero.charName]:addParam("2", "Spell E", SCRIPT_PARAM_ONOFF, false)
            LulzMenu.Humanizer[myHero.charName]:addParam("3", "Spell R", SCRIPT_PARAM_ONOFF, false)
            LulzMenu.Humanizer[myHero.charName]:addParam("info22","Turning off Spell R may affect base ult!", SCRIPT_PARAM_INFO, "")
        LulzMenu.Humanizer:addSubMenu("Movement Limiter", "Movement")
            LulzMenu.Humanizer.Movement:addParam("Enable", "Use Movement Limiter", SCRIPT_PARAM_ONOFF, false)
            LulzMenu.Humanizer.Movement:addParam("info222","", SCRIPT_PARAM_INFO, "")
            LulzMenu.Humanizer.Movement:addParam("info23","Max Actions Per Second", SCRIPT_PARAM_INFO, "")
            LulzMenu.Humanizer.Movement:addParam("lhit", "Last Hit", SCRIPT_PARAM_SLICE, 6, 1, 25, 0)
            LulzMenu.Humanizer.Movement:addParam("lclear", "Lane Clear", SCRIPT_PARAM_SLICE, 6, 1, 25, 0)
            LulzMenu.Humanizer.Movement:addParam("harass", "Harass", SCRIPT_PARAM_SLICE, 8, 1, 25, 0)
            LulzMenu.Humanizer.Movement:addParam("combo", "Combo", SCRIPT_PARAM_SLICE, 13, 1, 25, 0)
            LulzMenu.Humanizer.Movement:addParam("perm", "Persistant", SCRIPT_PARAM_SLICE, 9, 1, 25, 0)
            LulzMenu.Humanizer.Movement:addParam("info233","25 = No restrictions, 1 = Highly Restricted", SCRIPT_PARAM_INFO, "")
        LulzMenu.Humanizer:addParam("info23","", SCRIPT_PARAM_INFO, "")
        LulzMenu.Humanizer:addParam("Enable", "Enable humanizer", SCRIPT_PARAM_ONOFF, false)
        LulzMenu.Humanizer:addParam("FOW", "Ignore new FoW enemies", SCRIPT_PARAM_ONOFF, false)
        LulzMenu.Humanizer:addParam("info22","Total Commands Blocked: 0", SCRIPT_PARAM_INFO, "")

    AddMsgCallback(function(msg,key) self:OnWndMsg(msg, key) end)
    AddIssueOrderCallback(function(source, order, position, target) self:OnIssueOrder(source, order, position, target) end)
    AddTickCallback(function() self:NewEnemy() end)
    AddTickCallback(function() self:Functions() end)
end
function Humanizer:IsOnScreen(spot)
    local check = WorldToScreen(D3DXVECTOR3(spot.x, spot.y, spot.z))
    local x, y = check.x, check.y
    if x > 0 and x < WINDOW_W and y > 0 and y < WINDOW_H then
        return true
    end
end
function Humanizer:Functions()
    if LulzMenu.Humanizer.FOW and self.functionTrackerValid == 0 then
        _G.ValidTarget = function(object, distance, enemyTeam)
        	local enemyTeam = (enemyTeam ~= false)
        	if object ~= nil and object.valid and object.name and (object.type == myHero.type or object.type:find("obj_AI")) and object.bTargetable and (object.team ~= player.team) == enemyTeam and object.visible and not object.dead and (enemyTeam == false or object.bInvulnerable == 0) and (distance == nil or GetDistanceSqr(object) <= distance * distance) and self:IsOnScreen(object) then
        		if LulzMenu.Humanizer.FOW and object.type == myHero.type and object.team ~= myHero.team and self.missingEnemy[object.charName] ~= 0 then return end
        		return true
            end
        end
        self.functionTrackerValid = 1
    elseif not LulzMenu.Humanizer.FOW and self.functionTrackerValid == 1 then
        _G.ValidTarget = self.originalValidTarget
        self.functionTrackerValid = 0
    end

    if LulzMenu.Humanizer.Enable and self.functionTrackerCast == 0 then
        _G.CastSpell = function(ID, param2, param3)
    	if param3 and param2 then
    		local endPos = Vector(param2, myHero.y, param3)
    		if ID == 3 and self.globalUlt[myHero.charName] and self:IsOnScreen(myHero.pos) and not LulzMenu.Humanizer[myHero.charName][tostring(ID)] then
    			local ultSpot = Vector(myHero.x, myHero.y, myHero.z) + (Vector(param2, myHero.y, param3) - Vector(myHero.x, myHero.y, myHero.z)):normalized() * (80 + (_G.Lulzlib.random()*420))
    			param2, param3 = ultSpot.x, ultSpot.z
    		elseif ID ~= 13 and not LulzMenu.Humanizer[myHero.charName][tostring(ID)] then
    			if endPos then
    				if not self:IsOnScreen(endPos) then
    					self.bCount = self.bCount + 1
    					LulzMenu.Humanizer:modifyParam("info22", "text", "Total Commands Blocked: "..self.bCount)
    					return
    				end
    			end
    		end
    	end
    	if param3 and param2 then
    		self.originalCastSpell(ID, param2, param3)
    	elseif param2 then
    		self.originalCastSpell(ID, param2)
    	else
    		self.originalCastSpell(ID)
    	end
        end
        self.functionTrackerCast = 1
    elseif not LulzMenu.Humanizer.Enable and self.functionTrackerCast == 1 then
        _G.CastSpell = self.originalCastSpell
        self.functionTrackerCast = 0
    end

    if LulzMenu.Draw.StreamMode and not self.streamMode then
        for i=1, 20 do
            print(" ")
        end
        DisableOverlay()
        _G.print = function() end
        _G.PrintChat = function() end

        self.streamMode = true
    elseif not LulzMenu.Draw.StreamMode and self.streamMode then
        EnableOverlay()
        _G.print = self.print
        _G.PrintChat = self.PrintChat
        self.streamMode = false
    end
end
function Humanizer:NewEnemy()
	for i=1, #self.enemyHeros do
		if not self.enemyHeros[i].visible then
			self.missingEnemy[self.enemyHeros[i].charName] = _G.Lulzlib.clock()
		elseif self.enemyHeros[i].visible and self.missingEnemy[self.enemyHeros[i].charName] ~= 0 then
			if _G.Lulzlib.clock() - self.missingEnemy[self.enemyHeros[i].charName] > 1.5 then
				self.missingEnemy[self.enemyHeros[i].charName] = 0
			end
		end
	end
end
function Humanizer:OnIssueOrder(source, order, position, target)
    local function moveEvery()
    	if Orbwalker:IsFighting() then return 1 / LulzMenu.Humanizer.Movement.combo
    	elseif Orbwalker:IsLastHitting() then return 1 / LulzMenu.Humanizer.Movement.lhit
    	elseif Orbwalker:IsHarassing() then return 1 / LulzMenu.Humanizer.Movement.harass
    	elseif Orbwalker:IsLaneClearing() then return 1 / LulzMenu.Humanizer.Movement.lclear
    	else return 1 / LulzMenu.Humanizer.Movement.perm
    	end
    end
    if not LulzMenu.Humanizer.Enable then return end
	if LulzMenu.Humanizer.Movement.Enable and _G.Lulzlib.clock() - self.lastCommand < moveEvery() and order == 2 then
		BlockOrder()
		self.bCount = self.bCount + 1
		LulzMenu.Humanizer:modifyParam("info22", "text", "Total Commands Blocked: "..self.bCount)
		return
	elseif order == 3 then
		if not self:IsOnScreen(target) then
			BlockOrder()
			self.bCount = self.bCount + 1
			LulzMenu.Humanizer:modifyParam("info22", "text", "Total Commands Blocked: "..self.bCount)
			return
		end
	end

	self.lastCommand = _G.Lulzlib.clock()
end
function Humanizer:OnWndMsg(msg, key)
	if msg == 516 and key == 2 then
        self.okMove = true
    end
end

class "Orbwalker"
function Orbwalker:__init()
    local orbwalker = nil
    Orbwalker.timer = _G.Lulzlib.clock()

    LulzMenu:addSubMenu("Orbwalker Menu", "Orbwalker")
        LulzMenu.Orbwalker:addParam("CustomKey", "Use Custom Combat Keys", SCRIPT_PARAM_ONOFF, false)
        LulzMenu.Orbwalker:setCallback("CustomKey", function(v)
        	if v == true then
        		LulzMenu.Orbwalker:removeParam("Orbwalker")
        		LulzMenu.Orbwalker:addParam("Combo", "Combo Mode", SCRIPT_PARAM_ONKEYDOWN, false, string.byte(" "))
        		LulzMenu.Orbwalker:addParam("Harass", "Harass Mode", SCRIPT_PARAM_ONKEYDOWN, false, string.byte("C"))
        		LulzMenu.Orbwalker:addParam("Laneclear", "Lane Clear Mode", SCRIPT_PARAM_ONKEYDOWN, false, string.byte("V"))
        		LulzMenu.Orbwalker:addParam("Lasthit", "Last Hit", SCRIPT_PARAM_ONKEYDOWN, false, string.byte("X"))
        	elseif v == false then
        		LulzMenu.Orbwalker:addParam("Orbwalker", orbwalker .. " Detected, Hotkeys integrated", SCRIPT_PARAM_INFO, "")
        		LulzMenu.Orbwalker:removeParam("Combo")
        		LulzMenu.Orbwalker:removeParam("Harass")
        		LulzMenu.Orbwalker:removeParam("Laneclear")
        		LulzMenu.Orbwalker:removeParam("Lasthit")
        	end
    	end)

    AddTickCallback(function() self:FindOrbwalker() end)
end
function Orbwalker:FindOrbwalker()
    if orbwalker ~= nil then return end
    if _G.Reborn_Initialised and _G.Reborn_Loaded and SAC and SAC.Loaded then
        orbwalker = "SAC:P"
    elseif _G.Reborn_Initialised and _G.Reborn_Loaded and not SAC then
        orbwalker = "SAC:R"
    elseif _G.MMA_IsLoaded then
        orbwalker = "MMA"
    elseif _Pewalk then
        orbwalker = "PEWalk"
    else
        if Orbwalker.timer + 15 <= _G.Lulzlib.clock() then
            orbwalker = "SX"
            if FileExist(LIB_PATH.."SxOrbWalk.lua") then
                require "SxOrbWalk"
                SxOrb:LoadToMenu(LulzMenu.Orbwalker)
                sxLoaded = true
            else
                DownloadSXOrb()
            end
        end
    end

    if orbwalker ~= nil and not LulzMenu.Orbwalker.CustomKey then
        LulzMenu.Orbwalker:addParam("Orbwalker", orbwalker .. " Detected, Hotkeys integrated", SCRIPT_PARAM_INFO, "")
    elseif orbwalker ~= nil then
        LulzMenu.Orbwalker:addParam("Combo", "Combo Mode", SCRIPT_PARAM_ONKEYDOWN, false, string.byte(" "))
        LulzMenu.Orbwalker:addParam("Harass", "Harass Mode", SCRIPT_PARAM_ONKEYDOWN, false, string.byte("C"))
        LulzMenu.Orbwalker:addParam("Laneclear", "Lane Clear Mode", SCRIPT_PARAM_ONKEYDOWN, false, string.byte("V"))
        LulzMenu.Orbwalker:addParam("Lasthit", "Last Hit", SCRIPT_PARAM_ONKEYDOWN, false, string.byte("X"))
    end
end
function Orbwalker:IsFighting()
    if not LulzMenu.Orbwalker.CustomKey then
        if orbwalker == "SAC:R" or orbwalker == "SAC:P" then
            return _G.AutoCarry.Keys.AutoCarry
        elseif orbwalker == "MMA" then
            return _G.MMA_IsOrbwalking()
        elseif orbwalker == "PEWalk" then
            return _G._Pewalk.GetActiveMode().Carry
        elseif orbwalker == "SX" then
            return _G.SxOrb.isFight
        end
    else
        return LulzMenu.Orbwalker.Combo
    end
end
function Orbwalker:IsHarassing()
    if not LulzMenu.Orbwalker.CustomKey then
        if orbwalker == "SAC:R" or orbwalker == "SAC:P" then
            return _G.AutoCarry.Keys.MixedMode
        elseif orbwalker == "MMA" then
            return _G.MMA_IsDualCarrying()
        elseif orbwalker == "PEWalk" then
            return _G._Pewalk.GetActiveMode().Mixed
        elseif orbwalker == "SX" then
            return _G.SxOrb.isHarass
        end
    else
        return LulzMenu.Orbwalker.Harass
    end
end
function Orbwalker:IsLaneClearing()
    if not LulzMenu.Orbwalker.CustomKey then
        if orbwalker == "SAC:R" or orbwalker == "SAC:P" then
            return _G.AutoCarry.Keys.LaneClear
        elseif orbwalker == "MMA" then
            return _G.MMA_IsLaneClearing()
        elseif orbwalker == "PEWalk" then
            return _G._Pewalk.GetActiveMode().LaneClear
        elseif orbwalker == "SX" then
            return _G.SxOrb.isLaneClear
        end
    else
        return LulzMenu.Orbwalker.LaneClear
    end
end
function Orbwalker:IsLastHitting()
    if not LulzMenu.Orbwalker.CustomKey then
        if orbwalker == "SAC:R" or orbwalker == "SAC:P" then
            return _G.AutoCarry.Keys.LaneClear
        elseif orbwalker == "MMA" then
            return _G.MMA_IsLaneClearing()
        elseif orbwalker == "PEWalk" then
            return _G._Pewalk.GetActiveMode().LaneClear
        elseif orbwalker == "SX" then
            return _G.SxOrb.isLaneClear
        end
    else
        return LulzMenu.Orbwalker.LaneClear
    end
end
function Orbwalker:GetOrbwalkerTarget()
    if orbwalker == "SAC:R" then
        return _G.AutoCarry.SkillsCrosshair.target
    elseif orbwalker == "SAC:P" then
        return _G.SAC:GetTarget("enemy")
    elseif orbwalker == "MMA" then
        return _G.MMA_Target()
    elseif orbwalker == "PEWalk" then
        return _G._Pewalk.GetTarget()
    elseif orbwalker == "SX" then
        return SxOrb:GetTarget()
    end
end
function Orbwalker:ForceTarget(target)
    if orbwalker == "SAC:R" or orbwalker == "SAC:P" then
        _G.AutoCarry.Crosshair:ForceTarget(target)
    elseif orbwalker == "MMA" then
        _G.MMA_ForceTarget(target)
    elseif orbwalker == "PEWalk" then
        _G._Pewalk.ForceTarget(target)
    elseif orbwalker == "SX" then
        SxOrb:ForceTarget(target)
    end
end
function Orbwalker:AllowAttacks(bool)
    if orbwalker == "SAC:R" or orbwalker == "SAC:P" then
        _G.AutoCarry.MyHero:AttacksEnabled(bool)
    elseif orbwalker == "MMA" then
        _G.MMA_StopAttacks(not bool)
    elseif orbwalker == "PEWalk" then
        _G._Pewalk.AllowAttack(bool)
    elseif orbwalker == "SX" then
        if bool then
            SxOrb:EnableAttacks()
        else
            SxOrb:DisableAttacks()
        end
    end
end
function Orbwalker:AllowMovement(bool)
    if orbwalker == "SAC:R" or orbwalker == "SAC:P" then
        _G.AutoCarry.MyHero:MovementEnabled(bool)
    elseif orbwalker == "MMA" then
        _G.MMA_AvoidMovement(not bool)
    elseif orbwalker == "PEWalk" then
        _G._Pewalk.AllowMove(bool)
    elseif orbwalker == "SX" then
        if bool then
            SxOrb:EnableMove()
        else
            SxOrb:DisableMove()
        end
    end
end

class "Prediction"
function Prediction:__init(menu)
    _G.predictonTable = {
        ["Predictions"] = {{"VPrediction", 2, 1, 3, 0}, {"FHPrediction", 1.1, 1, 2, 2}, {"HPrediction", 1.05, 0, 3, 2}, {"TRPrediction", 1, 0, 2.5, 1}, {"KPrediction", 1.75, 0, 3, 2}},
        ["FoundPredictions"] = {},
        ["LoadedPredictions"] = {},
        ["GlobalCallbacks"] = {},
        ["ActivePrediction"] = nil,
    }
    self.lastPrediction = nil
    Prediction.menuItems = {}
	for i=1, #_G.predictonTable.Predictions do
        if FileExist(LIB_PATH .. _G.predictonTable.Predictions[i][1] .. ".lua") then
            _G.Lulzlib.insert(_G.predictonTable.FoundPredictions, _G.predictonTable.Predictions[i][1])
    	end
    end

    menu:addParam("Prediction", "Prediction", SCRIPT_PARAM_LIST, 1, _G.predictonTable.FoundPredictions)
    menu:setCallback("Prediction", function(v)
        for i=1, #self.menuItems do
            self.menuItems[i]:modifyParam("Accuracy", "min",  _G.predictonTable.Predictions[v][3])
            self.menuItems[i]:modifyParam("Accuracy", "_G.Lulzlib.max",  _G.predictonTable.Predictions[v][4])
            self.menuItems[i]:modifyParam("Accuracy", "idc",  _G.predictonTable.Predictions[v][5])
        end
    end)
    AddTickCallback(function() self:ActivePrediction() end)
end
function Prediction:ActivePrediction()
    _G.predictonTable.ActivePrediction = _G.predictonTable.Predictions[LulzMenu.General.Prediction][1]
    if _G[_G.predictonTable.ActivePrediction] and _G.predictonTable.ActivePrediction ~= "FHPrediction" and self.lastPrediction ~= _G.predictonTable.ActivePrediction then
        if not _G.predictonTable.GlobalCallbacks[_G.predictonTable.ActivePrediction] then
            _G.predictonTable.GlobalCallbacks[_G.predictonTable.ActivePrediction] = _G[_G.predictonTable.ActivePrediction]()
            activePrediction = _G.predictonTable.GlobalCallbacks[_G.predictonTable.ActivePrediction]
        else
            activePrediction = _G.predictonTable.GlobalCallbacks[_G.predictonTable.ActivePrediction]
        end
        self.lastPrediction = _G.predictonTable.ActivePrediction
    end

    for i=1, #_G.predictonTable.LoadedPredictions do
        if _G.predictonTable.LoadedPredictions[i] == _G.predictonTable.ActivePrediction then
            return
        end
    end

    _G.Lulzlib.insert(_G.predictonTable.LoadedPredictions, _G.predictonTable.ActivePrediction)
    require(_G.predictonTable.ActivePrediction)
end
function Prediction:AddToMenu(menu)
    menu:addParam("Accuracy", "Prediction Accuracy", SCRIPT_PARAM_SLICE, _G.predictonTable.Predictions[LulzMenu.General.Prediction][2], _G.predictonTable.Predictions[LulzMenu.General.Prediction][3], _G.predictonTable.Predictions[LulzMenu.General.Prediction][4], _G.predictonTable.Predictions[LulzMenu.General.Prediction][5])
    _G.Lulzlib.insert(Prediction.menuItems,menu)
end
function Prediction:GetLineCastPosition(target, spellTable, usePreset)
    if _G.predictonTable.ActivePrediction ~= nil then
        if _G.predictonTable.ActivePrediction == "VPrediction" then
            return activePrediction:GetLineCastPosition(target, spellTable.delay, spellTable.width, spellTable.range, spellTable.speed, myHero, spellTable.collision)
        elseif _G.predictonTable.ActivePrediction == "FHPrediction" then
            local CastPosition, HitChance, Info = FHPrediction.GetPrediction(usePreset or spellTable, target)
            if spellTable.collision and not Info.collision then
                return CastPosition, HitChance
            elseif not spellTable.collision then
                return CastPosition, HitChance
            end
        elseif _G.predictonTable.ActivePrediction == "HPrediction" then
            return activePrediction:GetPredict(HPSkillshot({type = "DelayLine", delay = spellTable.delay, range = spellTable.range, speed = spellTable.speed, collisionM = spellTable.collision, collisionH = spellTable.collision, width = spellTable.width}), target, myHero)
        elseif _G.predictonTable.ActivePrediction == "TRPrediction" then
            local CastPosition, HitChance, Info = activePrediction:GetPrediction(TR_BindSS({type = 'IsLinear', delay = spellTable.delay, range = spellTable.range, width = spellTable.width, speed = spellTable.speed}), target, myHero)
            if spellTable.collision and not Info then
                return CastPosition, HitChance
            elseif not spellTable.collision then
                return CastPosition, HitChance
            end
        elseif _G.predictonTable.ActivePrediction == "KPrediction" then
            return activePrediction:GetPrediction(KPSkillshot({type = "DelayLine", delay = spellTable.delay, range = spellTable.range, speed = spellTable.speed, collision = spellTable.collision, width = spellTable.width}), target, myHero);
        end
    end
end
function Prediction:GetCircularCastPosition(target, spellTable, usePreset)
    if _G.predictonTable.ActivePrediction ~= nil then
        if _G.predictonTable.ActivePrediction == "VPrediction" then
            return activePrediction:GetCircularCastPosition(target, spellTable.delay, spellTable.radius, spellTable.range, spellTable.speed, myHero, spellTable.collision)
        elseif _G.predictonTable.ActivePrediction == "FHPrediction" then
            return FHPrediction.GetPrediction(usePreset or spellTable, target)
        elseif _G.predictonTable.ActivePrediction == "HPrediction" then
            return activePrediction:GetPredict(HPSkillshot({type = "DelayCircle", delay = spellTable.delay, range = spellTable.range, speed = spellTable.speed, collisionM = spellTable.collision, collisionH = spellTable.collision, radius = spellTable.radius}), target, myHero);
        elseif _G.predictonTable.ActivePrediction == "TRPrediction" then
            local CastPosition, HitChance, Info = activePrediction:GetPrediction(TR_BindSS({type = 'IsRadial', delay = spellTable.delay, range = spellTable.range, radius = spellTable.radius, speed = spellTable.speed}), target, myHero)
            if spellTable.collision and not Info then
                return CastPosition, HitChance
            elseif not spellTable.collision then
                return CastPosition, HitChance
            end
        elseif _G.predictonTable.ActivePrediction == "KPrediction" then
            return activePrediction:GetPrediction(KPSkillshot({type = "DelayCircle", delay = spellTable.delay, range = spellTable.range, speed = spellTable.speed, collision = spellTable.collision, radius = spellTable.radius}), target, myHero);
        end
    end
end
function Prediction:GetConeCastPosition(target, spellTable, usePreset)
    if _G.predictonTable.ActivePrediction ~= nil then
        if _G.predictonTable.ActivePrediction == "VPrediction" then
            return activePrediction:GetConeAOECastPosition(target, spellTable.delay, spellTable.angle, spellTable.range, spellTable.speed, myHero)
        elseif _G.predictonTable.ActivePrediction == "FHPrediction" then
            return FHPrediction.GetPrediction(usePreset or spellTable, target)
        elseif _G.predictonTable.ActivePrediction == "HPrediction" then
            return activePrediction:GetPredict(HPSkillshot({type = "DelayArc", delay = spellTable.delay, range = spellTable.range, speed = spellTable.speed, collisionM = spellTable.collision, collisionH = spellTable.collision, angle = spellTable.angle}), target, myHero);
        elseif _G.predictonTable.ActivePrediction == "TRPrediction" then
            local CastPosition, HitChance, Info = activePrediction:GetPrediction(TR_BindSS({type = 'IsConic', delay = spellTable.delay, range = spellTable.range, angle = spellTable.angle , speed = spellTable.speed}), target, myHero)
            if spellTable.collision and not Info then
                return CastPosition, HitChance
            elseif not spellTable.collision then
                return CastPosition, HitChance
            end
        elseif _G.predictonTable.ActivePrediction == "KPrediction" then
            return activePrediction:GetPrediction(KPSkillshot({type = "DelayArc", delay = spellTable.delay, range = spellTable.range, speed = spellTable.speed, collision = spellTable.collision, angle = spellTable.angle}), target, myHero);
        end
    end
end
function Prediction:GetPredictedHealth(unit, time)
    if _G.predictonTable.ActivePrediction ~= nil then
        if _G.predictonTable.ActivePrediction == "VPrediction" then
            return activePrediction:GetPredictedHealth(unit, time)
        elseif _G.predictonTable.ActivePrediction == "FHPrediction" then
            return FHPrediction.PredictHealth(unit, time)
        elseif _G.predictonTable.ActivePrediction == "HPrediction" then
            return activePrediction:PredictHealth(unit, time)
        elseif _G.predictonTable.ActivePrediction == "TRPrediction" then
            return activePrediction:GetPredictedHealth(unit, time)
        elseif _G.predictonTable.ActivePrediction == "KPrediction" then
            return activePrediction:GetHealth(unit, time)
        end
    end
end
function Prediction:GetPredictedPosistion(hero, delay)
    if _G.predictonTable.ActivePrediction ~= nil then
        if _G.predictonTable.ActivePrediction == "VPrediction" then
            return activePrediction:GetPredictedPos(hero, delay)
        elseif _G.predictonTable.ActivePrediction == "FHPrediction" then
            return FHPrediction.PredictPosition(hero, delay)
        elseif _G.predictonTable.ActivePrediction == "HPrediction" then
            return HPrediction:PredictPos(hero, delay)
        elseif _G.predictonTable.ActivePrediction == "TRPrediction" then
            return TRPrediction:GetUnitPosition(hero, delay)
        elseif _G.predictonTable.ActivePrediction == "KPrediction" then
            return activePrediction:GetPos(hero, delay)
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
    ToUpdate.VersionPath = "/Celtech/BOL/master/UnitedUnderBrokenWings/UnitedUnderBrokenWings.version"
    ToUpdate.ScriptPath =  "/Celtech/BOL/master/UnitedUnderBrokenWings/UnitedUnderBrokenWings.lua"
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
    ToUpdate.CallbackUpdate = function(NewVersion,OldVersion) require "SxOrbWalk" SxOrb:LoadToMenu(Menu.Orbwalker) end
    ToUpdate.CallbackNoUpdate = function(OldVersion)  require "SxOrbWalk" SxOrb:LoadToMenu(Menu.Orbwalker)  end
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
