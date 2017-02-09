if myHero.charName ~= "Ezreal" then return end
assert(load(Base64Decode("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"), nil, "bt", _ENV))()
TrackerLoad("F3lHB1VyjuAmxYnp")

function OnLoad()
    local version = 0.14
    CheckUpdatesLib()
    CheckUpdates(version)

    Menu = scriptConfig("EzREAL As It Gets", "ezrealasitgets")
    Menu:addSubMenu("Drawing Menu", "Draw")
        Menu.Draw:addSubMenu("AA Settings", "AASettings")
            Menu.Draw.AASettings:addParam("Enabled", "Draw AA Range", 1, true)
            Menu.Draw.AASettings:addParam("CircleColor", "Circle color", SCRIPT_PARAM_COLOR, {255,255,0,0})
        Menu.Draw:addSubMenu("Q Settings", "QSettings")
            Menu.Draw.QSettings:addParam("Enabled", "Draw Range", 1, true)
            Menu.Draw.QSettings:addParam("Hide", "Don't Draw When Not Castable", 1, true)
            Menu.Draw.QSettings:addParam("CircleColor", "Circle color", SCRIPT_PARAM_COLOR, {255,0,255,0})
        Menu.Draw:addSubMenu("W Settings", "WSettings")
            Menu.Draw.WSettings:addParam("Enabled", "Draw Range", 1, true)
            Menu.Draw.WSettings:addParam("Hide", "Don't Draw When Not Castable", 1, true)
            Menu.Draw.WSettings:addParam("CircleColor", "Circle color", SCRIPT_PARAM_COLOR, {255,255,255,0})
        Menu.Draw:addSubMenu("E Settings", "ESettings")
            Menu.Draw.ESettings:addParam("Enabled", "Draw Range", 1, false)
            Menu.Draw.ESettings:addParam("EnabledMax", "Draw Attack Range", 1, false)
            Menu.Draw.ESettings:addParam("Hide", "Don't Draw When Not Castable", 1, true)
            Menu.Draw.ESettings:addParam("CircleColor", "Circle color", SCRIPT_PARAM_COLOR, {255,0,255,255})
        Menu.Draw:addSubMenu("R Settings", "RSettings")
            Menu.Draw.RSettings:addParam("Enabled", "Draw global snipe range on map", 1, true)
            Menu.Draw.RSettings:addParam("Hide", "Don't draw when not castable", 1, true)
            Menu.Draw.RSettings:addParam("CircleColor", "Circle color", SCRIPT_PARAM_COLOR, {255,0,255,255})
            Menu.Draw.RSettings:addParam("BaseUlt", "Draw baseult tracker", 1, true)
        Menu.Draw:addParam("PlaceHolder", "", SCRIPT_PARAM_INFO, "")
        Menu.Draw:addParam("StreamMode", "Enable Streaming Mode(F7)", SCRIPT_PARAM_ONKEYTOGGLE, false, 118)
        Menu.Draw:addParam("DrawTarget", "Draw Target", 1, true)
    Menu:addSubMenu("Spells Menu & Masteries", "Spell")
        Menu.Spell:addSubMenu("Q Menu", "QMenu")
            Menu.Spell.QMenu:addParam("EnableCombo", "Use in combo", 1, true)
            Menu.Spell.QMenu:addParam("EnableHarass", "Use in harass", 1, true)
            Menu.Spell.QMenu:addParam("EnableClear", "Use in clear", SCRIPT_PARAM_LIST, 1,{"Off","Last Hit","Clear"})
            Menu.Spell.QMenu:addParam("EnableJungle", "Use in jungle", 1, true)
            Menu.Spell.QMenu:addParam("EnableKs", "Use to KS", 1, true)
            Menu.Spell.QMenu:addParam("EnableFlee", "Use to flee with iceborn", 1, true)
            Menu.Spell.QMenu:addParam("PlaceHolder", "", SCRIPT_PARAM_INFO, "")
            Menu.Spell.QMenu:addParam("HarassMana", "Harass mana managment % >", SCRIPT_PARAM_SLICE, 30, 0, 100, 0)
            Menu.Spell.QMenu:addParam("ClearMana", "Lane clear mana managment % >", SCRIPT_PARAM_SLICE, 60, 0, 100, 0)
            Menu.Spell.QMenu:addParam("PlaceHolder2", "", SCRIPT_PARAM_INFO, "")
            Menu.Spell.QMenu:addParam("Accuracy", "Prediction Accuracy", SCRIPT_PARAM_SLICE, 2, 0, 2, 0)
        Menu.Spell:addSubMenu("W Menu", "WMenu")
            Menu.Spell.WMenu:addParam("EnableCombo", "Use in combo", 1, true)
            Menu.Spell.WMenu:addParam("EnableHarass", "Use in harass", 1, false)
            Menu.Spell.WMenu:addParam("EnableClear", "Use in clear", 1, false)
            Menu.Spell.WMenu:addParam("EnableKs", "Use to KS", 1, true)
            Menu.Spell.WMenu:addParam("PlaceHolder", "", SCRIPT_PARAM_INFO, "")
            Menu.Spell.WMenu:addParam("HarassMana", "Harass mana managment % >", SCRIPT_PARAM_SLICE, 30, 0, 100, 0)
            Menu.Spell.WMenu:addParam("ClearMana", "Lane clear mana managment % >", SCRIPT_PARAM_SLICE, 60, 0, 100, 0)
            Menu.Spell.WMenu:addParam("PlaceHolder2", "", SCRIPT_PARAM_INFO, "")
            Menu.Spell.WMenu:addParam("Accuracy", "Prediction Accuracy", SCRIPT_PARAM_SLICE, 2, 0, 2, 0)
        Menu.Spell:addSubMenu("E Menu", "EMenu")
            Menu.Spell.EMenu:addParam("Enable", "Use as gap closer", SCRIPT_PARAM_LIST, 1,{"Never", "Combo", "Combo+Harass"})
            Menu.Spell.EMenu:addParam("EnableKs", "Use to KS", 1, true)
            Menu.Spell.EMenu:addParam("EnableFlee", "Use to flee", 1, true)
            Menu.Spell.EMenu:addParam("PlaceHolder", "", SCRIPT_PARAM_INFO, "")
            Menu.Spell.EMenu:addParam("HarassMana", "Harass mana managment % >", SCRIPT_PARAM_SLICE, 30, 0, 100, 0)
        Menu.Spell:addSubMenu("R Menu", "RMenu")
            Menu.Spell.RMenu:addParam("EnableCombo", "Use in combo", 1, true)
            Menu.Spell.RMenu:addParam("ComboRangeCheck", "Combo ult range check", SCRIPT_PARAM_SLICE, 800, 0, 9000, 0)
            Menu.Spell.RMenu:addParam("PlaceHolder44", "", SCRIPT_PARAM_INFO, "")
            Menu.Spell.RMenu:addParam("BaseUlt", "Enable base ult", 1, true)
            Menu.Spell.RMenu:addParam("PlaceHolder3", "", SCRIPT_PARAM_INFO, "")
            Menu.Spell.RMenu:addParam("EnableSnipe", "Ult to global snipe", 1, true)
            Menu.Spell.RMenu:addParam("SnipeRangeCheckMax", "Global snipe max range check", SCRIPT_PARAM_SLICE, 1500, 300, 9000, 0)
            Menu.Spell.RMenu:setCallback("SnipeRangeCheckMax", function(v)
                Menu.Spell.RMenu:removeParam("SnipeRangeCheckMin")
                Menu.Spell.RMenu:addParam("SnipeRangeCheckMin", "Global snipe min range check", SCRIPT_PARAM_SLICE, 1500, 0, v, 0)
                if Menu.Spell.RMenu.SnipeRangeCheckMin > v then Menu.Spell.RMenu.SnipeRangeCheckMin = v - 300 end
            end)
            Menu.Spell.RMenu:addParam("SnipeRangeCheckMin", "Global snipe min range check", SCRIPT_PARAM_SLICE, 1200, 0, 9000, 0)
            Menu.Spell.RMenu:addParam("PlaceHolder23", "", SCRIPT_PARAM_INFO, "")
            Menu.Spell.RMenu:addParam("Accuracy", "Prediction Accuracy", SCRIPT_PARAM_SLICE, 2, 0, 2, 0)
            Menu.Spell.RMenu:addParam("PlaceHolder2", "", SCRIPT_PARAM_INFO, "")
            Menu.Spell.RMenu:addParam("EnableInitiator", "Use on initiators", 1, true)
            Menu.Spell.RMenu:addParam("InitiatorRangeCheck", "Initiators ult range check", SCRIPT_PARAM_SLICE, 2000, 0, 9000, 0)
            Menu.Spell.RMenu:addParam("InitiateNum", "Min number of enemies to ult", SCRIPT_PARAM_SLICE, 1, 1, 5, 0)
        Menu.Spell:addSubMenu("Summoner Spells Menu", "SummonerSpellsMenu")
        Menu.Spell:addSubMenu("Masteries Menu", "MasteriesMenu")
            Menu.Spell.MasteriesMenu:addParam("FerocityMasteries", "Ferocity Masteries", SCRIPT_PARAM_LIST, 1,{"None","Bounty Hunter","Double Edged Sword","Battle Trance"})
            Menu.Spell.MasteriesMenu:addParam("Merciless", "Merciless", 1, false)
            Menu.Spell.MasteriesMenu:addParam("Savagry", "Savagry", SCRIPT_PARAM_SLICE, 0, 0, 5, 0)
    Menu:addSubMenu("Items Menu", "Items")
        Menu.Items:addSubMenu("Offensive Items", "OffensiveItems")
            Menu.Items.OffensiveItems:addParam("Enable", "Use items during", SCRIPT_PARAM_LIST, 3,{"Never","Combo","Combo+Harass"})
			Menu.Items.OffensiveItems:addParam("HealthPercent", "If my health % is less than", SCRIPT_PARAM_SLICE, 85, 0, 100, decimalPlace)
			Menu.Items.OffensiveItems:addParam("EnemyHealthPercent", "If target health % is less than", SCRIPT_PARAM_SLICE, 85, 0, 100, decimalPlace)
        Menu.Items:addSubMenu("Defensive Items", "DefensiveItems")
            Menu.Items.DefensiveItems:addParam("Enable", "Use items during", SCRIPT_PARAM_LIST, 3,{"Never","Combo","Combo+Harass"})
            Menu.Items.DefensiveItems:addParam("HealthPercent", "If my health % is less than", SCRIPT_PARAM_SLICE, 50, 0, 100, decimalPlace)
            Menu.Items.DefensiveItems:addParam("NegateCC", "Use to negate CC if cleanse is down", 1, true)
        Menu.Items:addSubMenu("QSS/Cleanse Settings", "CleanseSettings")
            Menu.Items.CleanseSettings:addParam("Enable", "Remove CC", SCRIPT_PARAM_LIST, 3,{"Never","Combo","Always"})
            Menu.Items.CleanseSettings:addParam("Blitz", "Remove Rocket Grab", SCRIPT_PARAM_ONOFF, false)
            Menu.Items.CleanseSettings:addParam("Blind", "Remove Blind", SCRIPT_PARAM_ONOFF, false)
            Menu.Items.CleanseSettings:addParam("Delay", "Humanizer delay (ms)", SCRIPT_PARAM_SLICE, 0, 0, 500, 0)
        Menu.Items:addSubMenu("Auto Warding", "Warding")
            Menu.Items.Warding:addParam("Enable", "Auto ward on vision lost", SCRIPT_PARAM_LIST, 3,{"Never","Combo","Always"})
            Menu.Items.Warding:addParam("Delay", "Humanizer delay (ms)", SCRIPT_PARAM_SLICE, 250, 0, 1000, 0)

        Menu.Items:addParam("PlaceHolder", "", SCRIPT_PARAM_INFO, "")
    	Menu.Items:addParam("AutoPotion", "Auto Health Pot", SCRIPT_PARAM_LIST, 2,{"Never","Combo","Always"})
    	Menu.Items:addParam("HealthPercent", "Pot If My Health % is <", SCRIPT_PARAM_SLICE, 50, 0, 100, decimalPlace)
    Menu:addSubMenu("General Menu", "General")
        Menu.General:addSubMenu("Auto Leveler", "Level")
            Menu.General.Level:addParam("Enable", "Enable Auto Leveler", 1, true)
            Menu.General.Level:addParam("Ignore", "Ignore First 3 Levels", 1, true)
            Menu.General.Level:addParam("Sequence", "Leveling Sequence", SCRIPT_PARAM_LIST, 1,{'Q>E>W', 'Q>W>E', 'W>Q>E', 'W>E>Q'})
        Menu.General:addSubMenu("Auto Buy", "Buy")
            Menu.General.Buy:addParam("StartingItems", "Purchase Starting Items", 1, true)
		    Menu.General.Buy:addParam("TrinketSwitch", "Auto Switch Trinket At 9", SCRIPT_PARAM_LIST, 2, {"Off","Blue","Red"})
        Menu.General:addSubMenu("Anti BaseUlt", "BaseUlt")
            Menu.General.BaseUlt:addParam("Enabled", "Enable Anti BaseUlt", 1, true)
        Menu.General:addParam("PlaceHolder", "", SCRIPT_PARAM_INFO, "")
        Menu.General:addParam("Lane", "Get to lane faster", 1, true)
        Menu.General:addParam("Verbose", "Track enemy recall in chat", 1, true)
        Menu.General:addParam("Focus", "Left Click To Focus", SCRIPT_PARAM_LIST, 2, {"Never","For 1 Minute", "Until Removed"})
    Menu:addSubMenu("Hotkeys Menu", "Hotkeys")
        Menu.Hotkeys:addParam("ForceUlt", "Force ult", SCRIPT_PARAM_ONKEYDOWN, false, string.byte("T"))
        Menu.Hotkeys:addParam("FleeKey", "Flee Mode", SCRIPT_PARAM_ONKEYDOWN, false, string.byte("G"))
        Menu.Hotkeys:addParam("Burst", "Burst Mode", SCRIPT_PARAM_ONKEYDOWN, false, string.byte("Y"))
        Menu.Hotkeys:addParam("Stack", "Tear Stacker Mode", SCRIPT_PARAM_ONKEYTOGGLE, false, string.byte("J"))
    Menu:addSubMenu("Orbwalker Menu", "Orbwalker")
        Menu.Orbwalker:addParam("CustomKey", "Use Custom Combat Keys", SCRIPT_PARAM_ONOFF, false)
        Menu.Orbwalker:setCallback("CustomKey", function(v)
        	if v == true then
        		Menu.Orbwalker:removeParam("Orbwalker")
        		Menu.Orbwalker:addParam("Combo", "Combo Mode", SCRIPT_PARAM_ONKEYDOWN, false, string.byte(" "))
        		Menu.Orbwalker:addParam("Harass", "Harass Mode", SCRIPT_PARAM_ONKEYDOWN, false, string.byte("C"))
        		Menu.Orbwalker:addParam("Laneclear", "Lane Clear Mode", SCRIPT_PARAM_ONKEYDOWN, false, string.byte("V"))
        		Menu.Orbwalker:addParam("Lasthit", "Last Hit", SCRIPT_PARAM_ONKEYDOWN, false, string.byte("X"))
        	elseif v == false then
        		Menu.Orbwalker:addParam("Orbwalker", orbwalker .. " Detected, Hotkeys integrated", SCRIPT_PARAM_INFO, "")
        		Menu.Orbwalker:removeParam("Combo")
        		Menu.Orbwalker:removeParam("Harass")
        		Menu.Orbwalker:removeParam("Laneclear")
        		Menu.Orbwalker:removeParam("Lasthit")
        	end
    	end)
    Menu:addSubMenu("Humanizer Menu", "Humanizer")
        Menu.Humanizer:addSubMenu(myHero.charName.." Spell Whitelist", myHero.charName)
            Menu.Humanizer[myHero.charName]:addParam("0", "Spell Q", SCRIPT_PARAM_ONOFF, false)
            Menu.Humanizer[myHero.charName]:addParam("1", "Spell W", SCRIPT_PARAM_ONOFF, false)
            Menu.Humanizer[myHero.charName]:addParam("2", "Spell E", SCRIPT_PARAM_ONOFF, false)
            Menu.Humanizer[myHero.charName]:addParam("3", "Spell R", SCRIPT_PARAM_ONOFF, true)
            Menu.Humanizer[myHero.charName]:addParam("info22","Turning off Spell R may affect base ult!", SCRIPT_PARAM_INFO, "")
        Menu.Humanizer:addSubMenu("Movement Limiter", "Movement")
            Menu.Humanizer.Movement:addParam("Enable", "Use Movement Limiter", SCRIPT_PARAM_ONOFF, true)
            Menu.Humanizer.Movement:addParam("info222","", SCRIPT_PARAM_INFO, "")
            Menu.Humanizer.Movement:addParam("info23","Max Actions Per Second", SCRIPT_PARAM_INFO, "")
            Menu.Humanizer.Movement:addParam("lhit", "Last Hit", SCRIPT_PARAM_SLICE, 6, 1, 25, 0)
            Menu.Humanizer.Movement:addParam("lclear", "Lane Clear", SCRIPT_PARAM_SLICE, 6, 1, 25, 0)
            Menu.Humanizer.Movement:addParam("harass", "Harass", SCRIPT_PARAM_SLICE, 8, 1, 25, 0)
            Menu.Humanizer.Movement:addParam("combo", "Combo", SCRIPT_PARAM_SLICE, 13, 1, 25, 0)
            Menu.Humanizer.Movement:addParam("perm", "Persistant", SCRIPT_PARAM_SLICE, 9, 1, 25, 0)
            Menu.Humanizer.Movement:addParam("info233","25 = No restrictions, 1 = Highly Restricted", SCRIPT_PARAM_INFO, "")
        Menu.Humanizer:addParam("info23","", SCRIPT_PARAM_INFO, "")
        Menu.Humanizer:addParam("Enable", "Enable humanizer", SCRIPT_PARAM_ONOFF, true)
        Menu.Humanizer:addParam("FOW", "Ignore new FoW enemies", SCRIPT_PARAM_ONOFF, true)
        Menu.Humanizer:addParam("info22","Total Commands Blocked: 0", SCRIPT_PARAM_INFO, "")

    Menu:addParam("PlaceHolder", "", SCRIPT_PARAM_INFO, "")
    Menu:addParam("Packets", "Enable Packet Features", 1, true)
    Menu:addParam("Taunt", "Taunt On Kill", SCRIPT_PARAM_LIST, 1,{"None","Dance","Taunt","Laugh","Joke","Mastery"})
    Menu:addParam("Skins", 'Skin Changer', SCRIPT_PARAM_LIST, 1,{"Classic", "Nottingham", "Striker", "Frosted", "Explorer", "Pulsefire", "TPA", "Debonair", "Ace of Spades", "Arcade", "Meteorite", "Pearl", "Sandstone", "Obsidian", "Striped", "Ruby", "Rose Quartz", "Amethyst"})
    Menu:setCallback("Skins", function(v)
        SetSkin(myHero, v - 1)
    end)

    SetSkin(myHero, Menu.Skins - 1)
    Orbwalker()
    Prediction()
    CTargetSelector()
    Ezreal()
    ItemsAndSummoners()
    BaseUlt()
    AntiBaseUlt()
    Humanizer()
