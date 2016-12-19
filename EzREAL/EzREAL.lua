--[[
    TODO:
        Better combo logic
        Rewrite orbwalker fetch method
        Auto Heal
        Heal to save ally
        Defensive item usage
        Fix Left click focus
        Base ult timer fix
        Fix last hit / Mixed mode Q
        Huamizer shit
        Hit chance fix :)
        Custom target selector?
        Custom minion target selector?
        E Logic
        Anti Base Ult
        Base ult objects hit check
        Auto thresh lantern grabber
        Add Ezreal E to anti fail flash Logic
        Blitz crank pull break with E
        QSS Blitz pull
        mana managment
        Make updater look sexy
        Make sure all menu items work...
        Damage drawings
        Multi language menu
]]

function OnLoad()
    if myHero.charName ~= "Ezreal" or not (VIP_USER) then return end
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
        Menu.Draw:addParam("PlaceHolder", "", SCRIPT_PARAM_INFO, "")
        Menu.Draw:addParam("StreamMode", "Enable Streaming Mode(F7)", SCRIPT_PARAM_ONKEYTOGGLE, false, 118)
        Menu.Draw:addParam("DrawTarget", "Draw Target", 1, true)
    Menu:addSubMenu("Spells Menu & Masteries", "Spell")
        Menu.Spell:addSubMenu("Q Menu", "QMenu")
            Menu.Spell.QMenu:addSubMenu("Combo Menu", "ComboMenu")
                Menu.Spell.QMenu.ComboMenu:addParam("Enable", "Use in combo", 1, true)
            Menu.Spell.QMenu:addSubMenu("Mixed Menu", "MixedMenu")
                Menu.Spell.QMenu.MixedMenu:addParam("Enable", "Use in mixed mode", 1, true)
            Menu.Spell.QMenu:addSubMenu("Last Hit Menu", "LastHitMenu")
                Menu.Spell.QMenu.LastHitMenu:addParam("Enable", "Use in last hit", 1, true)
            Menu.Spell.QMenu:addSubMenu("Clear Menu", "ClearMenu")
                Menu.Spell.QMenu.ClearMenu:addParam("Enable", "Use in clear", 1, true)
            Menu.Spell.QMenu:addParam("Accuracy", "Prediction Accuracy", SCRIPT_PARAM_SLICE, 2, 0, 2, 0)
        Menu.Spell:addSubMenu("W Menu", "WMenu")
            Menu.Spell.WMenu:addSubMenu("Combo Menu", "ComboMenu")
            Menu.Spell.WMenu:addSubMenu("Mixed Menu", "MixedMenu")
            Menu.Spell.WMenu:addSubMenu("Last Hit Menu", "LastHitMenu")
            Menu.Spell.WMenu:addSubMenu("Clear Menu", "ClearMenu")
            Menu.Spell.WMenu:addParam("Accuracy", "Prediction Accuracy", SCRIPT_PARAM_SLICE, 2, 0, 2, 0)
        Menu.Spell:addSubMenu("E Menu", "EMenu")
            Menu.Spell.EMenu:addSubMenu("Combo Menu", "ComboMenu")
            Menu.Spell.EMenu:addSubMenu("Mixed Menu", "MixedMenu")
            Menu.Spell.EMenu:addSubMenu("Last Hit Menu", "LastHitMenu")
            Menu.Spell.EMenu:addSubMenu("Clear Menu", "ClearMenu")
            Menu.Spell.EMenu:addParam("Accuracy", "Prediction Accuracy", SCRIPT_PARAM_SLICE, 2, 0, 2, 0)
        Menu.Spell:addSubMenu("R Menu", "RMenu")
            Menu.Spell.RMenu:addSubMenu("Combo Menu", "ComboMenu")
            Menu.Spell.RMenu:addSubMenu("Mixed Menu", "MixedMenu")
            Menu.Spell.RMenu:addSubMenu("Last Hit Menu", "LastHitMenu")
            Menu.Spell.RMenu:addSubMenu("Clear Menu", "ClearMenu")
            Menu.Spell.RMenu:addParam("BaseUlt", "Enable base ult", 1, true)
            Menu.Spell.RMenu:addParam("Accuracy", "Prediction Accuracy", SCRIPT_PARAM_SLICE, 2, 0, 2, 0)
            Menu.Spell.RMenu:addParam("RangeCheck", "Ult range check", SCRIPT_PARAM_SLICE, 1500, 0, 9000, 0)
        Menu.Spell:addSubMenu("Summoner Spells Menu", "SummonerSpellsMenu")
        Menu.Spell:addSubMenu("Masteries Menu", "MasteriesMenu")
            Menu.Spell.MasteriesMenu:addParam("FerocityMasteries", "Ferocity Masteries", SCRIPT_PARAM_LIST, 1,{"None","Bounty Hunter","Double Edged Sword","Battle Trance"})
            Menu.Spell.MasteriesMenu:addParam("Merciless", "Merciless", 1, false)
            Menu.Spell.MasteriesMenu:addParam("Savagry", "Savagry", SCRIPT_PARAM_SLICE, 0, 0, 5, 0)
    Menu:addSubMenu("Hotkeys Menu", "Hotkeys")
        Menu.Hotkeys:addParam("ForceUlt", "Force Ult", SCRIPT_PARAM_ONKEYDOWN, false, string.byte("T"))
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
		    Menu.General.Buy:addParam("TrinketSwitch", "Auto Switch to Blue Trinket", 1, true)
        Menu.General:addParam("PlaceHolder", "", SCRIPT_PARAM_INFO, "")
        Menu.General:addParam("Verbose", "Track enemy recall in chat", 1, true)
        Menu.General:addParam("Focus", "Left Click To Focus", SCRIPT_PARAM_LIST, 2, {"Never","For 1 Minute", "Until Removed"})

    Menu:addParam("PlaceHolder", "", SCRIPT_PARAM_INFO, "")
    Menu:addParam("Packets", "Enable Packet Features", 1, true)
    Menu:addParam("Taunt", "Taunt On Kill", SCRIPT_PARAM_LIST, 1,{"None","Mastery","Joke","Taunt","Dance","Laugh"})
    Menu:addParam("Skins", 'Skin Changer', SCRIPT_PARAM_LIST, 1,{"Classic", "Nottingham", "Striker", "Frosted", "Explorer", "Pulse Fire", "TPA", "Debonair", "Ace of Spades", "Arcade"})

    CheckUpdates()
    Prediction()
    Libraries()
    ItemsAndSummoners()
    DelayAction(function()
        if UPDATED and WALKERLOADED then
            Vip()
            Ezreal()
            Warding()
            Core:Log("Loaded v.01")
        end
    end, 11)
