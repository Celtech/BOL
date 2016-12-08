function OnLoad()
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
        Menu.Draw:addParam("StreamMode", "Enable Streaming Mode(F7)", SCRIPT_PARAM_ONKEYTOGGLE, false, 118)
        Menu.Draw:addParam("DrawTarget", "Draw Target", 1, true)
    Menu:addSubMenu("Spells Menu", "Spell")
        Menu.Spell:addSubMenu("Q Menu", "QMenu")
            Menu.Spell.QMenu:addSubMenu("Combo Menu", "ComboMenu")
                Menu.Spell.QMenu.ComboMenu:addParam("Enable", "Use in combo", 1, true)
            Menu.Spell.QMenu:addSubMenu("Mixed Menu", "MixedMenu")
                Menu.Spell.QMenu.MixedMenu:addParam("Enable", "Use in mixed mode", 1, true)
            Menu.Spell.QMenu:addSubMenu("Last Hit Menu", "LastHitMenu")
                Menu.Spell.QMenu.LastHitMenu:addParam("Enable", "Use in last hit", 1, true)
            Menu.Spell.QMenu:addSubMenu("Clear Menu", "ClearMenu")
                Menu.Spell.QMenu.ClearMenu:addParam("Enable", "Use in clear", 1, true)
        Menu.Spell:addSubMenu("W Menu", "WMenu")
            Menu.Spell.WMenu:addSubMenu("Combo Menu", "ComboMenu")
            Menu.Spell.WMenu:addSubMenu("Mixed Menu", "MixedMenu")
            Menu.Spell.WMenu:addSubMenu("Last Hit Menu", "LastHitMenu")
            Menu.Spell.WMenu:addSubMenu("Clear Menu", "ClearMenu")
        Menu.Spell:addSubMenu("E Menu", "EMenu")
            Menu.Spell.EMenu:addSubMenu("Combo Menu", "ComboMenu")
            Menu.Spell.EMenu:addSubMenu("Mixed Menu", "MixedMenu")
            Menu.Spell.EMenu:addSubMenu("Last Hit Menu", "LastHitMenu")
            Menu.Spell.EMenu:addSubMenu("Clear Menu", "ClearMenu")
        Menu.Spell:addSubMenu("R Menu", "RMenu")
            Menu.Spell.RMenu:addSubMenu("Combo Menu", "ComboMenu")
            Menu.Spell.RMenu:addSubMenu("Mixed Menu", "MixedMenu")
            Menu.Spell.RMenu:addSubMenu("Last Hit Menu", "LastHitMenu")
            Menu.Spell.RMenu:addSubMenu("Clear Menu", "ClearMenu")
            Menu.Spell.RMenu:addParam("RangeCheck", "Ult range check", SCRIPT_PARAM_SLICE, 1500, 0, 9000, 0)
            Menu.Spell.RMenu:addParam("BaseUlt", "Enable base ult", 1, true)
    Menu:addSubMenu("Hotkeys Menu", "Hotkeys")
        Menu.Hotkeys:addParam("ForceUlt", "Force Ult", SCRIPT_PARAM_ONKEYDOWN, false, string.byte("T"))
    Menu:addSubMenu("Items Menu", "Items")
        Menu.Items:addSubMenu("Auto Warding", "Warding")
            Menu.Items.Warding:addParam("Enable", "Auto ward on vision lost", SCRIPT_PARAM_LIST, 3,{"Never","Combo","Always"})
            Menu.Items.Warding:addParam("Delay", "Ward Humanizer delay (ms)", SCRIPT_PARAM_SLICE, 250, 0, 1000, 0)
    Menu:addSubMenu("General Menu", "General")
        Menu.General:addSubMenu("Auto Leveler", "Level")
            Menu.General.Level:addParam("Enable", "Enable Auto Leveler", 1, true)
            Menu.General.Level:addParam("Ignore", "Ignore First 3 Levels", 1, true)
            Menu.General.Level:addParam("Sequence", "Leveling Sequence", SCRIPT_PARAM_LIST, 1,{'Q>E>W', 'Q>W>E', 'W>Q>E', 'W>E>Q'})
        Menu.General:addSubMenu("Auto Buy", "Buy")
            Menu.General.Buy:addParam("StartingItems", "Purchase Starting Items", 1, true)
		    Menu.General.Buy:addParam("TrinketSwitch", "Auto Switch to Blue Trinket", 1, true)
        Menu.General:addParam("Verbose", "Track enemy recall in chat", 1, true)
        Menu.General:addParam("Focus", "Left Click To Focus", SCRIPT_PARAM_LIST, 2, {"Never","For 1 Minute", "Until Removed"})

    Menu:addParam("PlaceHolder", "", SCRIPT_PARAM_INFO, "")
    Menu:addParam("Packets", "Enable Packet Features", 1, true)
    Menu:addParam("Taunt", "Taunt On Kill", SCRIPT_PARAM_LIST, 1,{"None","Mastery","Joke","Taunt","Dance","Laugh"})
    Menu:addParam("Skins", 'Skin Changer', SCRIPT_PARAM_LIST, 1,{"Classic", "Nottingham", "Striker", "Frosted", "Explorer", "Pulse Fire", "TPA", "Debonair", "Ace of Spades", "Arcade"})

    CheckUpdates()
    Libraries()

    DelayAction(function()
        if UPDATED and WALKERLOADED and PREDICTIONLOADED then
            Vip()
            Ezreal()
            Warding()
            Core:Log("Loaded v.01")
        end
    end, 11)