end
function OnUnload()
    SetSkin(myHero, -1)
end

class "Ezreal"
function Ezreal:__init()
    self.QState, self.WState, self.EState = nil, nil, nil
    self.manaPercent = nil
    self.streamMode = Menu.Draw.StreamMode
    self.print,self.PrintChat = _G.print, _G.PrintChat
    self.lastBardRCoords = {x = 0, z = 0, time = 0, ulted = false}
    self.castTime = 0
    self.SpellTable = {
        Q = {range = 1150, speed = 2000, delay = 0.25, radius = 75, collision = true},
        W = {range = 1000, speed = 1550, delay = 0.25, radius = 100, collision = false},
        E = {range = 475, maxRange = 750},
        R = {range = 9999, speed = 2000, delay = 1, radius = 150, collision = false}
    }
    self.autoRTable = {
        ["Malphite"] = {name = "UFSlash", range = 300},
        ["Orianna"] = {name = "OrianaDetonateCommand", range = 400},
        ["Annie"] = {name = "InfernalGuardian", range = 250},
        ["Leona"] = {name = "LeonaSolarFlare", range = 300},
        ["Yasuo"] = {name = "YasuoRDummySpell", range = 400},
        ["Bard"] = {name = "BardR", range = 350},
    }
    Ezreal.spellDmg = {
        [_Q] = function(unit) if self.QState then return myHero:CalcMagicDamage(unit, ((((myHero:GetSpellData(_Q).level * 20) + 15) + (myHero.ap * 0.4)) + (myHero.totalDamage * 1.1))) end end,
        [_W] = function(unit) if self.WState then return myHero:CalcMagicDamage(unit, (((myHero:GetSpellData(_W).level * 45) + 25) + (myHero.ap * 0.8))) end end,
        [_E] = function(unit) if self.EState then return myHero:CalcMagicDamage(unit, ((((myHero:GetSpellData(_E).level * 50) + 25) + (myHero.ap * 0.75)) + (myHero.addDamage * 0.5))) end end,
        [_R] = function(unit) if self.RState then return myHero:CalcMagicDamage(unit, ((((myHero:GetSpellData(_R).level * 150) + 200) + (myHero.ap * 0.9)) + myHero.addDamage)) end end
    }

    self.enemyHeros = GetEnemyHeroes()
    self.enemyMinions = minionManager(MINION_ENEMY, self.SpellTable.Q.range - 400, myHero, MINION_SORT_HEALTH_ASC)
    self.jungleMinions = minionManager(MINION_JUNGLE, 625, myHero, MINION_SORT_MAXHEALTH_ASC)

    for i, hero in pairs(GetAllyHeroes()) do
        if self.autoRTable[hero.charName] then
            Menu.Spell.RMenu:addParam(hero.charName, "Use on " .. hero.charName .. " Ultimate", 1, true)
        end
    end

    AddTickCallback(function() self:OnTick() end)
    AddDrawCallback(function() self:OnDraw() end)
    AddProcessSpellCallback(function(unit, spell) self:AutoR(unit, spell) end)