end

class "Ezreal"
function Ezreal:__init()
    self.QState, self.WState,  self.EState = nil, nil, nil

    self.SpellTable = {
        Q = {range = 1150, speed = 2000, delay = 0.6, radius = 75, collision = true},
        W = {range = 1000, speed = 1550, delay = 0.6, radius = 100, collision = false},
        E = {range = 475, MaxRange = 750},
        R = {range = math.huge, speed = 2000, delay = 1, radius = 150, collision = false}
    }

    self.enemyMinions = minionManager(MINION_ENEMY, self.SpellTable.Q.range - 400, myHero, MINION_SORT_HEALTH_ASC)

    AddTickCallback(function() self:Init() end)
    AddDrawCallback(function() self:OnDraw() end)
    AddTickCallback(function() self:Combo() end)
    AddTickCallback(function() self:Laneclear() end)
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
        --DrawText(tostring(),50,50,50,ARGB(255,255,0,0))
        for i, snipeTarget in pairs(GetEnemyHeroes()) do
            if self.RState == READY and self:UltDamage(snipeTarget) > snipeTarget.health and GetDistance(snipeTarget) < Menu.Spell.RMenu.RangeCheck then
                DrawText("You can kill " .. snipeTarget.charName .. "With Ult, Hold T to Ult",50,50,50,ARGB(255,255,0,0))
            end
        end
    end