end

class "Ezreal"
function Ezreal:__init()
    self.QState = nil
    self.WState = nil
    self.EState = nil

    self.SpellTable = {
        Q = {Range = 1150, Speed = 2000, Collision = true},
        W = {Range = 1000, Speed = 1550, Collision = false},
        E = {Range = 475, MaxRange = 750},
        R = {Range = 9999, Speed = 2000, Collision = false}
    }

    AddTickCallback(function() self:Init() end)
    AddDrawCallback(function() self:OnDraw() end)
    AddTickCallback(function() self:Combo() end)
end
function Ezreal:Init()
    self.QState = myHero:CanUseSpell(_Q)
    self.WState = myHero:CanUseSpell(_W)
    self.EState = myHero:CanUseSpell(_E)
    self.RState = myHero:CanUseSpell(_R)
end
function Ezreal:OnDraw()
    if not myHero.dead then
        if Menu.Draw.AASettings.Enabled then
            DrawCircle3D(myHero.x, myHero.y, myHero.z, myHero.range + myHero.boundingRadius, 1, Core:ReturnColor(Menu.Draw.AASettings.CircleColor), 100)
        end
        if Menu.Draw.QSettings.Enabled and self.QState == READY or not Menu.Draw.QSettings.Hide then
            DrawCircle3D(myHero.x, myHero.y, myHero.z, self.SpellTable.Q.Range, 1, Core:ReturnColor(Menu.Draw.QSettings.CircleColor), 100)
        end
        if Menu.Draw.WSettings.Enabled and self.WState == READY or not Menu.Draw.WSettings.Hide then
            DrawCircle3D(myHero.x, myHero.y, myHero.z, self.SpellTable.W.Range, 1, Core:ReturnColor(Menu.Draw.WSettings.CircleColor), 100)
        end
        if Menu.Draw.ESettings.Enabled and self.EState == READY or not Menu.Draw.ESettings.Hide then
            DrawCircle3D(myHero.x, myHero.y, myHero.z, self.SpellTable.E.Range, 1, Core:ReturnColor(Menu.Draw.ESettings.CircleColor), 100)
        end
        if Menu.Draw.ESettings.Enabled and self.EState == READY or not Menu.Draw.ESettings.Hide then
            DrawCircle3D(myHero.x, myHero.y, myHero.z, self.SpellTable.E.MaxRange, 1, Core:ReturnColor(Menu.Draw.ESettings.CircleColor), 100)
        end
        if Menu.Draw.DrawTarget then
            if Target ~= nil then
                DrawCircle3D(Target.x, Target.y, Target.z, 100, 1, ARGB(255,255,0,0), 100)
            end
        end

        --for i, snipeTarget in pairs(GetEnemyHeroes()) do
            --if self.RState == READY and self:UltDamage(snipeTarget) > snipeTarget.health and GetDistance(snipeTarget) < Menu.Spell.RMenu.RangeCheck then
                --DrawText("You can kill " .. snipeTarget.charName .. "With Ult, Hold T to Ult",50,50,50,ARGB(255,255,0,0))
            --end
        --end
    end
end
function Ezreal:Combo()
    if Libraries:ComboKey() and Target ~= nil then
        if self.WState == READY then
            local CastPosition, HitChance, Position = currentPred:GetLineCastPosition(Target, 0.6, 75, self.SpellTable.W.Range, self.SpellTable.W.Speed, myHero, self.SpellTable.W.Collision)
            if CastPosition and HitChance >= 2 and GetDistance(CastPosition) < self.SpellTable.W.Range then
                CastSpell(_W, CastPosition.x, CastPosition.z)
            end
        end

        if self.QState == READY then
            local CastPosition, HitChance, Position = currentPred:GetLineCastPosition(Target, 0.6, 75, self.SpellTable.Q.Range, self.SpellTable.Q.Speed, myHero, self.SpellTable.Q.Collision)
            if CastPosition and HitChance >= 2 and GetDistance(CastPosition) < self.SpellTable.Q.Range then
                CastSpell(_Q, CastPosition.x, CastPosition.z)
            end
        end

        if self.RState == READY and self:UltDamage(Target) > Target.health then
            local CastPosition, HitChance, Position = currentPred:GetLineCastPosition(Target, 1, 75, self.SpellTable.R.Range, self.SpellTable.R.Speed, myHero, self.SpellTable.R.Collision)
            if CastPosition and HitChance >= 2 and GetDistance(CastPosition) < self.SpellTable.R.Range then
                --CastSpell(_R, CastPosition.x, CastPosition.z)
            end
        end
    end