end
function Ezreal:GetDamage(spell, unit)
    if spell == "ALL" then
        local sum = 0
          for spell, func in pairs(spellDmg) do
            sum = sum + (func(unit) or 0)
          end
         return sum
       else
          return Ezreal.spellDmg[spell](unit) or 0
       end
end
function Ezreal:OnTick()
    self.QState = myHero:CanUseSpell(_Q) == READY
    self.WState = myHero:CanUseSpell(_W) == READY
    self.EState = myHero:CanUseSpell(_E) == READY
    self.RState = myHero:CanUseSpell(_R) == READY
    self.manaPercent = myHero.mana / myHero.maxMana * 100
    _G.Target = Orbwalker:GetOrbwalkerTarget()

    self:Combo()
    self:Harass()
    self:LaneClear()
    self:GetToLaneFaster()
    --self:KillSteal()
    self:FleeMode()
    self:TearStack()
    --self:UltBardR()
end
function Ezreal:OnDraw()
    local function ReturnColor(color) return ARGB(color[1],color[2],color[3],color[4]) end
    if not myHero.dead then
        if Menu.Draw.AASettings.Enabled then
            DrawCircle3D(myHero.x, myHero.y, myHero.z, myHero.range + myHero.boundingRadius, 1, ReturnColor(Menu.Draw.AASettings.CircleColor), 100)
        end
        if Menu.Draw.QSettings.Enabled and (self.QState or not Menu.Draw.QSettings.Hide) then
            DrawCircle3D(myHero.x, myHero.y, myHero.z, self.SpellTable.Q.range, 1, ReturnColor(Menu.Draw.QSettings.CircleColor), 100)
        end
        if Menu.Draw.WSettings.Enabled and (self.WState or not Menu.Draw.WSettings.Hide) then
            DrawCircle3D(myHero.x, myHero.y, myHero.z, self.SpellTable.W.range, 1, ReturnColor(Menu.Draw.WSettings.CircleColor), 100)
        end
        if Menu.Draw.ESettings.Enabled and (self.EState or not Menu.Draw.ESettings.Hide) then
            DrawCircle3D(myHero.x, myHero.y, myHero.z, self.SpellTable.E.range, 1, ReturnColor(Menu.Draw.ESettings.CircleColor), 100)
        end
        if Menu.Draw.ESettings.Enabled and (self.EState or not Menu.Draw.ESettings.Hide) then
            DrawCircle3D(myHero.x, myHero.y, myHero.z, self.SpellTable.E.maxRange, 1, ReturnColor(Menu.Draw.ESettings.CircleColor), 100)
        end
        if Menu.Draw.RSettings.Enabled and (self.RState or not Menu.Draw.RSettings.Hide) then
            DrawCircleMinimap(myHero.x, myHero.y, myHero.z, Menu.Spell.RMenu.SnipeRangeCheckMax, 1, ReturnColor(Menu.Draw.RSettings.CircleColor), 50)
            DrawCircleMinimap(myHero.x, myHero.y, myHero.z, Menu.Spell.RMenu.SnipeRangeCheckMin, 1, ReturnColor(Menu.Draw.RSettings.CircleColor), 50)
            for i, enemy in pairs(self.enemyHeros) do
                if enemy and ValidTarget(enemy) then
                    if self.RState and self:GetDamage(_R,enemy) > enemy.health and GetDistance(enemy) < Menu.Spell.RMenu.SnipeRangeCheckMax and GetDistance(enemy) > Menu.Spell.RMenu.SnipeRangeCheckMin then
                        DrawTextA("You can kill 1 or more enemies, Hold your Force ult key!", 25, WINDOW_H / 2, 50, ARGB(255,255,0,0), "center", "center")
                    end
                end
            end
        end
        if Menu.Draw.DrawTarget then
            if Target ~= nil then
                DrawCircle3D(Target.x, Target.y, Target.z, 100, 1, ARGB(255,255,0,0), 100)
            end
        end
        if Menu.Draw.StreamMode and not self.streamMode then
            for i=1, 20 do
                print(" ")
            end
            DisableOverlay()
            _G.print = function() end
            _G.PrintChat = function() end

            self.streamMode = true
        elseif not Menu.Draw.StreamMode and self.streamMode then
            EnableOverlay()
            _G.print = self.print
            _G.PrintChat = self.PrintChat
            self.streamMode = false
        end
    end
end
function Ezreal:GetToLaneFaster()
	local function inCircle(cx,cz,x,z,r)
		if (math.pow(cx-x,2)+math.pow(cz-z,2)<math.pow(r,2)) then
			return true
		else
			return false
		end
	end

	if Menu.General.Lane then
		for _, i in pairs(GetTurrets()) do
			if i.range == 1050 then
				if not inCircle(myHero.x, myHero.z, i.x, i.z, 900) and inCircle(myHero.x, myHero.z, i.x, i.z, 1050) and self.EState and not inCircle(myHero.endPath.x, myHero.endPath.z, i.x, i.z, 1050) then
					CastSpell(_E, myHero.endPath.x, myHero.endPath.z)
				end
			end
		end
	end