end
function Ezreal:Combo()
    if Libraries:ComboKey() and Target ~= nil then
        if self.WState == READY then
            local CastPosition, HitChance, Info = Prediction:GetLineCastPosition(Target, self.SpellTable.W.delay, self.SpellTable.W.radius, self.SpellTable.W.range, self.SpellTable.W.speed, self.SpellTable.W.collision, self.SpellTable.W)
            if CastPosition and HitChance >= Menu.Spell.WMenu.Accuracy and GetDistance(CastPosition) < self.SpellTable.W.range then
                CastSpell(_W, CastPosition.x, CastPosition.z)
            end
        end
        if self.QState == READY then
            local CastPosition, HitChance, Info = Prediction:GetLineCastPosition(Target, self.SpellTable.Q.delay, self.SpellTable.Q.radius, self.SpellTable.Q.range, self.SpellTable.Q.speed, self.SpellTable.Q.collision, self.SpellTable.Q)
            if CastPosition and HitChance >= Menu.Spell.QMenu.Accuracy and GetDistance(CastPosition) < self.SpellTable.Q.range then
                if Info.collision ~= nil and not Info.collision or Info.collision == nil then
                    CastSpell(_Q, CastPosition.x, CastPosition.z)
                end
            end
        end
        if self.RState == READY and self:UltDamage(Target) > Target.health then
            local CastPosition, HitChance, Info = Prediction:GetLineCastPosition(Target, self.SpellTable.R.delay, self.SpellTable.R.radius, self.SpellTable.R.range, self.SpellTable.R.speed, self.SpellTable.R.collision, self.SpellTable.R)
            if CastPosition and HitChance >= Menu.Spell.RMenu.Accuracy and GetDistance(CastPosition) < self.SpellTable.R.range then
                CastSpell(_R, CastPosition.x, CastPosition.z)
            end
        end
    end
end
function Ezreal:Mixed()
    if Libraries:HarassKey() and Target ~= nil then
        if self.QState == READY and Menu.Spell.QMenu.MixedMenu.Enable then
            local CastPosition, HitChance, Position = vPred:GetLineCastPosition(Target, 0.6, 75, self.SpellTable.Q.Range, self.SpellTable.Q.Speed, myHero, self.SpellTable.Q.Collision)
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
        if not _G.AutoCarry.Orbwalker:CanShoot() then
            DelayAction(function()
            if self.QState == READY then
                self.enemyMinions:update()
                for index, minion in pairs(self.enemyMinions.objects) do
                    if minion.health < 200 then
                        local CastPosition, HitChance, Info = Prediction:GetLineCastPosition(minion, self.SpellTable.Q.delay, self.SpellTable.Q.radius, self.SpellTable.Q.range, self.SpellTable.Q.speed, self.SpellTable.Q.collision, self.SpellTable.Q)
                        if CastPosition and HitChance >= Menu.Spell.QMenu.Accuracy and GetDistance(CastPosition) < self.SpellTable.Q.range then
                            if Info.collision ~= nil and not Info.collision or Info.collision == nil then
                                CastSpell(_Q, CastPosition.x, CastPosition.z)
                            end
                        end
                    end
                end
            end
        end,.25)
        end
    end
end
function Ezreal:Laneclear()
    if not _G.AutoCarry.Orbwalker:CanShoot() then
        if self.QState == READY then
            self.enemyMinions:update()
            for index, minion in pairs(self.enemyMinions.objects) do
                if minion.health < 200 then
                    local CastPosition, HitChance, Info = Prediction:GetLineCastPosition(minion, self.SpellTable.Q.delay, self.SpellTable.Q.radius, self.SpellTable.Q.range, self.SpellTable.Q.speed, self.SpellTable.Q.collision, self.SpellTable.Q)
                    if CastPosition and HitChance >= Menu.Spell.QMenu.Accuracy and GetDistance(CastPosition) < self.SpellTable.Q.range then
                        if Info.collision ~= nil and not Info.collision or Info.collision == nil then
                            CastSpell(_Q, CastPosition.x, CastPosition.z)
                        end
                    end
                end
            end
        end
    end
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