end
function Ezreal:Mixed()
    if Libraries:HarassKey() and Target ~= nil then
        if self.QState == READY and Menu.Spell.QMenu.MixedMenu.Enable then
            local CastPosition, HitChance, Position = currentPred:GetLineCastPosition(Target, 0.6, 75, self.SpellTable.Q.Range, self.SpellTable.Q.Speed, myHero, self.SpellTable.Q.Collision)
            if CastPosition and HitChance >= 2 and GetDistance(CastPosition) < self.SpellTable.Q.Range then
                CastSpell(_Q, CastPosition.x, CastPosition.z)
            end
        end

        --if self.WState == READY then
        --    local CastPosition, HitChance, Position = currentPred:GetLineCastPosition(Target, 0.6, 75, self.SpellTable.W.Range, self.SpellTable.W.Speed, myHero, self.SpellTable.W.Collision)
        --    if CastPosition and HitChance >= 2 and GetDistance(CastPosition) < self.SpellTable.W.Range then
        --        CastSpell(_W, CastPosition.x, CastPosition.z)
        --    end
        --end
    end
end
function Ezreal:Laneclear()
    --temp
end
function Ezreal:UltDamage(unit)
    local sLvl = myHero:GetSpellData(_R).level
   if sLvl < 1 then return 0 end
   local baseDmg = {350,500,650}
   local trueDmg = baseDmg[sLvl] + (myHero.ap * .9) + (myHero.damage)
   return math.floor(myHero:CalcMagicDamage(unit, trueDmg))
end
function Ezreal:KillSecure()
    for i, snipeTarget in pairs(GetEnemyHeroes()) do
        if self.RState == READY and self:UltDamage(snipeTarget) > snipeTarget.health and GetDistance(snipeTarget) < Menu.Spell.RMenu.RangeCheck and Menu.Hotkeys.ForceUlt then
            local CastPosition, HitChance, Position = currentPred:GetLineCastPosition(snipeTarget, 1, 75, self.SpellTable.R.Range, self.SpellTable.R.Speed, myHero, self.SpellTable.R.Collision)
            if CastPosition and HitChance >= 2 and GetDistance(CastPosition) < self.SpellTable.R.Range then
                CastSpell(_R, CastPosition.x, CastPosition.z)
            end
        end
    end
end

class "Libraries"
function Libraries:__init()
    self.enemyHeroes = GetEnemyHeroes()
    self.sendOnce = true

    predictonTable = {}

    AddLoadCallback(function() self:OnOrbwalker() end)
    AddLoadCallback(function() self:FindLibraries() end)
    AddTickCallback(function() self:OnPrediction() end)
    AddTickCallback(function() self:Targeting() end)
    AddTickCallback(function() self:FocusTarget() end)
    AddDrawCallback(function() self:DrawFocus() end)
    AddMsgCallback(function(m,k) self:OnWndMsg(m,k) end)
end
function Libraries:OnOrbwalker()
	Core:Log("Checking for external Orbwalkers! Please wait!")
	DelayAction(
    function()
		if _G.MMA_IsLoaded  ~= nil then
			Core:Log("MMA Detected!")
			Menu.Hotkeys:addParam("OrbWalker", "MMA, Hoykeys are in your OrbWalker!", SCRIPT_PARAM_INFO, "")
			MMA = true
			WALKERLOADED = true
		elseif _G.AutoCarry ~= nil then
			Core:Log("SAC:R Detected")
			Menu.Hotkeys:addParam("OrbWalker", "SAC:R, Hoykeys are in your OrbWalker!", SCRIPT_PARAM_INFO, "")
			SAC = true
			WALKERLOADED = true
		elseif _G._Pewalk ~= nil then
			Core:Log("Pewalk Detected")
			Menu.Hotkeys:addParam("OrbWalker", "PEWalk, Hoykeys are in your OrbWalker!", SCRIPT_PARAM_INFO, "")
			PEW = true
			WALKERLOADED = true
		elseif FileExist(LIB_PATH.."Nebelwolfi's Orb Walker.lua") then
			Core:Log("Moon Walker Detected")
			require("Nebelwolfi's Orb Walker")
			NebelwolfisOrbWalkerClass(Menu.Hotkeys)
			NOW = true
			WALKERLOADED = true
		elseif FileExist(LIB_PATH.."SxOrbwalk.lua") then
			Core:Log("No external orbwalker found! Activating SxOrbWalker!")
			require("SxOrbWalk")
			SxOrb:LoadToMenu(Menu.Hotkeys)
			SX = true
			WALKERLOADED = true
		else
			WALKERLOADED = false
			local obw_URL = "https://raw.githubusercontent.com/Superx321/BoL/master/common/SxOrbWalk.lua"
			local obw_PATH = LIB_PATH.."SxOrbwalk.lua"
			Core:Log("Downloading SxOrbWalker. Dont press 2xF9! Please wait!")
			DownloadFile(obw_URL, obw_PATH, function() Core:Log("<b><font color=\"#FF0000\">SxOrbWalker downloaded, please reload (2xF9)</b></font>") end)
			return
		end
    end, 10)