end
function Ezreal:CastQ(enemy)
    if self.QState then
        local CastPosition, HitChance, Info = Prediction:GetLineCastPosition(enemy, self.SpellTable.Q.delay, self.SpellTable.Q.radius, self.SpellTable.Q.range, self.SpellTable.Q.speed, self.SpellTable.Q.collision, "Q")
        if CastPosition and HitChance >= Menu.Spell.QMenu.Accuracy then
            if Info ~= nil and Info.collision ~= nil and not Info.collision or Info == nil or Info.collision == nil then
                CastSpell(_Q, CastPosition.x, CastPosition.z)
            end
        end
    end
end
function Ezreal:CastW(enemy)
    local CastPosition, HitChance, Info = Prediction:GetLineCastPosition(enemy, self.SpellTable.W.delay, self.SpellTable.W.radius, self.SpellTable.W.range, self.SpellTable.W.speed, self.SpellTable.W.collision, "W")
    if CastPosition and HitChance >= Menu.Spell.WMenu.Accuracy then
        CastSpell(_W, CastPosition.x, CastPosition.z)
    end
end
function Ezreal:CastE(x,z)
    if self.EState then
        CastSpell(_E, x, z)
    end
end
function Ezreal:CastR(enemy)
    local CastPosition, HitChance, Info = Prediction:GetLineCastPosition(enemy, self.SpellTable.R.delay, self.SpellTable.R.radius, self.SpellTable.R.range, self.SpellTable.R.speed, self.SpellTable.R.collision, self.SpellTable.R)
    if CastPosition and HitChance >= Menu.Spell.RMenu.Accuracy then
        CastSpell(_R, CastPosition.x, CastPosition.z)
    end
end
function Ezreal:Combo()
    if Orbwalker:IsFighting() then
        if ValidTarget(Target) then
            if self.QState then
                self:CastQ(Target)
            end

            if self.WState then
                self:CastW(Target)
            end
        end
    end
end
function Ezreal:Harass()
    if Orbwalker:IsHarassing() then
        if ValidTarget(Target) then
            if self.QState and Menu.Spell.QMenu.EnableHarass then
                self:CastQ(Target)
            end

            if self.WState and Menu.Spell.WMenu.EnableHarass then
                self:CastW(Target)
            end
        end
    end
end
function Ezreal:LaneClear()
    if Orbwalker:IsLaneClearing() then
        if Menu.Spell.QMenu.EnableJungle then
            self.jungleMinions:update()

            if self.QState then
                for i, jungle in pairs(self.jungleMinions.objects) do
                    if jungle ~= nil and ValidTarget(jungle) and GetDistance(jungle) < self.SpellTable.Q.range and string.split(jungle.charName,'_')[2] ~= "Plant" then
                        self:CastQ(jungle)
                    end
                end
            end
        end

        if Menu.Spell.QMenu.EnableClear > 1 then
            self.enemyMinions:update()
            if self.QState then
                for i, minion in pairs(self.enemyMinions.objects) do
                    if minion ~= nil and ValidTarget(minion) and GetDistance(minion) < self.SpellTable.Q.range then
                        if Menu.Spell.QMenu.EnableClear == 3 then
                            self:CastQ(minion)
                        else
                            if self:GetDamage(_Q, minion) > minion.health then
                                self:CastQ(minion)
                            end
                        end
                    end
                end
            end
        end
    end
end
function Ezreal:KillSteal()
    for i, enemy in pairs(self.enemyHeros) do
        if enemy and ValidTarget(enemy) then
            if Menu.Spell.EMenu.EnableKs then
                if GetDistance(enemy) > self.SpellTable.Q.range and GetDistance(enemy) < (self.SpellTable.Q.range + self.SpellTable.E.range) then
                    if enemy.health < (getDmg("Q", enemy, myHero)+((myHero.damage)*1.1)+(myHero.ap*0.4)) then
                        local p = myHero + (Vector(enemy.pos) - myHero):normalized() * 475
                        self:CastE(p.x,p.z)
                        DelayAction((function() self:CastQ(enemy) end), .3)

                    end
                end
            end

            if Menu.Spell.QMenu.EnableKs then
                if self:GetDamage(_Q, enemy) > enemy.health and enemy.health < self:GetDamage(_W, enemy) then
                    self:CastQ(enemy)
                end
            end

            if Menu.Spell.WMenu.EnableKs then
                if self:GetDamage(_Q, enemy) < enemy.health and enemy.health > self:GetDamage(_W, enemy) then
                    self:CastW(enemy)
                end
            end

            if Menu.Hotkeys.ForceUlt then
                if self.RState and self:GetDamage(_R, enemy) > enemy.health and GetDistance(enemy) < Menu.Spell.RMenu.SnipeRangeCheckMax and GetDistance(enemy) > Menu.Spell.RMenu.SnipeRangeCheckMin then
                    self:CastR(enemy)
                end
            end
        end
    end
end
function Ezreal:FleeMode()
    local function intersectsWall()
        for i = 1, 475 do
            local pos = myHero + (Vector(mousePos) - myHero):normalized() * i
            if IsWall(D3DXVECTOR3(pos.x, pos.y, pos.z)) then
                return true
            end
        end
        return false
    end

    if Menu.Hotkeys.FleeKey then
        myHero:MoveTo(mousePos.x, mousePos.z)

        if Menu.Spell.QMenu.EnableFlee then
            if ItemsAndSummoners:HasItem(3025) then
                self:CastQ(Target)
            end
        end

        if Menu.Spell.EMenu.EnableFlee then
            local ePos = myHero + (Vector(mousePos) - myHero):normalized() * 550
            if intersectsWall() and not IsWall(D3DXVECTOR3(ePos.x, ePos.y, ePos.z)) then
                CastSpell(_E, ePos.x, ePos.z)
            end
        end
    end
end
function Ezreal:TearStack()
    if Menu.Hotkeys.Stack then
        if ItemsAndSummoners:HasItem(3070) or ItemsAndSummoners:HasItem(3004) then
            local castqpos = myHero + (Vector(mousePos) - myHero):normalized() * 300
            CastSpell(_Q, castqpos.x, castqpos.z)
        end
    end
end
function Ezreal:AutoR(unit, spell)
    if not Menu.Spell.RMenu.EnableInitiator or unit.isMe then return end
    if unit.team == myHero.team then
        if Menu.Spell.RMenu[unit.charName] then
            if GetDistanceSqr(spell.endPos) <= Menu.Spell.RMenu.InitiatorRangeCheck * Menu.Spell.RMenu.InitiatorRangeCheck then
                if self.autoRTable[unit.charName].name == spell.name then
                    if ItemsAndSummoners:CountEnemiesNearUnitReg(spell.endPos, self.autoRTable[unit.charName].range) >= Menu.Spell.RMenu.InitiateNum then
                        if self.RState then
                            if unit.charName == "Yasuo" then
                                CastSpell(_R, unit.x, unit.z)
                            elseif unit.charName == "Bard" then
                                --self.lastBardRCoords.time = os.clock() + math.abs(((GetDistance(spell.endPos) / 2000) + 1) - ((GetDistance(spell.endPos, unit) / 2100) + 3.5))
                                --self.lastBardRCoords.z = spell.endPos.z
                                --self.lastBardRCoords.x = spell.endPos.x
                                --self.lastBardRCoords.ulted = true
                            else
                                CastSpell(_R, spell.endPos.x, spell.endPos.z)
                            end
                        end
                    end
                end
            end
        end
    end
end
function Ezreal:UltBardR()
    if not self.lastBardRCoords.ulted == true then return end
    DelayAction((function() self.lastBardRCoords.ulted = false end), 10)
    if os.clock() >= self.lastBardRCoords.time and os.clock() <= self.lastBardRCoords.time + 1 then
        CastSpell(_R, self.lastBardRCoords.x, self.lastBardRCoords.z)
        self.lastBardRCoords.ulted = false
    end
end