class "ItemsAndSummoners"
function ItemsAndSummoners:__init()
    self.itemsAndSpells = {
        ["Potions"] = {"RegenerationPotion","ItemCrystalFlask","ItemDarkCrystalFlask","ItemCrystalFlaskJungle"},
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
            ["Barrier"] = self:GetSummonerSpellFromName("SummonerBarrier")
        }
    }
    self.enemyHeroes = GetEnemyHeroes()
    self.lastTAttack = 0
    self.tDamage = 1
    self.lastRemove = 0
    AddDrawCallback(function() self:OnDraw() end)
    AddLoadCallback(function() self:PrepSummonerSpells() end)
    AddTickCallback(function() self:UsePotion() end)
    AddTickCallback(function() self:HealToChase() end)
    AddTickCallback(function() self:AutoIgnite() end)
    AddTickCallback(function() self:UseItems() end)
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
        Menu.Spell.SummonerSpellsMenu:addParam("Flash", "Block flash fails", 1, true)
    end
    if self.itemsAndSpells.SummonerSpells.Barrier then
        Menu.Spell.SummonerSpellsMenu:addParam("Barrier", "Use barrier", 1, true)
        Menu.Spell.SummonerSpellsMenu:addParam("HealthPercent", "If my health % is <", SCRIPT_PARAM_SLICE, 10, 0, 100, 0)
    end
    if self.itemsAndSpells.SummonerSpells.Cleanse then
        Menu.Items.CleanseSettings:addParam("Cleanse", "Use Cleanse Summoner", SCRIPT_PARAM_ONOFF, true)
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
function ItemsAndSummoners:OnDraw()
	for i = 6, 12 do
		local item = myHero:GetSpellData(i).name
		if item then
			DrawText(item,20,10,20* i,ARGB(255,255,0,0))
		end
	end


    -- local correctedMouse = myHero + (Vector(mousePos) - myHero):normalized() * 450
    -- local correctedMouseD3d = D3DXVECTOR3(correctedMouse2.x,correctedMouse2.y,correctedMouse2.z)
    -- if GetDistance(myHero, mousePos) > 450 then
    --     if IsWall(correctedMouseD3d) then
    --         DrawLine3D(myHero.x, myHero.y, myHero.z, correctedMouse.x, correctedMouse.y, correctedMouse.z, 1, ARGB(255,255,0,0))
    --     else
    --         DrawLine3D(myHero.x, myHero.y, myHero.z, correctedMouse.x, correctedMouse.y, correctedMouse.z, 1, ARGB(255,0,255,0))
    --     end
    -- else
    --     if IsWall(mousePos) then
    --         DrawLine3D(myHero.x, myHero.y, myHero.z, mousePos.x, mousePos.y, mousePos.z, 1, ARGB(255,255,0,0))
    --     else
    --         DrawLine3D(myHero.x, myHero.y, myHero.z, mousePos.x, mousePos.y, mousePos.z, 1, ARGB(255,0,255,0))
    --     end
    -- end
end
function ItemsAndSummoners:UsePotion()
    if not myHero.dead then
        if Menu.Items.AutoPotion == 2 and Libraries:ComboKey() or Menu.Items.AutoPotion == 3 then
        	if os.clock() - self.itemsAndSpells.Cooldowns.LastPotion < 8 then return end
            if Menu.Items.HealthPercent >= (myHero.health / myHero.maxHealth * 100) then
                for i = 1, 4 do
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
    	local IgniteDmg = 50 + (20 * myHero.level)
    	local aggro = Menu.Spell.SummonerSpellsMenu.SmartIgnite == 3 and 0.05 or 0
    	for i, enemy in pairs(self.enemyHeroes) do
    		if ValidTarget(enemy, 600) then
    			local spellDamage = 0
    			local adDamage = myHero:CalcDamage(enemy, myHero.totalDamage)
    			spellDamage = spellDamage + adDamage
    			if myHero.health < myHero.maxHealth*(0.35+aggro) and enemy.health < enemy.maxHealth*(0.34+aggro)  and GetDistanceSqr(enemy) < 420 * 420 then
    				CastSpell(ignite, enemy)
    			end
    			local r = myHero.range+65
    			local trange = r < 575 and r or 575
    			if self:isFleeingFromMe(enemy, trange) then
    				if enemy.health < IgniteDmg + spellDamage  + 10 then
    					if myHero.ms < enemy.ms then
    						CastSpell(ignite, enemy)
    					end
    				end
    			end
    			if (GetDistanceSqr(enemy) > 160000 and (myHero.health+myHero.shield) < myHero.maxHealth*0.3) then
    				if enemy.health > spellDamage-(500*aggro) and enemy.health < IgniteDmg + spellDamage-(500*aggro)  then
    					CastSpell(ignite, enemy)
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

			if (myHero:CanUseSpell(self.itemsAndSpells.SummonerSpells.Heal) == 0 or myHero:CanUseSpell(self.itemsAndSpells.SummonerSpells.Barrier) == 0) and spell.target.isMe then
				local realDamage = unit.totalDamage / (((myHero.armor * 0.7) / 100) + 1)

				if Prediction:GetPredictedHealth(myHero, 0.5) + myHero.shield <= realDamage * self.tDamage then
					DelayAction(function()
                        if myHero:CanUseSpell(self.itemsAndSpells.SummonerSpells.Barrier) == 0 then
						    CastSpell(self.itemsAndSpells.SummonerSpells.Barrier)
                        elseif myHero:CanUseSpell(self.itemsAndSpells.SummonerSpells.Heal) == 0 then
						    CastSpell(self.itemsAndSpells.SummonerSpells.Heal)
                        end
                        Core:Log("Saving you from tower")
					end, 0.5)
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
		if ValidTarget(Target) and Menu.spell.heal.chase then
			local ourMS, targetMS = myHero.ms,Target.ms
			local adDamage = myHero:CalcDamage(Target, myHero.totalDamage)

			if Libraries:ComboKey() then
				local r = myHero.range+65
				local trange = r < 575 and r or 575
				if self:isFleeingFromMe(Target, trange) and self:CalcDist(Target) then
					if not EREADY then
						CastSpell(heal)
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
	if not myHero.dead and not checkSpecific("kindredrnodeathbuff") and not checkSpecific("judicatorinter") then
		local item = GetSlotItemFromName("ZhonyasHourglass")
		if item then
			CastSpell(item)
			return true
		end
	end
