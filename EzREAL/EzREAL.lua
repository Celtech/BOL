if myHero.charName ~= "Ezreal" then return end
assert(load(Base64Decode("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"), nil, "bt", _ENV))()
TrackerLoad("F3lHB1VyjuAmxYnp")

function OnLoad()
    local version = 0.08
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
            Menu.Spell.RMenu:addParam("PlaceHolder", "", SCRIPT_PARAM_INFO, "")
            Menu.Spell.RMenu:addParam("BaseUlt", "Enable base ult", 1, true)
            Menu.Spell.RMenu:addParam("PlaceHolder3", "", SCRIPT_PARAM_INFO, "")
            Menu.Spell.RMenu:addParam("Accuracy", "Prediction Accuracy", SCRIPT_PARAM_SLICE, 2, 0, 2, 0)
            Menu.Spell.RMenu:addParam("PlaceHolder2", "", SCRIPT_PARAM_INFO, "")
            Menu.Spell.RMenu:addParam("EnableSnipe", "Ult to global snipe", 1, true)
            Menu.Spell.RMenu:addParam("SnipeRangeCheckMax", "Global snipe max range check", SCRIPT_PARAM_SLICE, 1500, 300, 9000, 0)
            Menu.Spell.RMenu:setCallback("SnipeRangeCheckMax", function(v)
                Menu.Spell.RMenu:removeParam("SnipeRangeCheckMin")
                Menu.Spell.RMenu:addParam("SnipeRangeCheckMin", "Global snipe min range check", SCRIPT_PARAM_SLICE, 1500, 0, v, 0)
                if Menu.Spell.RMenu.SnipeRangeCheckMin > v then Menu.Spell.RMenu.SnipeRangeCheckMin = v - 300 end
        	end)
            Menu.Spell.RMenu:addParam("SnipeRangeCheckMin", "Global snipe min range check", SCRIPT_PARAM_SLICE, 1200, 0, 9000, 0)
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
    Vip()
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
    self.SpellTable = {
        Q = {range = 1150, speed = 2000, delay = 0.25, radius = 75, collision = true},
        W = {range = 1000, speed = 1550, delay = 0.25, radius = 100, collision = false},
        E = {range = 475, maxRange = 750},
        R = {range = 9999, speed = 2000, delay = 1, radius = 150, collision = false}
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

    AddTickCallback(function() self:OnTick() end)
    AddDrawCallback(function() self:OnDraw() end)
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
end
function Ezreal:OnDraw()
    local function ReturnColor(color) return ARGB(color[1],color[2],color[3],color[4]) end
    if not myHero.dead then
        if Menu.Draw.AASettings.Enabled then
            DrawCircle3D(myHero.x, myHero.y, myHero.z, myHero.range + myHero.boundingRadius, 1, ReturnColor(Menu.Draw.AASettings.CircleColor), 100)
        end
        if Menu.Draw.QSettings.Enabled and self.QState or not Menu.Draw.QSettings.Hide then
            DrawCircle3D(myHero.x, myHero.y, myHero.z, self.SpellTable.Q.range, 1, ReturnColor(Menu.Draw.QSettings.CircleColor), 100)
        end
        if Menu.Draw.WSettings.Enabled and self.WState or not Menu.Draw.WSettings.Hide then
            DrawCircle3D(myHero.x, myHero.y, myHero.z, self.SpellTable.W.range, 1, ReturnColor(Menu.Draw.WSettings.CircleColor), 100)
        end
        if Menu.Draw.ESettings.Enabled and self.EState or not Menu.Draw.ESettings.Hide then
            DrawCircle3D(myHero.x, myHero.y, myHero.z, self.SpellTable.E.range, 1, ReturnColor(Menu.Draw.ESettings.CircleColor), 100)
        end
        if Menu.Draw.ESettings.Enabled and self.EState or not Menu.Draw.ESettings.Hide then
            DrawCircle3D(myHero.x, myHero.y, myHero.z, self.SpellTable.E.maxRange, 1, ReturnColor(Menu.Draw.ESettings.CircleColor), 100)
        end
        if Menu.Draw.RSettings.Enabled and self.RState or not Menu.Draw.RSettings.Hide then
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
function Ezreal:CastQ(target)
    if self.QState then
        local CastPosition, HitChance, Info = Prediction:GetLineCastPosition(target, self.SpellTable.Q.delay, self.SpellTable.Q.radius, self.SpellTable.Q.range, self.SpellTable.Q.speed, self.SpellTable.Q.collision, "Q")
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
    local function findIceBorn()
        for i=ITEM_1, ITEM_7 do
            local itemSlot = myHero:getItem(i)
            if itemSlot and itemSlot.name:lower():find(string.lower("Iceborn Gauntlet")) then
                return i
            end
        end

        return nil
    end

    if Menu.Hotkeys.FleeKey then
        myHero:MoveTo(mousePos.x, mousePos.z)

        if Menu.Spell.QMenu.EnableFlee then
            local icebornSlot = findIceBorn()
            if icebornSlot then
                self:CastQ()
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
    self.enemyHeroes = GetEnemyHeroes()
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
function ItemsAndSummoners:CleanseCC(source, unit, buff)
	if not buff or not source or not source.valid or not unit or not unit.valid then return end
	if unit.isMe and (Menu.Items.CleanseSettings.Enable == 3 or Menu.Items.CleanseSettings.Enable == 2 and Libraries:ComboKey()) then
        if (source.charName == "Rammus" and buff.type ~= 8) or source.charName == "Alistar" or source.charName:lower():find("baron") or source.charName:lower():find("spiderboss") or source.charName == "LeeSin" or (source.charName == "Hecarim" and not buff.name:lower():find("fleeslow")) then return end
		if buff.name and ((not cleanse and buff.type == 24) or buff.type == 5 or buff.type == 11 or buff.type == 22 or buff.type == 21 or buff.type == 8) or (buff.type == 25 and Menu.Items.CleanseSettings.Blind)
		or (buff.type == 10 and buff.name and buff.name:lower():find("fleeslow")) then
		--or (Menu.Items.CleanseSettings.Exhaust and buff.name and buff.name:lower():find("summonerexhaust")) then
			if buff.name and buff.name:lower():find("caitlynyor") and CountEnemiesNearUnitReg(myHero, 700) == 0   then
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

class "Vip"
function Vip:__init()
    if _G.Lulzlib then
        self.gameVersion = GetGameVersion():sub(1,10)

        self.recallTimes = {
            ['recall'] = 8,
            ['odinrecall'] = 4.5,
            ['odinrecallimproved'] = 4.0,
            ['recallimproved'] = 7.0,
            ['superrecall'] = 4.0,
            ['teleport'] = 4.5,
        }
        self.ActiveRecalls = {}
        self.BaseSpots = {
            D3DXVECTOR3(396,182.132,462),
            D3DXVECTOR3(14340.418,171.9777,14391.075)
        }

        if VIP_USER then
        	if _G.Lulzlib.packets[self.gameVersion] ~= nil then
                AddRecvPacketCallback2(function(p) self:BaseUltRecvPacket(p) end)
                AddDrawCallback(function() self:BaseUltOnDraw() end)
                AddTickCallback(function() self:BaseUltDoUlt() end)
            else
                Log("Your packets are out of date! Packet features will cease to function. Please wait for a library update to be posted!")
            end
        else
            Log("Base ult will be disabled, you need to be a VIP user to use this function!")
        end
    end
end
function Vip:BaseUltRecvPacket(p)
	if p.header == _G.Lulzlib.packets[self.gameVersion].Recall.Header then
		p.pos = _G.Lulzlib.packets[self.gameVersion].Recall.pos
        local ptemp = CLoLPacket(0x00)
		for i=4, 1, -1 do
            ptemp:Encode1(_G.Lulzlib.packets[self.gameVersion].Recall.bytes[p:Decode1()])
		end
        ptemp.pos = ptemp.pos - 4
		local o = objManager:GetObjectByNetworkId(ptemp:DecodeF())

		if o and o.valid and o.type == 'AIHeroClient' and o.team == TEAM_ENEMY then
			p.pos = _G.Lulzlib.packets[self.gameVersion].Recall.tpPos
			local isTP = p:Decode1() == _G.Lulzlib.packets[self.gameVersion].Recall.isTP
			local str = ''
			if not isTP then
				p.pos=_G.Lulzlib.packets[self.gameVersion].Recall.stringPos
				for i=1, p.size do
					local b = p:Decode1()
					if b == 0 then break end
					str=str..string.char(b)
				end
			else
				str = 'teleport'
			end
			if self.recallTimes[str:lower()] then
                if Menu.General.Verbose then
                    Log(o.charName .. " is recalling")
                end
				self.ActiveRecalls[o.networkID] = {
					name = o.charName,
					startT = os.clock(),
					duration = self.recallTimes[str:lower()],
					endT = os.clock() + self.recallTimes[str:lower()],
                    startHP = o.health,
                    hpRegen = o.hpRegen,
                    object = o,
					isTP = isTP
				}
				return
			elseif self.ActiveRecalls[o.networkID] then
                if Menu.General.Verbose and os.clock() - self.ActiveRecalls[o.networkID].endT >= -0.01  then
                    Log(o.charName .. " recalled")
                elseif Menu.General.Verbose then
                    Log(o.charName .. " cancled recall")
                end
				self.ActiveRecalls[o.networkID] = nil

			end
		end
	end
end
function Vip:BaseUltOnDraw()
    if not myHero.dead and Menu.Spell.RMenu.BaseUlt then
        for i, enemy in pairs(self.ActiveRecalls) do
            if self:BaseUltPredictIfUltCanKill(enemy) then
                self:BaseUltProgressBar(500,500,(enemy.endT - os.clock()) / 7.9 * 100, enemy.name, ((GetDistance(myHero, self:BaseUltGetBaseCoords()) / 2000) + 1) / 8 * 100)
            end
        end
    end
end
function Vip:BaseUltDoUlt()
    if not myHero.dead and Menu.Spell.RMenu.BaseUlt then
        self.time = GetDistance(myHero, self.BaseSpots[2]) / 2000
        for i, snipeTarget in pairs(self.ActiveRecalls) do
            if (snipeTarget.endT - os.clock()) <= self.time + 1 and (snipeTarget.endT - os.clock()) >= self.time + .5 and self:BaseUltPredictIfUltCanKill(snipeTarget) then
                CastSpell(_R, self:BaseUltGetBaseCoords().x, self:BaseUltGetBaseCoords().z)
            end
        end
    end
end
function Vip:BaseUltGetBaseCoords()
    if myHero.team == 100 then
        return self.BaseSpots[2]
    else
        return self.BaseSpots[1]
    end
end
function Vip:BaseUltProgressBar(x, y, percent, text, tick)
    DrawRectangle(x, y - 5, 300, 40, ARGB(255,100,100,100))
    DrawRectangle(x + 5, y, 290, 30, ARGB(255,30,30,30))
    DrawRectangle(x + 5, y, (percent/100)*290, 30, ARGB(255,255,0,0))
    DrawRectangle(x + (6.9 / 7.9 * 290), y, (100/100)*290 - x + (6.9 / 7.9 * 290), 30, ARGB(100,30,30,30))
    if tick <= 100 then
        DrawRectangle(x + 5 + (tick/100)*290, y, 2, 30, ARGB(255,0,255,0))
    else
        DrawRectangle(x + 5 + (100/100)*290, y, 2, 30, ARGB(255,0,255,0))
    end
    DrawText(text,20,y + 8,x + 5,ARGB(255,255,255,255))
end
function Vip:BaseUltPredictIfUltCanKill(target)
    if myHero.charName == "Ezreal" or myHero.charName == "Jinx" or myHero.charName == "Draven" or myHero.charName == "Ashe" then
        if Ezreal:GetDamage(_R, target.object) > target.startHP + (target.hpRegen * 7.9)  then
            return true
        else
            return false
        end
    end
end

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
	elseif order == 2 then
		if not self:IsOnScreen(position) then
			BlockOrder()
			self.bCount = self.bCount + 1
			Menu.Humanizer:modifyParam("info22", "text", "Total Commands Blocked: "..self.bCount)
			return
		end
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
        if Orbwalker.timer + 3 <= os.clock() then
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
            if sxLoaded then return _G.SxOrb.isLaneClear end
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