class "ItemsAndSummoners"
function ItemsAndSummoners:__init()
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
            ["Ignite"] = self:GetSummonerSpellFromName("SummonerDot"),
            ["Exaughst"] = self:GetSummonerSpellFromName("SummonerExhaust"),
            ["Heal"] = self:GetSummonerSpellFromName("SummonerHeal"),
            ["Ghost"] = self:GetSummonerSpellFromName("SummonerHaste"),
            ["Cleanse"] = self:GetSummonerSpellFromName("SummonerBoost"),
            ["Flash"] = self:GetSummonerSpellFromName("SummonerFlash"),
            ["Barrier"] = self:GetSummonerSpellFromName("SummonerBarrier"),
            ["Smite"] = self:GetSummonerSpellFromName("SummonerSmite")
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

    self.jungleMinions = minionManager(MINION_JUNGLE, 625, myHero, MINION_SORT_MINHEALTH_DEC)
    for _, k in pairs(GetEnemyHeroes()) do
		self.enemies[k.networkID] = {k.visible, Vector(k), os.clock() + 1, Vector(k.path:Path(2))}
	end

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
        Menu.Spell.SummonerSpellsMenu:addParam("SmartIgnite", "Use smart ignite", SCRIPT_PARAM_LIST, 2, {"Never", "Optimal", "Aggressive"})
    end
    if self.itemsAndSpells.SummonerSpells.Exaughst then
        Menu.Spell.SummonerSpellsMenu:addParam("Exaughst", "Use exaughst", SCRIPT_PARAM_LIST, 4, {"Never", "High AP", "High AD", "Target"})
    end
    if self.itemsAndSpells.SummonerSpells.Heal then
        Menu.Spell.SummonerSpellsMenu:addParam("Heal", "Use heal", 1, true)
        Menu.Spell.SummonerSpellsMenu:addParam("HealAlly", "Use heal on ally", 1, true)
        Menu.Spell.SummonerSpellsMenu:addParam("HealToChase", "Use heal to secure kill", 1, true)
        Menu.Spell.SummonerSpellsMenu:addParam("HealthPercent", "If my health % is <", SCRIPT_PARAM_SLICE, 10, 0, 100, 0)
    end
    if self.itemsAndSpells.SummonerSpells.Ghost then
        Menu.Spell.SummonerSpellsMenu:addParam("Ghost", "Use ghost to chase", SCRIPT_PARAM_LIST, 2, {"Never", "Optimal", "Aggressive"})
    end
    if self.itemsAndSpells.SummonerSpells.Flash then
        Menu.Spell.SummonerSpellsMenu:addParam("Flash", "Block flash fails", 1, false)
    end
    if self.itemsAndSpells.SummonerSpells.Barrier then
        Menu.Spell.SummonerSpellsMenu:addParam("Barrier", "Use barrier", 1, true)
        Menu.Spell.SummonerSpellsMenu:addParam("HealthPercent", "If my health % is <", SCRIPT_PARAM_SLICE, 10, 0, 100, 0)
    end
    if self.itemsAndSpells.SummonerSpells.Cleanse then
        Menu.Items.CleanseSettings:addParam("Cleanse", "Use Cleanse Summoner", SCRIPT_PARAM_ONOFF, true)
    end
    if self.itemsAndSpells.SummonerSpells.Smite then
        Menu.Spell.SummonerSpellsMenu:addParam("Smite", "Use smite", SCRIPT_PARAM_ONOFF, true)
		Menu.Spell.SummonerSpellsMenu:addParam("DrawSmite", "Draw smite range", SCRIPT_PARAM_ONOFF, true)
        Menu.Spell.SummonerSpellsMenu:addParam("Dragon", "Use Smite on: Dragon", SCRIPT_PARAM_ONOFF, true)
		Menu.Spell.SummonerSpellsMenu:addParam("Baron", "Use Smite on: Baron", SCRIPT_PARAM_ONOFF, true)
        Menu.Spell.SummonerSpellsMenu:addParam("Red", "Use Smite on: Red Buff", SCRIPT_PARAM_ONOFF, true)
		Menu.Spell.SummonerSpellsMenu:addParam("Blue", "Use Smite on: Blue Buff", SCRIPT_PARAM_ONOFF, true)
        Menu.Spell.SummonerSpellsMenu:addParam("Crab", "Use Smite on: Rift Scuttler", SCRIPT_PARAM_ONOFF, false)
		Menu.Spell.SummonerSpellsMenu:addParam("Razorbeak", "Use Smite on: Wraith", SCRIPT_PARAM_ONOFF, false)
		Menu.Spell.SummonerSpellsMenu:addParam("Murkwolf", "Use Smite on: Wolf", SCRIPT_PARAM_ONOFF, false)
		Menu.Spell.SummonerSpellsMenu:addParam("Krug", "Use Smite on: Krug", SCRIPT_PARAM_ONOFF, false)
		Menu.Spell.SummonerSpellsMenu:addParam("Gromp", "Use Smite on: Gromp", SCRIPT_PARAM_ONOFF, false)
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
function ItemsAndSummoners:GetSummonerSpellFromName(name)
	if myHero:GetSpellData(SUMMONER_1).name:lower():find(name:lower()) then
		return SUMMONER_1
	elseif myHero:GetSpellData(SUMMONER_2).name:lower():find(name:lower()) then
		return SUMMONER_2
	end
end
function ItemsAndSummoners:isFleeingFromMe(target, range)
    fpos = Prediction:GetPredictedPosistion(target, 0.26)
	if fpos and GetDistanceSqr(fpos) > range*range then
		return true
	end
	return false
end
function ItemsAndSummoners:FlashProtection(iSpell, vStart, vEnd, target)
    if self.itemsAndSpells.SummonerSpells.Flash and Menu.Spell.SummonerSpellsMenu.Flash then
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
        if Menu.Items.AutoPotion == 2 and Orbwalker:IsFighting() or Menu.Items.AutoPotion == 3 then
        	if os.clock() - self.itemsAndSpells.Cooldowns.LastPotion < 8 then return end
            if Menu.Items.HealthPercent >= (myHero.health / myHero.maxHealth * 100) then
                for i = 1, 5 do
                    if self:GetSlotItemFromName(self.itemsAndSpells.Potions[i]) ~= nil then
                        CastSpell(self:GetSlotItemFromName(self.itemsAndSpells.Potions[i]))
                		self.itemsAndSpells.Cooldowns.LastPotion= os.clock()
                    end
                end
            end
        end
    end
end
function ItemsAndSummoners:AutoIgnite()
    if self.itemsAndSpells.SummonerSpells.Ignite then
        if myHero:CanUseSpell(self.itemsAndSpells.SummonerSpells.Ignite) == READY then
        	local IgniteDmg = 50 + (20 * myHero.level)
        	local aggro = Menu.Spell.SummonerSpellsMenu.SmartIgnite == 3 and 0.05 or 0
        	for i, enemy in pairs(self.enemyHeroes) do
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
			if os.clock() - self.lastTAttack < 1.75 then
				if self.tDamage < 1.75 then
					self.tDamage = self.tDamage + 0.375
				else
					self.tDamage = self.tDamage + 0.250
					self.tDamage = self.tDamage > 2.25 and 2.25 or self.tDamage
				end
			else
				self.tDamage = 1
			end
			self.lastTAttack = os.clock()
            if self.itemsAndSpells.SummonerSpells.Heal then
                if (myHero:CanUseSpell(self.itemsAndSpells.SummonerSpells.Heal) == 0) and spell.target.isMe then
    				local realDamage = unit.totalDamage / (((myHero.armor * 0.7) / 100) + 1)

    				if Prediction:GetPredictedHealth(myHero, 0.5) + myHero.shield <= realDamage * self.tDamage then
    					DelayAction(function()
    						CastSpell(self.itemsAndSpells.SummonerSpells.Heal)
                            Log("Saving you from tower")
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
                            Log("Saving you from tower")
    					end, 0.5)
    				end
    			end
            end

		end
	end
end
function ItemsAndSummoners:CalcDist(enemy)
	local ourMS, targetMS = ((myHero.ms*1.30)),Target.ms
	local msDiff = ourMS - targetMS
	local adDamage = myHero:CalcDamage(Target, myHero.totalDamage)

	if (GetDistance(enemy) - msDiff) < (myHero.range + myHero.boundingRadius) and (GetDistance(enemy) - msDiff) > (myHero.range + myHero.boundingRadius) - 20 and adDamage > enemy.health and msDiff > 0 then
		return true
	else
		return false
	end
end
function ItemsAndSummoners:HealToChase()
	if self.itemsAndSpells.SummonerSpells.Heal and Menu.Spell.SummonerSpellsMenu.HealToChase then
        if myHero:CanUseSpell(self.itemsAndSpells.SummonerSpells.Heal) == READY then
    		if ValidTarget(Target) and Menu.Spell.SummonerSpellsMenu.HealToChase then
    			local ourMS, targetMS = myHero.ms,Target.ms
    			local adDamage = myHero:CalcDamage(Target, myHero.totalDamage)

    			if Orbwalker:IsFighting() then
    				local r = myHero.range+65
    				local trange = r < 575 and r or 575
    				if self:isFleeingFromMe(Target, trange) and self:CalcDist(Target) then
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
	if self.itemsAndSpells.SummonerSpells.Heal and Menu.Spell.SummonerSpellsMenu.Heal then
        if myHero:CanUseSpell(self.itemsAndSpells.SummonerSpells.Heal) == READY then
    		if myHero.health / myHero.maxHealth * 100 <= Menu.Spell.SummonerSpellsMenu.HealthPercent then
                CastSpell(self.itemsAndSpells.SummonerSpells.Heal)
            end

            if Menu.Spell.SummonerSpellsMenu.HealAlly then
                for i,ally in pairs(self.allyHeroes) do
                    if GetDistance(ally) <= 850 then
                        if ally.health / ally.maxHealth * 100 <= Menu.Spell.SummonerSpellsMenu.HealthPercent then
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
	if not unit or not unit.valid or not spell then return end
	if heal and Menu.Spell.SummonerSpellsMenu.Heal and myHero:CanUseSpell(self.itemsAndSpells.SummonerSpells.Heal) == 0 and spell.target and spell.target.isMe and unit.team ~= myHero.team and unit.type == myHero.type then
		if myHero.health/myHero.maxHealth <= (Menu.Spell.SummonerSpellsMenu.HealthPercent/100)*1.5 then
			CastSpell(self.itemsAndSpells.SummonerSpells.Heal)
		end
	end
	if spell.name:lower():find("zedr") and spell.target == myHero then
        if Menu.Items.DefensiveItems.Enable then
    		DelayAction(function()
    		    self:CastZhonya()
    		end, .6)
        end
	end