end
function ItemsAndSummoners:UseItemsCC()
    print("Cleansing!")
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

class "Libraries"
function Libraries:__init()
    self.enemyHeroes = GetEnemyHeroes()
    self.sendOnce = true
    ORBWALKER = nil

    predictonTable = {}

    AddLoadCallback(function() self:OnOrbwalker() end)
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
			ORBWALKER = "mma"
			WALKERLOADED = true
        elseif _G.SAC ~= nil then
			Core:Log("SAC:P Detected")
			Menu.Hotkeys:addParam("OrbWalker", "SAC:P, Hoykeys are in your OrbWalker!", SCRIPT_PARAM_INFO, "")
			ORBWALKER = "sacp"
			WALKERLOADED = true
		elseif _G.AutoCarry ~= nil then
			Core:Log("SAC:R Detected")
			Menu.Hotkeys:addParam("OrbWalker", "SAC:R, Hoykeys are in your OrbWalker!", SCRIPT_PARAM_INFO, "")
			ORBWALKER = "sacr"
			WALKERLOADED = true
		elseif _G._Pewalk ~= nil then
			Core:Log("Pewalk Detected")
			Menu.Hotkeys:addParam("OrbWalker", "PEWalk, Hoykeys are in your OrbWalker!", SCRIPT_PARAM_INFO, "")
			ORBWALKER = "pew"
			WALKERLOADED = true
		elseif FileExist(LIB_PATH.."Nebelwolfi's Orb Walker.lua") then
			Core:Log("Moon Walker Detected")
			require("Nebelwolfi's Orb Walker")
			NebelwolfisOrbWalkerClass(Menu.Hotkeys)
			ORBWALKER = "now"
			WALKERLOADED = true
		elseif FileExist(LIB_PATH.."SxOrbwalk.lua") then
			Core:Log("No external orbwalker found! Activating SxOrbWalker!")
			require("SxOrbWalk")
			SxOrb:LoadToMenu(Menu.Hotkeys)
			ORBWALKER = "sx"
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
function Libraries:ComboKey()
	--if not Menu.hotkeys.checkhk then
		if ORBWALKER == "sx" then
			return SxOrb.isFight
		elseif ORBWALKER == "sacp" then
			return _G.AutoCarry.Keys.AutoCarry
        elseif ORBWALKER == "sacr" then
			return _G.AutoCarry.Keys.AutoCarry
		elseif ORBWALKER == "pew" then
			return _G._Pewalk.GetActiveMode().Carry
		elseif ORBWALKER == "now" then
			return _G.NebelwolfisOrbWalker.Config.k.Combo
		elseif ORBWALKER == "mma" then
			return _G.MMA_IsOrbwalking()
		end
	--end