end
function Libraries:FindLibraries()
	if FileExist(LIB_PATH .. "VPrediction.lua") then
		table.insert(predictonTable, "VPrediction")
		loadedVP = false
		PREDICTIONLOADED = true
	end

	if FileExist(LIB_PATH .. "SPrediction.lua") then
		table.insert(predictonTable, "SPrediction")
		loadedSP = false
		PREDICTIONLOADED = true
	end

	if FileExist(LIB_PATH .. "HPrediction.lua") then
		table.insert(predictonTable, "HPrediction")
		loadedHP = false
		PREDICTIONLOADED = true
	end

	--if FileExist(LIB_PATH .. "FHPrediction.lua") then
	--	table.insert(predictonTable, "FHPrediction")
	--	loadedFH = false
	--	PREDICTIONLOADED = true
	--end

	if next(predictonTable) == nil then
		PREDICTIONLOADED = false
		local pred_URL = "https://raw.githubusercontent.com/SidaBoL/Scripts/master/Common/VPrediction.lua"
		local pred_PATH = LIB_PATH.."VPrediction.lua"
		Core:Log("You don't seem to have any prediction libraries installed! We'll download VPrediction for you! Dont press 2xF9! Please wait!")
		DownloadFile(pred_URL, pred_PATH, function() Core:Log("VPrediction downloaded, please reload (2xF9)") end)
		return
	end
    Menu.General:addParam("Prediction", "Prediction", SCRIPT_PARAM_LIST, 1, predictonTable)
end
function Libraries:OnPrediction()
	if predictonTable[Menu.General.Prediction] == "VPrediction" and not loadedVP then
		require "VPrediction"
		loadedVP, currentPred = true, VPrediction()
	elseif predictonTable[Menu.General.Prediction] == "SPrediction" and not loadedSP then
		require "SPrediction"
		loadedSP, currentPred = true, SPrediction()
	elseif predictonTable[Menu.General.Prediction] == "HPrediction" and not loadedHP then
		require "HPrediction"
		loadedHP, currentPred = true, HPrediction()
	elseif predictonTable[Menu.General.Prediction] == "FHPrediction" and not loadedFH then
		require "FHPrediction"
		loadedFH, currentPred = true, FHPrediction()
	end
end
function Libraries:ComboKey()
	--if not Menu.hotkeys.checkhk then
		if SX then
			return SxOrb.isFight
		elseif SAC then
			return _G.AutoCarry.Keys.AutoCarry
		elseif PEW then
			return _G._Pewalk.GetActiveMode().Carry
		elseif NOW then
			return _G.NebelwolfisOrbWalker.Config.k.Combo
		elseif MMA then
			return _G.MMA_IsOrbwalking()
		end
	--end
end
function Libraries:HarassKey()
	--if not Menu.hotkeys.checkhk then
        if SX then
            return SxOrb.isHarass
        elseif SAC then
            return _G.AutoCarry.Keys.MixedMode
        elseif PEW then
            return _G._Pewalk.GetActiveMode().Mixed
        elseif NOW then
            return _G.NebelwolfisOrbWalker.Config.k.Harass
        elseif MMA then
            return _G.MMA_IsDualCarrying()
        end
	--end
end
function Libraries:Targeting()
    if SelectedTarget ~= nil and GetDistance(SelectedTarget) < 1500 and not SelectedTarget.dead then
		Target = SelectedTarget
	else
		if SAC then
			Target = _G.AutoCarry.SkillsCrosshair.target
		elseif NOW then
			Target = _G.NebelwolfisOrbWalker:GetTarget()
		elseif PEW then
			Target = _G._Pewalk.GetTarget()
		elseif SX then
			Target = _G.SxOrb:EnableAttacks()
		elseif MMA then
			Target = _G.MMA_Target()
		end
	end
end
function Libraries:ClosestEnemy(pos)
	if pos == nil then return math.huge, nil end
	local closestEnemy, distanceEnemy = nil, math.huge

	for i=1, #self.enemyHeroes do
		if not self.enemyHeroes[i].dead then
			if GetDistance(pos, self.enemyHeroes[i]) < distanceEnemy then
				distanceEnemy = GetDistance(pos, self.enemyHeroes[i])
				closestEnemy = self.enemyHeroes[i]
			end
		end
	end

	return closestEnemy, distanceEnemy