end
function ItemsAndSummoners:CountEnemiesNearUnitReg(unit, range)
	local count = 0
	for i, enemy in pairs(ItemsAndSummoners.enemyHeroes) do
		if enemy and enemy.valid and not enemy.dead and enemy.visible then
			if  GetDistanceSqr(unit, enemy) < range * range  then
				count = count + 1
			end
		end
	end
	return count
end
function ItemsAndSummoners:CleanseCC(source, unit, buff)
	if not buff or not source or not source.valid or not unit or not unit.valid then return end
	if unit.isMe and (Menu.Items.CleanseSettings.Enable == 3 or Menu.Items.CleanseSettings.Enable == 2 and Orbwalker:IsFighting()) then
        if (source.charName == "Rammus" and buff.type ~= 8) or source.charName == "Alistar" or source.charName:lower():find("baron") or source.charName:lower():find("spiderboss") or source.charName == "LeeSin" or (source.charName == "Hecarim" and not buff.name:lower():find("fleeslow")) then return end
		if buff.name and ((not cleanse and buff.type == 24) or buff.type == 5 or buff.type == 11 or buff.type == 22 or buff.type == 21 or buff.type == 8) or (buff.type == 25 and Menu.Items.CleanseSettings.Blind)
		or (buff.type == 10 and buff.name and buff.name:lower():find("fleeslow")) then
		--or (Menu.Items.CleanseSettings.Exhaust and buff.name and buff.name:lower():find("summonerexhaust")) then
			if buff.name and buff.name:lower():find("caitlynyor") and self:CountEnemiesNearUnitReg(myHero, 700) == 0   then
				return false
			elseif not source.charName:lower():find("blitzcrank") then
				self:UseItemsCC()
			end
		end
	end
end
function ItemsAndSummoners:CastZhonya()
	if not myHero.dead and not TargetHaveBuff("kindredrnodeathbuff") and not TargetHaveBuff("judicatorinter") then
		local item = GetSlotItemFromName("ZhonyasHourglass")
		if item then
			CastSpell(item)
			return true
		end
	end
end
function ItemsAndSummoners:UseItemsCC()
	if os.clock() - self.lastRemove < 1 then return end
    for i=1,2 do
        self.cleanseSlot = self:GetSlotItemFromName(self.itemsAndSpells.CleanseItems[i])
        print("Cleansing 2")
        if self.cleanseSlot ~= nil then
            DelayAction(function()
                CastSpell(self.cleanseSlot,myHero)
            end, Menu.Items.CleanseSettings.Delay/1000)
            self.lastRemove = os.clock()
        end
	end


	-- if MainMenu.cc.Summoner and SummonerSlot and myHero:CanUseSpell(SummonerSlot) == 0 then
	-- 	DelayAction(function()
	-- 		CastSpell(SummonerSlot)
	-- 	end, MainMenu.cc.delay/1000)
	-- 	lastRemove = os.clock()
	-- end
end
function ItemsAndSummoners:AutoLeveler()
	if Menu.General.Level.Enable then
	if Menu.General.Level.Ignore and myHero.level <= 3 then return end
		self.abilitySequence = {
            {1,3,1,2,1,4,1,3,1,3,4,3,3,2,2,4,2,2},
            {1,2,3,1,1,4,1,2,1,2,4,2,2,3,3,4,3,3},
            {2,1,3,2,2,4,2,1,2,1,4,1,1,3,3,4,3,3},
            {2,3,1,2,2,4,2,3,2,3,4,3,3,1,1,4,1,1}
        }
        autoLevelSetSequence(self.abilitySequence[Menu.General.Level.Sequence])
	end
end
function ItemsAndSummoners:AutoBuy()
    if Menu.General.Buy.StartingItems then
		if myHero.level <= 1 and self.firstBuy and InFountain() then
			BuyItem(1055)
            BuyItem(2003)
            BuyItem(3340)
			self.firstBuy = false
		end
	end

	if Menu.General.Buy.TrinketSwitch > 1 then
		if myHero.level >= 9 and InFountain() and myHero:GetSpellData(ITEM_7).name ~= "TrinketOrbLvl3" and Menu.General.Buy.TrinketSwitch == 2 then
			BuyItem(3363)
		end

        if myHero.level >= 9 and InFountain() and myHero:GetSpellData(ITEM_7).name ~= "TrinketSweeperLvl3" and Menu.General.Buy.TrinketSwitch == 3 then
			BuyItem(3364)
		end
	end
end
function ItemsAndSummoners:SightWard(enemies, tick)
	if Menu.Items.Warding.Enable == 3 or Menu.Items.Warding.Enable == 2 and ComboKey() then
		tick = os.clock()+0.125
		for _, k in pairs(GetEnemyHeroes()) do
			if enemies[k.networkID][1] and not k.visible and not k.dead and enemies[k.networkID][3] >= os.clock() and GetDistance(k) < ( myHero.range + myHero.boundingRadius+50) then
				local pos = enemies[k.networkID][2]
				local dir = (enemies[k.networkID][4] - enemies[k.networkID][2]):normalized()
				for _=150, 600 do
					local ppos = pos + dir * _
					if IsWallOfGrass(D3DXVECTOR3(ppos.x,ppos.y,ppos.z)) then
						self:CastWard(ppos)
						enemies[k.networkID][3] = 0
					end
				end
			else
				if k.visible and not k.dead then
					enemies[k.networkID] = {k.visible, Vector(k), os.clock() + 1, Vector(k.path:Path(2))}
				end
			end
		end
	end
end
function ItemsAndSummoners:CastWard(wardPos)
    for i=1,3 do
        self.itemSlot = self:GetSlotItemFromName(self.itemsAndSpells.Wards[i])
        if self.itemSlot ~= nil then
            DelayAction(function()
                CastSpell(self.itemSlot, wardPos.x, wardPos.z)
            end, Menu.Items.Warding.Delay/1000)
        end
	end
end
function ItemsAndSummoners:AutoSmite()
    if self.itemsAndSpells.SummonerSpells.Smite then
        if Menu.Spell.SummonerSpellsMenu.Smite then
            self.jungleMinions:update()

            if myHero:CanUseSpell(self.itemsAndSpells.SummonerSpells.Smite) == READY then
        		for i, jungle in pairs(self.jungleMinions.objects) do
        			if jungle ~= nil then
                        if math.max(20 * myHero.level + 370, 30 * myHero.level + 330, 40 * myHero.level + 240, 50 * myHero.level + 100) >= jungle.health then
                            if Menu.Spell.SummonerSpellsMenu[string.split(jungle.charName,'_')[2]] then
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
        if Menu.Spell.SummonerSpellsMenu.Smite and Menu.Spell.SummonerSpellsMenu.DrawSmite then
            if myHero:CanUseSpell(self.itemsAndSpells.SummonerSpells.Smite) == READY then
                for i, jungle in pairs(self.jungleMinions.objects) do
                    if jungle ~= nil then
                        if Menu.Spell.SummonerSpellsMenu[string.split(jungle.charName,'_')[2]] then
                            DrawText3D("Smite Damage " .. math.floor(math.max(20 * myHero.level + 370, 30 * myHero.level + 330, 40 * myHero.level + 240, 50 * myHero.level + 100)/jungle.health*100) .. "%", jungle.x, jungle.y, jungle.z, 20, ARGB(255,255,0,0), true)
                        end
                    end
                end
            end
        end
    end
end
function ItemsAndSummoners:TauntOnKill()
	if myHero.kills > self.killCount then
		DoEmote(Menu.Taunt - 2)

		self.killCount = myHero.kills
	end
end


assert(load(Base64Decode("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"), nil, "bt", _ENV))()

class "AntiBaseUlt"
function AntiBaseUlt:__init()
    self.lower, self.clock, self.recallingTime = string.lower, os.clock(), 0
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

    for _, Hero in pairs(GetEnemyHeroes()) do
		if self.spellData[Hero.charName] ~= nil then
			Menu.General.BaseUlt:addParam(Hero.charName, Hero.charName .. " - " .. self.spellData[Hero.charName].MissileName, SCRIPT_PARAM_ONOFF, true)
		end
	end
    if next(Menu.General.BaseUlt._param) == nil then
	    Menu.General.BaseUlt:addParam("Info", "No champions supported!", SCRIPT_PARAM_INFO, "")
    else
        AddProcessSpellCallback(function(unit, spell) self:OnProcessSpell(unit, spell) end)
        AddCreateObjCallback(function(object) self:OnCreateObj(object) end)
	end
end
function AntiBaseUlt:OnProcessSpell(unit, spell)
	if not Menu.General.BaseUlt.Enabled then return end

	if unit == myHero and string.find(spell.name, "recall") then
		self.recallSpells = {
			['recall'] = 8.0,
			['recallimproved'] = 7.0,
			['odinrecall'] = 4.5,
			['odinrecallimproved'] = 4.0,
			['superrecall'] = 4.0,
			['superrecallimproved'] = 4.0
		}

		self.recallingTime = os.clock() + self.recallSpells[string.lower(spell.name)]
	end