end
function Libraries:HarassKey()
    if ORBWALKER == "sx" then
		return SxOrb.isHarass
	elseif ORBWALKER == "sacp" then
		return _G.AutoCarry.Keys.MixedMode
    elseif ORBWALKER == "sacr" then
		return _G.AutoCarry.Keys.MixedMode
	elseif ORBWALKER == "pew" then
		return _G._Pewalk.GetActiveMode().Mixed
	elseif ORBWALKER == "now" then
		return _G.NebelwolfisOrbWalker.Config.k.Harass
	elseif ORBWALKER == "mma" then
		return _G.MMA_IsDualCarrying()
	end
end
function Libraries:Targeting()
    if SelectedTarget ~= nil and GetDistance(SelectedTarget) < 1500 and not SelectedTarget.dead then
		Target = SelectedTarget
	else
		if ORBWALKER == "sacp" then
            Target = _G.SAC:GetTarget()
        elseif ORBWALKER == "sacr" then
            Target = _G.AutoCarry.SkillsCrosshair.target
		elseif ORBWALKER == "now" then
			Target = _G.NebelwolfisOrbWalker:GetTarget()
		elseif ORBWALKER == "pew" then
			Target = _G._Pewalk.GetTarget()
		elseif ORBWALKER == "sx" then
			Target = _G.SxOrb:EnableAttacks()
		elseif ORBWALKER == "mma" then
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
    self.gameVersion = GetGameVersion():sub(1,10)
    self.packets = {
        ["6.24.169.4"] = {
            ["Items"] = {
                ["Header"] = 0x0040,
                ["VTable"] = 0xF87750,
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
                ["VTable"] = 0x103DB18,
                ["ID"] = {0x11,0x31,0x21,0x01}
            },
            ["Mastery"] = {
                ["Header"] = 0x000A,
                ["VTable"] = 0x1075A24,
                ["Packets"] = {0x5D},
            }
        }
    }

	if Menu.Packets and self.packets[self.gameVersion] ~= nil then
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
	local p = CLoLPacket(self.packets[self.gameVersion].Emotes.Header)
	p.vTable = self.packets[self.gameVersion].Emotes.VTable
    p:EncodeF(myHero.networkID)
	p:Encode1(self.packets[self.gameVersion].Emotes.ID[id])
	SendPacket(p)
end
function Vip:SendMastery()
	local p = CLoLPacket(self.packets[self.gameVersion].Mastery.Header)
	p.vTable = self.packets[self.gameVersion].Mastery.VTable
	p:EncodeF(myHero.networkID)
	for i = 1, 4 do p:Encode1(self.packets[self.gameVersion].Mastery.Packets[1]) end
	SendPacket(p)
end
function Vip:SkinChanger()
    if self.lastSkin ~= Menu.Skins then
        self.lastSkin = Menu.Skins
        SetSkin(myHero, Menu.Skins - 1)
    end
end
function Vip:BuyItem(Item)
   local p = CLoLPacket(self.packets[self.gameVersion].Items.Header)
   p.vTable = self.packets[self.gameVersion].Items.VTable
   p:EncodeF(myHero.networkID)
   p:Encode1(self.packets[self.gameVersion].Items.Packets[1])
   p:Encode1(self.packets[self.gameVersion].Items.ID[Item][1])
   p:Encode1(self.packets[self.gameVersion].Items.ID[Item][2])
   for i = 1, 2 do p:Encode1(self.packets[self.gameVersion].Items.Packets[2]) end
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

class "Prediction"
function Prediction:__init()
    _G.predictonTable = {
        ["Predictions"] = {"VPrediction", "FHPrediction"},
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
    elseif _G.predictonTable.ActivePrediction == "VPrediction" then
        SPrediction = SPrediction()
    end
end
function Prediction:GetLineCastPosition(hero, delay, width, range, speed, collision, spellSlot)
    if _G.predictonTable.ActivePrediction ~= nil then
        if _G.predictonTable.ActivePrediction == "VPrediction" then
            return VPrediction:GetLineCastPosition(hero, delay, width, range, speed, myHero, collision)
        elseif _G.predictonTable.ActivePrediction == "FHPrediction" then
            return FHPrediction.GetPrediction(spellSlot, hero)
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

class "SxScriptUpdate"
function CheckUpdates()
	local ToUpdate = {}
    ToUpdate.Version = .03
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