end
function Libraries:OnWndMsg(msg,key)
	if msg == WM_LBUTTONDOWN then
		local enemy, distance = self:ClosestEnemy(mousePos)

		if distance < 150 then
			if SelectedTarget and SelectedTarget.charName == enemy.charName then
				SelectedTarget = nil
			else
				SelectedTarget = enemy
			end
		end
	end
end
function Libraries:FocusTarget()
	if Menu.General.Focus > 1 then
		if self.sendOnce and Menu.General.Focus == 2 then
			DelayAction(function()
				if SelectedTarget ~= nil then
					SelectedTarget = nil
					self.sendOnce = true
				end
			end, 90)
			self.sendOnce = false
		end
	end
end
function Libraries:DrawFocus()
    if SelectedTarget ~= nil and not SelectedTarget.dead then
        if not self.rot then
    		self.rot = 0
    	end
    	self.rot = self.rot + 0.002
    	if self.rot > 6.28318 then
    		self.rot = 0
    	end
        self:DrawTriangle3D(SelectedTarget, ARGB(255,255,0,0), 1, 100,5, 0,0, 0)
    end
end
function Libraries:a2v ( a, m )
  m = m or 1
  local x = math.cos ( a ) * m
  local y = math.sin ( a ) * m
  return x, y
end
function Libraries:DrawTriangle3D(object, color, thickness, size, speed, yshift, ylevel, height)
	local pi = 3.14159
	if not object then object = myHero end
	if not color then color = ARGB(255,255,255,255) end
	if not thickness then thickness = 3 end
	if not size then size = 50 end
	if not speed then speed = 1 else speed = 1-speed end
	local X, Y, Z = object.x, object.y, object.z
	Y = Y + yshift + (self.rot * ylevel)
	local RX1, RZ1 = self:a2v((self.rot*speed), size)
	local RX2, RZ2 = self:a2v((self.rot*speed)+pi*0.3333, size)
	local RX3, RZ3 = self:a2v((self.rot*speed)+pi*0.6666, size)
	local PX1 = X+RX1
	local PZ1 = Z+RZ1
	local PX2 = X+RX2
	local PZ2 = Z+RZ2
	local PX3 = X+RX3
	local PZ3 = Z+RZ3
	local PXT1 = X-(PX1-X)
	local PZT1 = Z-(PZ1-Z)
	local PXT3 = X-(PX3-X)
	local PZT3 = Z-(PZ3-Z)

	DrawLine3D(PXT1, Y, PZT1, PXT3, Y, PZT3, thickness, color)
	DrawLine3D(PXT3, Y, PZT3, PX2, Y, PZ2, thickness, color)
	DrawLine3D(PX2, Y, PZ2, PXT1, Y, PZT1, thickness, color)

	local nY = Y + height
	DrawLine3D(PXT1, nY, PZT1, PXT3, nY, PZT3, thickness, color)
	DrawLine3D(PXT3, nY, PZT3, PX2, nY, PZ2, thickness, color)
	DrawLine3D(PX2, nY, PZ2, PXT1, nY, PZT1, thickness, color)

	DrawLine3D(PXT1, Y, PZT1, PXT1, nY, PZT1, thickness, color)
	DrawLine3D(PXT3, Y, PZT3, PXT3, nY, PZT3, thickness, color)
	DrawLine3D(PX2, Y, PZ2, PX2, nY, PZ2, thickness, color)
end

class "Core"
function Core:ReturnColor(color)
    return ARGB(color[1],color[2],color[3],color[4])
end
function Core:Log(message)
    print("<font color='#ff0000'></b>[EzREAL] </b></font><font color='#00ff00'>"..message.."</font>")
end

class "Warding"
function Warding:__init()
    self.enemies = {}
    self.tick = 0

    for _, k in pairs(GetEnemyHeroes()) do
        self.enemies[k.networkID] = {k.visible, Vector(k), os.clock() + 1, Vector(k.path:Path(2))}
    end

    AddTickCallback(function() self:SightWard(self.enemies, self.tick) end)