end
function AntiBaseUlt:OnCreateObj(object)
    if not Menu.General.BaseUlt.Enabled then return end

	if not object or not object.valid or object.type ~= "MissileClient" or not object.spellOwner or not object.spellOwner.valid
    or self.recallingTime < os.clock() or object.spellOwner.type ~= myHero.type or object.spellOwner.team == myHero.team
    or self.spellData[object.spellOwner.charName] == nil or not Menu.General.BaseUlt[object.spellOwner.charName]
    or self.spellData[object.spellOwner.charName].MissileName ~= object.spellName then return end

    self.time = os.clock() + (GetDistance(object.pos, GetFountain()) / self.spellData[object.spellOwner.charName].Speed)
    if not self:IsLineCircleIntersection(GetFountain(), 500, object.pos, object.spellEnd) or 1 + self.recallingTime < self.time or self.recallingTime - 1 > self.time then
		return
	end

	myHero:MoveTo(1 + myHero.x, 1 + myHero.z)
	Log("Saving you from " .. object.spellOwner.charName .. " BaseUlt")
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
    if self.lantern ~= nil and Menu.Hotkeys.FleeKey then
        if GetDistanceSqr(self.lantern) < 300^2 then
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

class "Humanizer"
function Humanizer:__init()
    self.lastCommand = 0
    self.lastMessage = 0
    self.bCount = 0
    self.globalUlt = {["Draven"] = true, ["Ezreal"] = true, ["Jinx"] = true, ["Ashe"] = true}
    self.originalCastSpell = _G.CastSpell
    self.originalValidTarget = _G.ValidTarget
    self.functionTrackerValid,self.functionTrackerCast = 0, 0

    self.gameVersion = GetGameVersion():sub(1,10)
    self.enemyHeros = GetEnemyHeroes()
    self.missingEnemy = {}
    for i, Enemy in pairs(self.enemyHeros) do
    	self.missingEnemy[Enemy.charName] = os.clock()
    end

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
    if Menu.Humanizer.FOW and self.functionTrackerValid == 0 then
        _G.ValidTarget = function(object, distance, enemyTeam)
        	local enemyTeam = (enemyTeam ~= false)
        	if object ~= nil and object.valid and object.name and (object.type == myHero.type or object.type:find("obj_AI")) and object.bTargetable and (object.team ~= player.team) == enemyTeam and object.visible and not object.dead and (enemyTeam == false or object.bInvulnerable == 0) and (distance == nil or GetDistanceSqr(object) <= distance * distance) and self:IsOnScreen(object) then
        		if Menu.Humanizer.FOW and object.type == myHero.type and object.team ~= myHero.team and self.missingEnemy[object.charName] ~= 0 then return end
        		return true
            end
        end
        self.functionTrackerValid = 1
    elseif not Menu.Humanizer.FOW and self.functionTrackerValid == 1 then
        _G.ValidTarget = self.originalValidTarget
        self.functionTrackerValid = 0
    end

    if Menu.Humanizer.Enable and self.functionTrackerCast == 0 then
        _G.CastSpell = function(ID, param2, param3)
    	if param3 and param2 then
    		local endPos = Vector(param2, myHero.y, param3)
    		if ID == 3 and self.globalUlt[myHero.charName] and self:IsOnScreen(myHero.pos) and not Menu.Humanizer[myHero.charName][tostring(ID)] then
    			local ultSpot = Vector(myHero.x, myHero.y, myHero.z) + (Vector(param2, myHero.y, param3) - Vector(myHero.x, myHero.y, myHero.z)):normalized() * (80 + (math.random()*420))
    			param2, param3 = ultSpot.x, ultSpot.z
    		elseif ID ~= 13 and not Menu.Humanizer[myHero.charName][tostring(ID)] then
    			if endPos then
    				if not self:IsOnScreen(endPos) then
    					self.bCount = self.bCount + 1
    					Menu.Humanizer:modifyParam("info22", "text", "Total Commands Blocked: "..self.bCount)
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
    elseif not Menu.Humanizer.Enable and self.functionTrackerCast == 1 then
        _G.CastSpell = self.originalCastSpell
        self.functionTrackerCast = 0
    end
end
function Humanizer:NewEnemy()
	for i, Enemy in pairs(self.enemyHeros) do
		if not Enemy.visible then
			self.missingEnemy[Enemy.charName] = os.clock()
		elseif Enemy.visible and self.missingEnemy[Enemy.charName] ~= 0 then
			if os.clock() - self.missingEnemy[Enemy.charName] > 1.5 then
				self.missingEnemy[Enemy.charName] = 0
			end
		end
	end
end
function Humanizer:OnIssueOrder(source, order, position, target)
    local function moveEvery()
    	if Orbwalker:IsFighting() then return 1 / Menu.Humanizer.Movement.combo
    	elseif Orbwalker:IsLastHitting() then return 1 / Menu.Humanizer.Movement.lhit
    	elseif Orbwalker:IsHarassing() then return 1 / Menu.Humanizer.Movement.harass
    	elseif Orbwalker:IsLaneClearing() then return 1 / Menu.Humanizer.Movement.lclear
    	else return 1 / Menu.Humanizer.Movement.perm
    	end
    end
    if not Menu.Humanizer.Enable then return end
	if Menu.Humanizer.Movement.Enable and os.clock() - self.lastCommand < moveEvery() and order == 2 then
		BlockOrder()
		self.bCount = self.bCount + 1
		Menu.Humanizer:modifyParam("info22", "text", "Total Commands Blocked: "..self.bCount)
		return
	elseif order == 3 then
		if not self:IsOnScreen(target) then
			BlockOrder()
			self.bCount = self.bCount + 1
			Menu.Humanizer:modifyParam("info22", "text", "Total Commands Blocked: "..self.bCount)
			return
		end
	end

	self.lastCommand = os.clock()
end
function Humanizer:OnWndMsg(msg, key)
	if msg == 516 and key == 2 then
        self.okMove = true
    end
end

class "CTargetSelector"
function CTargetSelector:__init()
    CTargetSelector.enemyHeros = GetEnemyHeroes()
    CTargetSelector.championTable = {
        [1] = {"Alistar", "Braum", "DrMundo", "Galio", "Garen", "Leona", "Nautilus", "Shen", "Singed", "Sion", "Poppy", "Rammus", "Skarner", "Tahm Kench", "Taric", "Thresh", "Zac"},
        [2] = {"Aatrox", "Amumu", "Blitzcrank", "Darius", "Gnar", "Gragas", "Illaoi", "Ivern", "Janna", "Kled", "Malphite", "Maokai", "Nami", "Nasus", "Nunu", "Olaf", "Sejuani", "Shyvana", "RekSai", "Renekton", "Swain", "Trundle", "Udyr", "Urgot", "Volibear", "Yorick"},
        [3] = {"Akali", "Anivia", "Bard", "ChoGath", "Ekko", "Elise", "Fiora", "Gangplank", "Hecarim", "Heimerdinger", "Irelia", "JarvanIV", "Jax", "Jayce", "Kassadin", "Kayle", "Lee Sin", "Lissandra", "Lulu", "Mordekaiser", "Morgana", "Nidalee", "Pantheon", "Sona", "Taliyah", "Tryndamere", "Vi", "Vladimir", "Warwick", "Wukong", "XinZhao", "Zilean", "Zyra"},
        [4] = {"Ahri", "Annie", "Aurelion Sol", "Azir", "Camille", "Cassiopeia", "Corki", "Diana", "Evelynn", "Fiddlesticks", "Fizz", "Graves", "Karma", "Karthus", "Katarina", "Kennen", "Kindred", "LeBlanc", "Lux", "Malzahar", "Nocturne", "Orianna", "Ryze", "Shaco", "Riven", "Rengar", "Syndra", "Soraka", "Talon", "Twisted Fate", "Veigar", "VelKoz","Viktor", "Xerath", "Zed", "Ziggs"},
        [5] = {"Ashe", "Brand", "Caitlyn", "Draven", "Ezreal", "Jhin", "Jinx", "Kalista", "KhaZix", "KogMaw", "Lucian", "Master Yi", "Miss Fortune", "Quinn", "Sivir", "Teemo", "Tristana", "Twitch", "Varus", "Vayne", "Yasuo"},
    }
    CTargetSelector.customTarget = nil
    CTargetSelector.stillFocused = false

    Menu:addSubMenu("Target Selection Menu", "Targeting")
    for i, enemy in pairs(self.enemyHeros) do
        local priorityValue = 1
        for i = 1, 5 do
            for key, value in pairs(self.championTable[i]) do
                if string.lower(value) == string.lower(enemy.charName) then
                    priorityValue = i
                end
            end
        end

        Menu.Targeting:addParam(enemy.charName, enemy.charName, SCRIPT_PARAM_SLICE, priorityValue, 1, 5, 0)
    end
    Menu.Targeting:addParam("TargetingInfo", "1 = Low Priority, 5 = Max Priority(You will focus first)", SCRIPT_PARAM_INFO, "")
    Menu.Targeting:addParam("TargetingInfo2", "", SCRIPT_PARAM_INFO, "")
    Menu.Targeting:addParam("Method", "Target Selection Method", SCRIPT_PARAM_LIST, 1,{"NearMouse", "Priority", "LowHPPriority", "LessCastPriority", "Closest" })
