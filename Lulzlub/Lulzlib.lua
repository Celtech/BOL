class "Lulzlib"
function Lulzlib:__init()
    self.version = .08

    self.pi, self.pi2, self.sin, self.cos, self.huge, self.sqrt, self.floor, self.ceil, self.max, self.random, self.round, self.atan = math.pi, 2*math.pi, math.sin, math.cos, math.huge, math.sqrt, math.floor, math.ceil, math.max, math.random, math.round, math.atan
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
function Lulzlib:BoolToInt(var)
    return var and 1 or 0
end
function Lulzlib:CreateBaseMenu()
    _G.LulzMenu = scriptConfig("Lulz"..myHero.charName, myHero.charName .. "lulz")
    LulzMenu:addSubMenu("Drawing Menu", "Draw")
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
    LulzMenu:addParam("Taunt", "Taunt On Kill", SCRIPT_PARAM_LIST, 1,{"None","Dance","Taunt","Laugh","Joke"})
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

class "recallTracker"
function recallTracker:__init()
	self.enemyHeros = GetEnemyHeroes()
	self.recallStatus = {}
	self.recallTimes = {
		['recall'] = 7.9,
		['odinrecall'] = 4.4,
		['odinrecallimproved'] = 3.9,
		['recallimproved'] = 6.9,
		['superrecall'] = 3.9,
	}
    self.activeRecalls = {}
    self.lasttime={}
	
	for i, enemy in pairs(self.enemyHeros) do
    	self.recallStatus[enemy.charName] = enemy.recall
    end
	
	AddTickCallback(function()
    	for i, enemy in pairs(self.enemyHeros) do
    		if enemy.recall ~= self.recallStatus[enemy.charName] then
    			self:track(enemy, enemy.recall)
    		end
    		self.recallStatus[enemy.charName] = enemy.recall
    	end
    end)
end
function recallTracker:track(Hero, Status)
	local o = Hero
	if o and o.valid and o.type == 'AIHeroClient' then
		local str = Status 
		if self.recallTimes[str:lower()] then
			if LulzMenu.General.Verbose then
				Lulzlib:Log(o.charName.." is recalling." )
			end
			self.activeRecalls[o.networkID] = {
            					name = o.charName,
            					startT = os.clock(),
            					duration = self.recallTimes[str:lower()],
            					endT = os.clock() + self.recallTimes[str:lower()],
                                startHP = o.health,
                                hpRegen = o.hpRegen,
                                object = o
            				}
			return
		elseif self.activeRecalls[o.networkID] then
			if self.activeRecalls[o.networkID] and self.activeRecalls[o.networkID].endT > os.clock() then
				if LulzMenu.General.Verbose then
					Lulzlib:Log(self.activeRecalls[o.networkID].name.." canceled recall")
				end
				recallTime,recallName,blockName,self.activeRecalls[o.networkID] = nil,nil,nil,nil
			else
				if LulzMenu.General.Verbose then
					Lulzlib:Log(self.activeRecalls[o.networkID].name.." finished recall")
				end
				recallTime,recallName,blockName,self.activeRecalls[o.networkID] = nil,nil,nil,nil
				return
			end
		end
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
        [4] = {"Aatrox", "Amumu", "Blitzcrank", "Darius", "Gnar", "Gragas", "Illaoi", "Ivern", "Janna", "Kled", "Malphite", "Maokai", "Nami", "Nasus", "Nunu", "Olaf", "Sejuani", "Shyvana", "Rakan", "RekSai", "Renekton", "Swain", "Trundle", "Udyr", "Urgot", "Volibear", "Yorick"},
        [3] = {"Akali", "Anivia", "Bard", "ChoGath", "Ekko", "Elise", "Fiora", "Gangplank", "Hecarim", "Heimerdinger", "Irelia", "JarvanIV", "Jax", "Jayce", "Kassadin", "Kayle", "Lee Sin", "Lissandra", "Lulu", "Mordekaiser", "Morgana", "Nidalee", "Pantheon", "Sona", "Taliyah", "Tryndamere", "Vi", "Vladimir", "Warwick", "Wukong", "XinZhao", "Zilean", "Zyra"},
        [2] = {"Ahri", "Annie", "Aurelion Sol", "Azir", "Camille", "Cassiopeia", "Corki", "Diana", "Evelynn", "Fiddlesticks", "Fizz", "Graves", "Karma", "Karthus", "Katarina", "Kennen", "Kindred", "LeBlanc", "Lux", "Malzahar", "Nocturne", "Orianna", "Ryze", "Shaco", "Riven", "Rengar", "Syndra", "Soraka", "Talon", "Twisted Fate", "Veigar", "VelKoz","Viktor", "Xerath", "Zed", "Ziggs"},
        [1] = {"Ashe", "Brand", "Caitlyn", "Draven", "Ezreal", "Jhin", "Jinx", "Kalista", "KhaZix", "KogMaw", "Lucian", "Master Yi", "Miss Fortune", "Quinn", "Sivir", "Teemo", "Tristana", "Twitch", "Varus", "Vayne", "Xayah", "Yasuo"},
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
            LulzMenu.Targeting:addParam(CTargetSelector.enemyHeros[i].charName, CTargetSelector.enemyHeros[i].charName, SCRIPT_PARAM_SLICE, 1, 1, 5, 0)
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
	
	DelayAction(function()
		LulzMenu.Hotkeys:addParam("PlaceHolder", "", SCRIPT_PARAM_INFO, "")
		LulzMenu.Hotkeys:addParam("CustomKey", "Use Custom Combat Keys", SCRIPT_PARAM_ONOFF, false)
		LulzMenu.Hotkeys:setCallback("CustomKey", function(v)
			if v == true then
				LulzMenu.Hotkeys:removeParam("Orbwalker")
				LulzMenu.Hotkeys:addParam("Combo", "Combo Mode", SCRIPT_PARAM_ONKEYDOWN, false, string.byte(" "))
				LulzMenu.Hotkeys:addParam("Harass", "Harass Mode", SCRIPT_PARAM_ONKEYDOWN, false, string.byte("C"))
				LulzMenu.Hotkeys:addParam("Laneclear", "Lane Clear Mode", SCRIPT_PARAM_ONKEYDOWN, false, string.byte("V"))
				LulzMenu.Hotkeys:addParam("Lasthit", "Last Hit", SCRIPT_PARAM_ONKEYDOWN, false, string.byte("X"))
			elseif v == false then
				LulzMenu.Hotkeys:addParam("Orbwalker", orbwalker .. " Detected, Hotkeys integrated", SCRIPT_PARAM_INFO, "")
				LulzMenu.Hotkeys:removeParam("Combo")
				LulzMenu.Hotkeys:removeParam("Harass")
				LulzMenu.Hotkeys:removeParam("Laneclear")
				LulzMenu.Hotkeys:removeParam("Lasthit")
			end
		end)
	end,2)


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
        if Orbwalker.timer + 20 <= _G.Lulzlib.clock() then
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
	
	if orbwalker ~= nil and not LulzMenu.Hotkeys.CustomKey then
		DelayAction(function() LulzMenu.Hotkeys:addParam("Orbwalker", orbwalker .. " Detected, Hotkeys integrated", SCRIPT_PARAM_INFO, "") end, 2)
	elseif orbwalker ~= nil then
		DelayAction(function()
			LulzMenu.Hotkeys:addParam("Combo", "Combo Mode", SCRIPT_PARAM_ONKEYDOWN, false, string.byte(" "))
			LulzMenu.Hotkeys:addParam("Harass", "Harass Mode", SCRIPT_PARAM_ONKEYDOWN, false, string.byte("C"))
			LulzMenu.Hotkeys:addParam("Laneclear", "Lane Clear Mode", SCRIPT_PARAM_ONKEYDOWN, false, string.byte("V"))
			LulzMenu.Hotkeys:addParam("Lasthit", "Last Hit", SCRIPT_PARAM_ONKEYDOWN, false, string.byte("X"))
		end, 2)
	end
