class "Lulzlib"
function Lulzlib:__init()
    self.version = .06

    self.pi, self.pi2, self.sin, self.cos, self.huge, self.sqrt, self.floor, self.ceil, self.max, self.random, self.round = math.pi, 2*math.pi, math.sin, math.cos, math.huge, math.sqrt, math.floor, math.ceil, math.max, math.random, math.round
    self.clock = os.clock
    self.pairs, self.ipairs = pairs, ipairs
    self.insert, self.remove = table.insert, table.remove
end
function Lulzlib:IsQReady()
    return myHero:CanUseSpell(_Q) == READY
end
function Lulzlib:IsWReady()
    return myHero:CanUseSpell(_W) == READY
end
function Lulzlib:IsEReady()
    return myHero:CanUseSpell(_E) == READY
end
function Lulzlib:IsRReady()
    return myHero:CanUseSpell(_R) == READY
end
function Lulzlib:ManaPercent()
    return myHero.mana / myHero.maxMana * 100
end
function Lulzlib:ReturnColor(color)
    return ARGB(color[1],color[2],color[3],color[4])
end
function Lulzlib:Log(message)
    print("<font color='#FF0000'>["..myHero.charName.."]</font> <font color='#FFFFFF'>"..message.."</font>")
end
function Lulzlib:CreateBaseMenu()
    _G.LulzMenu = scriptConfig("Lulz"..myHero.charName, myHero.charName .. "lulz")
    LulzMenu:addSubMenu("Drawing Menu", "Draw")
        LulzMenu.Draw:addSubMenu("AA Settings", "AA")
            LulzMenu.Draw.AA:addParam("Enabled", "Draw AA Range", 1, true)
            LulzMenu.Draw.AA:addParam("CircleColor", "Circle color", SCRIPT_PARAM_COLOR, {255,255,0,0})
        LulzMenu.Draw:addSubMenu("Q Settings", "Q")
            LulzMenu.Draw.Q:addParam("Enabled", "Draw Range", 1, true)
            LulzMenu.Draw.Q:addParam("Hide", "Don't Draw When Not Castable", 1, true)
            LulzMenu.Draw.Q:addParam("CircleColor", "Circle color", SCRIPT_PARAM_COLOR, {255,255,255,0})
        LulzMenu.Draw:addSubMenu("W Settings", "W")
            LulzMenu.Draw.W:addParam("Enabled", "Draw Range", 1, true)
            LulzMenu.Draw.W:addParam("Hide", "Don't Draw When Not Castable", 1, true)
            LulzMenu.Draw.W:addParam("CircleColor", "Circle color", SCRIPT_PARAM_COLOR, {255,255,0,255})
        LulzMenu.Draw:addSubMenu("E Settings", "E")
            LulzMenu.Draw.E:addParam("Enabled", "Draw range", 1, true)
            LulzMenu.Draw.E:addParam("Hide", "Don't draw when not castable", 1, true)
        LulzMenu.Draw:addSubMenu("R Settings", "R")
            LulzMenu.Draw.R:addParam("Enabled", "Draw Range", 1, true)
            LulzMenu.Draw.R:addParam("Hide", "Don't Draw When Not Castable", 1, true)
            LulzMenu.Draw.R:addParam("CircleColor", "Circle color", SCRIPT_PARAM_COLOR, {255,0,255,255})
        LulzMenu.Draw:addParam("PlaceHolder", "", SCRIPT_PARAM_INFO, "")
        LulzMenu.Draw:addParam("StreamMode", "Enable Streaming Mode(F7)", SCRIPT_PARAM_ONKEYTOGGLE, false, 118)
        LulzMenu.Draw:addParam("DrawTarget", "Draw Target", 1, true)
        LulzMenu.Draw:addParam("LowFPS", "Use LowFPS Circles", 1, true)
        LulzMenu.Draw:addParam("Quality", 'LowFPS Circle Quality', SCRIPT_PARAM_SLICE, 20, 10, 200, 0)
    LulzMenu:addSubMenu("Spells Menu & Masteries", "Spell")
        LulzMenu.Spell:addSubMenu("Q Menu", "QMenu")
        LulzMenu.Spell:addSubMenu("W Menu", "WMenu")
        LulzMenu.Spell:addSubMenu("E Menu", "EMenu")
        LulzMenu.Spell:addSubMenu("R Menu", "RMenu")
    LulzMenu:addSubMenu("Items Menu", "Items")
        LulzMenu.Items:addSubMenu("Offensive Items", "OffensiveItems")
            LulzMenu.Items.OffensiveItems:addParam("Enable", "Use items during", SCRIPT_PARAM_LIST, 3,{"Never","Combo","Combo+Harass"})
			LulzMenu.Items.OffensiveItems:addParam("HealthPercent", "If my health % is less than", SCRIPT_PARAM_SLICE, 85, 0, 100, decimalPlace)
			LulzMenu.Items.OffensiveItems:addParam("EnemyHealthPercent", "If target health % is less than", SCRIPT_PARAM_SLICE, 85, 0, 100, decimalPlace)
        LulzMenu.Items:addSubMenu("Defensive Items", "DefensiveItems")
            LulzMenu.Items.DefensiveItems:addParam("Enable", "Use items during", SCRIPT_PARAM_LIST, 3,{"Never","Combo","Combo+Harass"})
            LulzMenu.Items.DefensiveItems:addParam("HealthPercent", "If my health % is less than", SCRIPT_PARAM_SLICE, 50, 0, 100, decimalPlace)
            LulzMenu.Items.DefensiveItems:addParam("NegateCC", "Use to negate CC if cleanse is down", 1, true)
        LulzMenu.Items:addSubMenu("QSS/Cleanse Settings", "CleanseSettings")
            LulzMenu.Items.CleanseSettings:addParam("Enable", "Remove CC", SCRIPT_PARAM_LIST, 3,{"Never","Combo","Always"})
            LulzMenu.Items.CleanseSettings:addParam("Blitz", "Remove Rocket Grab", SCRIPT_PARAM_ONOFF, false)
            LulzMenu.Items.CleanseSettings:addParam("Blind", "Remove Blind", SCRIPT_PARAM_ONOFF, false)
            LulzMenu.Items.CleanseSettings:addParam("Delay", "Humanizer delay (ms)", SCRIPT_PARAM_SLICE, 0, 0, 500, 0)
        LulzMenu.Items:addSubMenu("Auto Warding", "Warding")
            LulzMenu.Items.Warding:addParam("Enable", "Auto ward on vision lost", SCRIPT_PARAM_LIST, 3,{"Never","Combo","Always"})
            LulzMenu.Items.Warding:addParam("Delay", "Humanizer delay (ms)", SCRIPT_PARAM_SLICE, 250, 0, 1000, 0)

        LulzMenu.Items:addParam("PlaceHolder", "", SCRIPT_PARAM_INFO, "")
    	LulzMenu.Items:addParam("AutoPotion", "Auto Health Pot", SCRIPT_PARAM_LIST, 2,{"Never","Combo","Always"})
    	LulzMenu.Items:addParam("HealthPercent", "Pot If My Health % is <", SCRIPT_PARAM_SLICE, 50, 0, 100, decimalPlace)
    LulzMenu:addSubMenu("General Menu", "General")
        LulzMenu.General:addSubMenu("Auto Leveler", "Level")
            LulzMenu.General.Level:addParam("Enable", "Enable Auto Leveler", 1, true)
            LulzMenu.General.Level:addParam("Ignore", "Ignore First 3 Levels", 1, true)
            LulzMenu.General.Level:addParam("Sequence", "Leveling Sequence", SCRIPT_PARAM_LIST, 1,{'Q>E>W', 'Q>W>E', 'W>Q>E', 'W>E>Q', 'E>Q>W', 'E>W>Q'})
        LulzMenu.General:addSubMenu("Auto Buy", "Buy")
            LulzMenu.General.Buy:addParam("StartingItems", "Purchase Starting Items", 1, true)
		    LulzMenu.General.Buy:addParam("TrinketSwitch", "Auto Switch Trinket At 9", SCRIPT_PARAM_LIST, 2, {"Off","Blue","Red"})
        LulzMenu.General:addParam("PlaceHolder", "", SCRIPT_PARAM_INFO, "")
        LulzMenu.General:addParam("Lane", "Get to lane faster", 1, true)
        LulzMenu.General:addParam("Verbose", "Track enemy recall in chat", 1, true)
    LulzMenu:addSubMenu("Hotkeys Menu", "Hotkeys")
         LulzMenu.Hotkeys:addParam("FleeKey", "Flee Mode", SCRIPT_PARAM_ONKEYDOWN, false, string.byte("G"))
    LulzMenu:addParam("PlaceHolder", "", SCRIPT_PARAM_INFO, "")
    LulzMenu:addParam("Taunt", "Taunt On Kill", SCRIPT_PARAM_LIST, 1,{"None","Dance","Taunt","Laugh","Joke","Mastery"})
    LulzMenu:addParam("Skins", 'Skin Changer', SCRIPT_PARAM_SLICE, 0, 0, 25, 0)
    LulzMenu:setCallback("Skins", function(v)
        SetSkin(myHero, v - 1)
    end)
end
function Lulzlib:RenderCircle(skill)
    if LulzMenu.Draw.LowFPS then
        DrawCircle3D(myHero.x, myHero.y, myHero.z, _G[myHero.charName].SpellTable[skill].range, 1, self:ReturnColor(LulzMenu.Draw[skill].CircleColor), LulzMenu.Draw.Quality)
    else
        DrawCircle(myHero.x, myHero.y, myHero.z, _G[myHero.charName].SpellTable[skill].range, self:ReturnColor(LulzMenu.Draw[skill].CircleColor))
    end
end
function Lulzlib:GetDamage(spell, unit)
    if spell == "ALL" then
        local sum = 0
          for spell, func in pairs(_G[myHero.charName].spellDmg) do
            sum = sum + (func(unit) or 0)
          end
         return sum
       else
          return _G[myHero.charName].spellDmg[spell](unit) or 0
       end
end