end
function Warding:SightWard(enemies, tick)
	if Menu.Items.Warding.Enable == 3 or Menu.Items.Warding.Enable == 2 and Keys:ComboKey() then
		tick = os.clock()+0.125
		for _, k in pairs(GetEnemyHeroes()) do
			if enemies[k.networkID][1] and not k.visible and not k.dead and enemies[k.networkID][3] >= os.clock() and GetDistance(k) < (myHero.range + myHero.boundingRadius+50) then
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
function Warding:GetSlotItemFromName(itemname)
	local slot
	for i = 6, 12 do
		local item = myHero:GetSpellData(i).name
		if ((#item > 0) and (item:lower():find(itemname:lower()))) then
			slot = i
		end
	end
	return slot
end
function Warding:CastWard(wardPos)
	if self:GetSlotItemFromName("ItemGhostWard") and GetInventoryItemIsCastable(myHero:getInventorySlot(self:GetSlotItemFromName("ItemGhostWard"))) then
		wardslot = self:GetSlotItemFromName("ItemGhostWard")
	end

	if self:GetSlotItemFromName("TrinketOrbLvl3") and GetInventoryItemIsCastable(myHero:getInventorySlot(self:GetSlotItemFromName("TrinketOrbLvl3")))  then
		wardslot = self:GetSlotItemFromName("TrinketOrbLvl3")
	end

	if self:GetSlotItemFromName("TrinketTotemLvl1") and GetInventoryItemIsCastable(myHero:getInventorySlot(self:GetSlotItemFromName("TrinketTotemLvl1"))) then
		wardslot = self:GetSlotItemFromName("TrinketTotemLvl1")
	end

	if wardslot then
		DelayAction(function()
			CastSpell(wardslot, wardPos.x, wardPos.z)
		end, Menu.Items.Warding.Delay/1000)
	end
end

class "Vip"
function Vip:__init()
	self.killCount = myHero.kills
    self.lastSkin = 0
    self.firstBuy = true
    self.qOff, self.wOff, self.eOff, self.rOff = 0,0,0,0
    self.packets = {
        ["Items"] = {
            ["Header"] = 0x0040,
            ["VTable"] = 0xF877A0,
            ["Packets"] = {0x8D, 0x12},
            ["ID"] = {
                ["Health Potion"] = {0x00C6,0x000A},
        		["Warding Totem (Trinket)"] = {0x000F,0x001F},
        		["Doran's Blade"] = {0x0000,0x0016},
        		["Blue Trinket"] = {0x0004,0x001F}
            }
        },
        ["Emotes"] = {
            ["Header"] = 0x007C,
            ["VTable"] = 0x103DB08,
            ["Packets"] = {0x5D},
            ["ID"] = {0x11,0x31,0x21,0x01}
        },
        ["Mastery"] = {
            ["Header"] = 0x000A,
            ["VTable"] = 0x1075A14,
            ["Packets"] = {0x5D},
        }
    }

	if (VIP_USER) and Menu.Packets then
        BaseUlt()
        AddTickCallback(function() self:AutoBuy() end)
        AddTickCallback(function() self:TauntOnKill() end)
        AddTickCallback(function() self:SkinChanger() end)
        AddTickCallback(function() self:AutoLeveler() end)
    end
end
function Vip:TauntOnKill()
	if myHero.kills > self.killCount then
		if Menu.Taunt == 2 then
			self:SendMastery()
		elseif Menu.Taunt > 2 then
			self:SendEmote(Menu.Taunt - 2)
		end

		self.killCount = myHero.kills
	end
end
function Vip:SendEmote(id)
	local p = CLoLPacket(self.packets.Emotes.Header)
	p.vTable = self.packets.Emotes.VTable
    p:EncodeF(myHero.networkID)
	p:Encode1(self.packets.Emotes.ID[id])
	SendPacket(p)
end
function Vip:SendMastery()
	local p = CLoLPacket(self.packets.Mastery.Header)
	p.vTable = self.packets.Mastery.VTable
	p:EncodeF(myHero.networkID)
	for i = 1, 4 do p:Encode1(self.packets.Mastery.Packets[1]) end
	SendPacket(p)
end
function Vip:SkinChanger()
    if self.lastSkin ~= Menu.Skins then
        self.lastSkin = Menu.Skins
        SetSkin(myHero, Menu.Skins - 1)
    end
end
function Vip:BuyItem(Item)
   local p = CLoLPacket(self.packets.Items.Header)
   p.vTable = self.packets.Items.VTable
   p:EncodeF(myHero.networkID)
   p:Encode1(self.packets.Items.Packets[1])
   p:Encode1(self.packets.Items.ID[Item][1])
   p:Encode1(self.packets.Items.ID[Item][2])
   for i = 1, 2 do p:Encode1(self.packets.Items.Packets[2]) end
   SendPacket(p)
end
function Vip:AutoBuy()
	if Menu.General.Buy.StartingItems then
		if myHero.level <= 1 and self.firstBuy and InFountain() then
			self:BuyItem("Doran's Blade")
			self:BuyItem("Health Potion")
			self:BuyItem("Warding Totem (Trinket)")
			self.firstBuy = false
		end
	end

	if Menu.General.Buy.TrinketSwitch then
		if myHero.level >= 9 and myHero:GetSpellData(ITEM_7).name ~= "TrinketOrbLvl3" and InFountain() then
			self:BuyItem("Blue Trinket")
		end
	end
end
function Vip:AutoLeveler()
	if Menu.General.Level.Enable then
	if Menu.General.Level.Ignore and myHero.level <= 3 then return end
		self.abilitySequence = {
            {1,3,1,2,1,4,1,3,1,3,4,3,3,2,2,4,2,2},
            {1,2,3,1,1,4,1,2,1,2,4,2,2,3,3,4,3,3},
            {2,1,3,2,2,4,2,1,2,1,4,1,1,3,3,4,3,3},
            {2,3,1,2,2,4,2,3,2,3,4,3,3,1,1,4,1,1}
        }

		local qL, wL, eL, rL = myHero.GetSpellData(myHero,_Q).level + self.qOff, myHero.GetSpellData(myHero,_W).level + self.wOff, myHero.GetSpellData(myHero,_E).level + self.eOff, myHero.GetSpellData(myHero,_R).level + self.rOff
		if qL + wL + eL + rL < myHero.level then
			local spellSlot = { SPELL_1, SPELL_2, SPELL_3, SPELL_4, }

			local level = { 0, 0, 0, 0 }
			for i = 1, myHero.level, 1 do
				level[self.abilitySequence[Menu.General.Level.Sequence][i]] = level[self.abilitySequence[Menu.General.Level.Sequence][i]] + 1
			end

			for i, v in ipairs({ qL, wL, eL, rL }) do
				if v < level[i] then LevelSpell(spellSlot[i]) end
			end
		end
	end
end

class "BaseUlt"
function BaseUlt:__init()
    self.Packets = {
		['Recall'] = {
			['Header'] = 0x00BB,
			['pos'] = 31,
			['stringPos'] = 6,
			['tpPos'] = 22,
			['isTP'] = 0x08,
			['bytes'] = {
				[0x9C] = 0x00,
				[0x9D] = 0x40,
				[0x04] = 0x1A,
				[0x00] = 0x1B,
				[0x0C] = 0x1C,
				[0x08] = 0x1D,
				[0x14] = 0x1E,
				[0x10] = 0x1F,
				[0x1C] = 0x20,
				[0x18] = 0x21,
				[0xE5] = 0x22,
				[0xE1] = 0x23,
				[0x5D] = 0x11,
				[0x24] = 0x12,
				[0x20] = 0x13,
				[0x2C] = 0x14,
				[0x28] = 0x15,
				[0x34] = 0x16,
			},
		}
    }
    self.lshift, self.band, self.bxor = bit32.lshift, bit32.band, bit32.bxor
    self.recallTimes = {
		['recall'] = 7.9,
		['odinrecall'] = 4.4,
		['odinrecallimproved'] = 3.9,
		['recallimproved'] = 6.9,
		['superrecall'] = 3.9,
		['teleport'] = 4.45,
	}
    self.ActiveRecalls = {}

    self.BaseSpots = {
        D3DXVECTOR3(396,182.132,462),
        D3DXVECTOR3(14340.418,171.9777,14391.075)
    }
    AddRecvPacketCallback2(function(p) self:RecvPacket(p) end)
    AddDrawCallback(function() self:OnDraw() end)
    AddTickCallback(function() self:DoUlt() end)
end
function BaseUlt:RecvPacket(p)
	if p.header == self.Packets.Recall.Header then
		p.pos = self.Packets.Recall.pos
		local bytes = {}
		for i=4, 1, -1 do
			bytes[i] = self.Packets.Recall.bytes[p:Decode1()] or 0
		end
		local netID = self.bxor(self.lshift(self.band(bytes[1],0xFF),24),self.lshift(self.band(bytes[2],0xFF),16),self.lshift(self.band(bytes[3],0xFF),8),self.band(bytes[4],0xFF))
		local o = objManager:GetObjectByNetworkId(DwordToFloat(netID))
		if o and o.valid and o.type == 'AIHeroClient' and o.team == TEAM_ENEMY then
			p.pos = self.Packets.Recall.tpPos
			local isTP = p:Decode1() == self.Packets.Recall.isTP
			local str = ''
			if not isTP then
				p.pos=self.Packets.Recall.stringPos
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
                    Core:Log(o.charName .. " is recalling")
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
                if Menu.General.Verbose then
                    Core:Log(o.charName .. " cancled recall")
                end
				self.ActiveRecalls[o.networkID] = nil

			end
		end
	end
end
function BaseUlt:OnDraw()
    if not myHero.dead and Menu.Spell.RMenu.BaseUlt then
        for i, enemy in pairs(self.ActiveRecalls) do
            if BaseUlt:PredictIfUltCanKill(enemy) then
                self:ProgressBar(500,500,(enemy.endT - os.clock()) / 7.9 * 100, enemy.name, ((GetDistance(myHero, self.BaseSpots[2]) / 2000) + 1) / 7.9 * 100)
            end
        end
    end
end
function BaseUlt:DoUlt()
    if not myHero.dead and Menu.Spell.RMenu.BaseUlt then
        self.time = GetDistance(myHero, self.BaseSpots[2]) / 2000
        for i, snipeTarget in pairs(self.ActiveRecalls) do
            if (snipeTarget.endT - os.clock()) <= self.time + 1 and BaseUlt:PredictIfUltCanKill(snipeTarget) then
                CastSpell(_R, self:GetBaseCoords().x, self:GetBaseCoords().z)
            end
        end
    end
end
function BaseUlt:GetBaseCoords()
    if myHero.team == 100 then
        return self.BaseSpots[2]
    else
        return self.BaseSpots[1]
    end
end
function BaseUlt:ProgressBar(x, y, percent, text, tick)
    DrawRectangle(x, y - 5, 300, 40, ARGB(255,100,100,100))
    DrawRectangle(x + 5, y, 290, 30, ARGB(255,30,30,30))
    DrawRectangle(x + 5, y, (percent/100)*290, 30, ARGB(255,255,0,0))
    if tick <= 100 then
        DrawRectangle(x + (tick/100)*290, y, 2, 30, ARGB(255,0,255,0))
    else
        DrawRectangle(x + (100/100)*290, y, 2, 30, ARGB(255,0,255,0))
    end
    DrawText(text,20,y + 8,x + 5,ARGB(255,255,255,255))
end
function BaseUlt:PredictIfUltCanKill(target)
    if Ezreal:UltDamage(target.object) > target.startHP + (target.hpRegen * 7.9) and myHero:CanUseSpell(_R) == READY then
        return true
    else
        return false
    end
end

class "SxScriptUpdate"
function CheckUpdates()
	local ToUpdate = {}
    ToUpdate.Version = .02
    ToUpdate.UseHttps = true
    ToUpdate.Host = "raw.githubusercontent.com"
    ToUpdate.VersionPath = "/Celtech/BOL/master/EzREAL/version"
    ToUpdate.ScriptPath =  "/Celtech/BOL/master/EzREAL/EzREAL.lua"
    ToUpdate.SavePath = SCRIPT_PATH.._ENV.FILE_NAME
    ToUpdate.CallbackUpdate = function(NewVersion,OldVersion) Core:Log("Updated to v"..NewVersion) end
    ToUpdate.CallbackNoUpdate = function(OldVersion) Core:Log("No Updates Found")
        UPDATED = true
    end
    ToUpdate.CallbackNewVersion = function(NewVersion) Core:Log("New Version found ("..NewVersion.."). Please wait until its downloaded then F9x2") end
    ToUpdate.CallbackError = function(NewVersion) Core:Log("Error while Downloading. Please try again.") end
    SxScriptUpdate(ToUpdate.Version,ToUpdate.UseHttps, ToUpdate.Host, ToUpdate.VersionPath, ToUpdate.ScriptPath, ToUpdate.SavePath, ToUpdate.CallbackUpdate,ToUpdate.CallbackNoUpdate, ToUpdate.CallbackNewVersion,ToUpdate.CallbackError)
end
function SxScriptUpdate:__init(LocalVersion,UseHttps, Host, VersionPath, ScriptPath, SavePath, CallbackUpdate, CallbackNoUpdate, CallbackNewVersion,CallbackError)
    self.LocalVersion = LocalVersion
    self.Host = Host
    self.VersionPath = '/BoL/TCPUpdater/GetScript'..(UseHttps and '5' or '6')..'.php?script='..self:Base64Encode(self.Host..VersionPath)..'&rand='..math.random(99999999)
    self.ScriptPath = '/BoL/TCPUpdater/GetScript'..(UseHttps and '5' or '6')..'.php?script='..self:Base64Encode(self.Host..ScriptPath)..'&rand='..math.random(99999999)
    self.SavePath = SavePath
    self.CallbackUpdate = CallbackUpdate
    self.CallbackNoUpdate = CallbackNoUpdate
    self.CallbackNewVersion = CallbackNewVersion
    self.CallbackError = CallbackError
    AddDrawCallback(function() self:OnDraw() end)
    self:CreateSocket(self.VersionPath)
    self.DownloadStatus = 'Connect to Server for VersionInfo'
    AddTickCallback(function() self:GetOnlineVersion() end)
end
function SxScriptUpdate:print(str)
    print('<font color="#FFFFFF">'..os.clock()..': '..str)
end
function SxScriptUpdate:OnDraw()
    if self.DownloadStatus ~= 'Downloading Script (100%)' and self.DownloadStatus ~= 'Downloading VersionInfo (100%)'then
        DrawText('Download Status: '..(self.DownloadStatus or 'Unknown'),50,10,50,ARGB(0xFF,0xFF,0xFF,0xFF))
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
        self.Socket:send("GET "..self.Url.." HTTP/1.1\r\nHost: sx-bol.eu\r\n\r\n")
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
        self.Socket:send("GET "..self.Url.." HTTP/1.1\r\nHost: sx-bol.eu\r\n\r\n")
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
                end
            end
        end
        self.GotSxScriptUpdate = true
    end
end