end
function CTargetSelector:GetTarget()
    local selectedTarget = nil
    local targetSeed = math.huge

    for i, enemy in pairs(self.enemyHeros) do
        if GetDistanceSqr(enemy) <= ((myHero.range + myHero.boundingRadius) * (myHero.range + myHero.boundingRadius)) then
            if ((enemy.health + enemy.armor) - (enemy.totalDamage * 2 + enemy.ap)) / Menu.Targeting[enemy.charName] < targetSeed then
                targetSeed = ((enemy.health + enemy.armor) - (enemy.totalDamage * 2 + enemy.ap)) / Menu.Targeting[enemy.charName]
                selectedTarget = enemy
            end
        end
    end
    return selectedTarget
end

class "Prediction"
function Prediction:__init()
    _G.predictonTable = {
        ["Predictions"] = {"VPrediction", "FHPrediction", "HPrediction"},
        ["FoundPredictions"] = {},
        ["LoadedPredictions"] = {},
        ["ActivePrediction"] = nil,
    }

	for i=1, #_G.predictonTable.Predictions do
        if FileExist(LIB_PATH .. _G.predictonTable.Predictions[i] .. ".lua") then
            table.insert(_G.predictonTable.FoundPredictions, _G.predictonTable.Predictions[i])
    	end
    end

    Menu.General:addParam("Prediction", "Prediction", SCRIPT_PARAM_LIST, 1, _G.predictonTable.FoundPredictions)
    AddTickCallback(function() self:ActivePrediction() end)
end
function Prediction:ActivePrediction()
    _G.predictonTable.ActivePrediction = _G.predictonTable.Predictions[Menu.General.Prediction]
    for i=1, #_G.predictonTable.LoadedPredictions do
        if _G.predictonTable.LoadedPredictions[i] == _G.predictonTable.ActivePrediction then
            return
        end
    end

    table.insert(_G.predictonTable.LoadedPredictions, _G.predictonTable.ActivePrediction)
    require(_G.predictonTable.ActivePrediction)
    if _G.predictonTable.ActivePrediction == "VPrediction" then
        VPrediction = VPrediction()
    elseif _G.predictonTable.ActivePrediction == "HPrediction" then
        HPrediction = HPrediction()
    end
end
function Prediction:GetLineCastPosition(chero, cdelay, cwidth, crange, cspeed, ccollision, cspellSlot, cpos)
    if _G.predictonTable.ActivePrediction ~= nil then
        if _G.predictonTable.ActivePrediction == "VPrediction" then

            return VPrediction:GetLineCastPosition(chero, cdelay, cwidth, crange, cspeed, cpos or myHero, ccollision)
        elseif _G.predictonTable.ActivePrediction == "FHPrediction" then

            return FHPrediction.GetPrediction(cspellSlot, chero)
        elseif _G.predictonTable.ActivePrediction == "HPrediction" then
            return HPrediction:GetPredict(HPSkillshot({type = "DelayLine", delay = cdelay, range = crange, speed = cspeed, collisionM = ccollision, collisionH = ccollision, width = cwidth}), chero, myHero);
        end
    end
end
function Prediction:GetPredictedHealth(unit, time)
    if _G.predictonTable.ActivePrediction ~= nil then
        if _G.predictonTable.ActivePrediction == "VPrediction" then
            return VPrediction:GetPredictedHealth(unit, time)
        elseif _G.predictonTable.ActivePrediction == "FHPrediction" then
            return FHPrediction.PredictHealth(unit, time)
        end
    end
end
function Prediction:GetPredictedPosistion(hero, delay)
    if _G.predictonTable.ActivePrediction ~= nil then
        if _G.predictonTable.ActivePrediction == "VPrediction" then
            return VPrediction:GetPredictedPos(hero, delay)
        elseif _G.predictonTable.ActivePrediction == "FHPrediction" then
            return FHPrediction.PredictPosition(hero, delay)
        elseif _G.predictonTable.ActivePrediction == "HPrediction" then
            return HPrediction:PredictPos(hero, delay)
        end
    end
end
function Prediction:GetNumberOfObjectCollisions(endPos)
    if _G.predictonTable.ActivePrediction ~= nil then
        if _G.predictonTable.ActivePrediction == "VPrediction" then
            return VPrediction:GetPredictedPos(endPos)
        elseif _G.predictonTable.ActivePrediction == "FHPrediction" then
            return FHPrediction.Collision(myHero, endPos, "R", myHero.team)
        end
    end
end

class "Orbwalker"
function Orbwalker:__init()
    local orbwalker = nil
    Orbwalker.timer = os.clock()

    AddTickCallback(function() self:FindOrbwalker() end)
end
function Orbwalker:FindOrbwalker()
    if orbwalker ~= nil then return end
    if _G.Reborn_Initialised and _G.Reborn_Loaded then
       orbwalker = "SAC:R"
    elseif _G.MMA_IsLoaded then
       orbwalker = "MMA"
    elseif _Pewalk then
       orbwalker = "PEWalk"
    else
        if Orbwalker.timer + 15 <= os.clock() then
            orbwalker = "SX"
            if FileExist(LIB_PATH.."SxOrbWalk.lua") then
                require "SxOrbWalk"
                SxOrb:LoadToMenu(Menu.Orbwalker)
                sxLoaded = true
            else
                DownloadSXOrb()
            end
        end
    end

    if orbwalker ~= nil and not Menu.Orbwalker.CustomKey then
        Menu.Orbwalker:addParam("Orbwalker", orbwalker .. " Detected, Hotkeys integrated", SCRIPT_PARAM_INFO, "")
    elseif orbwalker ~= nil then
        Menu.Orbwalker:addParam("Combo", "Combo Mode", SCRIPT_PARAM_ONKEYDOWN, false, string.byte(" "))
        Menu.Orbwalker:addParam("Harass", "Harass Mode", SCRIPT_PARAM_ONKEYDOWN, false, string.byte("C"))
        Menu.Orbwalker:addParam("Laneclear", "Lane Clear Mode", SCRIPT_PARAM_ONKEYDOWN, false, string.byte("V"))
        Menu.Orbwalker:addParam("Lasthit", "Last Hit", SCRIPT_PARAM_ONKEYDOWN, false, string.byte("X"))
    end
end
function Orbwalker:IsFighting()
    if not Menu.Orbwalker.CustomKey then
        if orbwalker == "SAC:R" then
            return _G.AutoCarry.Keys.AutoCarry
        elseif orbwalker == "MMA" then
            return _G.MMA_IsOrbwalking()
        elseif orbwalker == "PEWalk" then
            return _G._Pewalk.GetActiveMode().Carry
        elseif orbwalker == "SX" then
            return _G.SxOrb.isFight
        end
    else
        return Menu.Orbwalker.Combo
    end
end
function Orbwalker:IsHarassing()
    if not Menu.Orbwalker.CustomKey then
        if orbwalker == "SAC:R" then
            return _G.AutoCarry.Keys.MixedMode
        elseif orbwalker == "MMA" then
            return _G.MMA_IsDualCarrying()
        elseif orbwalker == "PEWalk" then
            return _G._Pewalk.GetActiveMode().Mixed
        elseif orbwalker == "SX" then
            return _G.SxOrb.isHarass
        end
    else
        return Menu.Orbwalker.Harass
    end
end
function Orbwalker:IsLaneClearing()
    if not Menu.Orbwalker.CustomKey then
        if orbwalker == "SAC:R" then
            return _G.AutoCarry.Keys.LaneClear
        elseif orbwalker == "MMA" then
            return _G.MMA_IsLaneClearing()
        elseif orbwalker == "PEWalk" then
            return _G._Pewalk.GetActiveMode().LaneClear
        elseif orbwalker == "SX" then
            return _G.SxOrb.isLaneClear
        end
    else
        return Menu.Orbwalker.LaneClear
    end
end
function Orbwalker:IsLastHitting()
    if not Menu.Orbwalker.CustomKey then
        if orbwalker == "SAC:R" then
            return _G.AutoCarry.Keys.LaneClear
        elseif orbwalker == "MMA" then
            return _G.MMA_IsLaneClearing()
        elseif orbwalker == "PEWalk" then
            return _G._Pewalk.GetActiveMode().LaneClear
        elseif orbwalker == "SX" then
            return _G.SxOrb.isLaneClear
        end
    else
        return Menu.Orbwalker.LaneClear
    end
end
function Orbwalker:GetOrbwalkerTarget()
    if orbwalker == "SAC:R" then
        return _G.AutoCarry.SkillsCrosshair.target
    elseif orbwalker == "MMA" then
        return _G.MMA_Target()
    elseif orbwalker == "PEWalk" then
        return _G._Pewalk.GetTarget(1000, true)
    elseif orbwalker == "SX" then
        return SxOrb:EnableAttacks()
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
    ToUpdate.VersionPath = "/Celtech/BOL/master/EzREAL/version"
    ToUpdate.ScriptPath =  "/Celtech/BOL/master/EzREAL/EzREAL.lua"
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
            self.DownloadStatus = 'Downloading VersionInfo ('..math.round(100/self.Size*DownloadedSize,2)..'%)'
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