end
function Orbwalker:IsFighting()
    if not LulzMenu.Hotkeys.CustomKey then
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
        return LulzMenu.Hotkeys.Combo
    end
end
function Orbwalker:IsHarassing()
    if not LulzMenu.Hotkeys.CustomKey then
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
        return LulzMenu.Hotkeys.Harass
    end
end
function Orbwalker:IsLaneClearing()
    if not LulzMenu.Hotkeys.CustomKey then
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
        return LulzMenu.Hotkeys.LaneClear
    end
end
function Orbwalker:IsLastHitting()
    if not LulzMenu.Hotkeys.CustomKey then
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
        return LulzMenu.Hotkeys.LaneClear
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
        ["Predictions"] = {{"VPrediction", 2, 1, 3, 0}, {"FHPrediction", 1.1, 1, 2, 2}, {"HPrediction", 1.05, 0, 3, 2}, {"TRPrediction", 0, 0, 0, 0}, {"KPrediction", 1.75, 0, 3, 2}},
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
            self.menuItems[i]:modifyParam("Accuracy", "max",  _G.predictonTable.Predictions[v][4])
            self.menuItems[i]:modifyParam("Accuracy", "idc",  _G.predictonTable.Predictions[v][5])
			if _G.predictonTable.FoundPredictions[v] == "TRPrediction" then
				self.menuItems[i]:modifyParam("Accuracy", "text",  "TRPrediction can't be changed")
			else
				self.menuItems[i]:modifyParam("Accuracy", "text",  "Prediction Accuracy")
			end
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
            return activePrediction:GetPrediction(TR_BindSS({type = 'IsLinear', delay = spellTable.delay, range = spellTable.range, width = spellTable.width, speed = spellTable.speed, allowedCollisionCount = math.huge}), target, myHero),100
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
            return activePrediction:GetPrediction(TR_BindSS({type = 'IsRadial', delay = spellTable.delay, range = spellTable.range, radius = spellTable.radius, speed = spellTable.speed, allowedCollisionCount = math.huge}), target, myHero)
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
            return activePrediction:GetPrediction(TR_BindSS({type = 'IsConic', delay = spellTable.delay, range = spellTable.range, angle = spellTable.angle , speed = spellTable.speed, allowedCollisionCount = math.huge}), target, myHero)
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
            return TRPrediction:GetUnitPosition(hero, delay, false)
        elseif _G.predictonTable.ActivePrediction == "KPrediction" then
            return activePrediction:GetPos(hero, delay)
        end
    end
end
