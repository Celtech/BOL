if myHero.charName ~= "Lucian" or (not VIP_USER) then return end

local UPDATE_HOST = "raw.github.com"
local VERSION = ".02"
local AUTOUPDATE = true
local TRIAL = true

function ScriptMessage(msg) 
	print("<b><font color=\"#3399FF\">Hi I'm Lucian:</font></b> <font color=\"#FFFFFF\"> " .. msg .. "</font>") 
end

if AUTOUPDATE then
	local UPDATE_PATH = "/Celtech/BOL/master/HiImLucian/HiImLucian.lua".."?rand="..math.random(1,10000)
	local UPDATE_FILE_PATH = SCRIPT_PATH..GetCurrentEnv().FILE_NAME
	local UPDATE_URL = "https://"..UPDATE_HOST..UPDATE_PATH
	local ServerData = GetWebResult(UPDATE_HOST, "/Celtech/BOL/master/HiImLucian/version.version")
	if ServerData then
		ServerVersion = type(tonumber(ServerData)) == "number" and tonumber(ServerData) or nil
		if ServerVersion then
			if tonumber(VERSION) < ServerVersion then
				ScriptMessage("New version available "..ServerVersion)
				ScriptMessage("Updating, please don't press F9")
				DelayAction(function() DownloadFile(UPDATE_URL, UPDATE_FILE_PATH, function () ScriptMessage("Successfully updated. ("..VERSION.." => "..ServerVersion.."), press F9 twice to load the updated version.") end) end, 3)
			else
				ScriptMessage("You have got the latest version ("..ServerVersion..")")
			end
		end
	else
		ScriptMessage("Error downloading version info")
	end
end
if TRIAL then
	local ServerData = GetWebResult(UPDATE_HOST, "/Celtech/BOL/master/HiImLucian/auth.auth")
	if ServerData then
		TrialAuth = type(tonumber(ServerData)) == "number" and tonumber(ServerData) or nil
		if TrialAuth then
			if TrialAuth == 1 then
				DelayAction(function()
					ScriptMessage("Thank you for trying out the trial version of Hi I'm Lucain! This version is released ONLY to get user feedback. There is NO combo logic implemented in this yet, so think of it as more of an support your play suite. The purpose here is to try out the current code and test for performance/bugs. If you do discover bugs comment them ASAP on the forum! We want to build the core bug free before we add the logic to the mix. Enjoy your trial!")
				end, 12)
			else
				ScriptMessage("The trial is currently over, please wait for another future trial of the full release! This file will automatically update when a new version is released so don't delete me!")
				return
			end
		end
	else
		ScriptMessage("Error connecting to auth server, try reloading!")
		return
	end
end

local predTable = {}
local currentPred = nil

local ts = TargetSelector(TARGET_LOW_HP_PRIORITY, 1100)
local TargetSelector = TargetSelector(TARGET_LESS_CAST_PRIORITY, 1250, DAMAGE_MAGIC)
local enemyMinions = minionManager(MINION_ENEMY, 600, player, MINION_SORT_HEALTH_ASC)

local myHero = GetMyHero()
local KillCount = 0
local lastRemove = 0

local SpellTable = {
	Q = {Range =  700, MaxRange = 1100},
	W = {Range = 1000, MaxRange = 1100},
	E = {Range =  425, MaxRange = 425},
	R = {Range = 1400, MaxRange = 1400},
   AA = {Range = 575}
}



function OnLoad()
	print("<b><font color=\"#3399FF\">Hi I'm Lucian:</font></b> <font color=\"#FFFFFF\">Loaded Test Version " .. VERSION .. "</font>")
	FindLibraries()
	ItemsInit()
	OnMenu()
	OnOrbwalker()
	CircleInit()
end

function OnTick()
	OnDrawCircles()
	OnPrediction()
	SpellsReady()
	AutoIgnite()
	AutoPot()
	AutoHeal()
	ComboItems()
	AutoEscapePull()
	AutoGetToLaneFaster()
	
	
	if Menu.packets then
		AutoLeveler()
		AutoBuy()
		TauntOnKill()
		SkinSelector()
	end
end

function OnDraw()
	if not myHero.dead and not Menu.draw.stream then
		if Menu.draw.ranges.q and QREADY then
			DrawCircle(myHero.x, myHero.y, myHero.z, SpellTable.Q.Range, ColorBuilder(Menu.draw.colors))
		end
		
		if Menu.draw.ranges.qm and QREADY then
			DrawCircle(myHero.x, myHero.y, myHero.z, SpellTable.Q.MaxRange, ColorBuilder(Menu.draw.colors))
		end
		
		if Menu.draw.ranges.wm and WREADY then
			DrawCircle(myHero.x, myHero.y, myHero.z, SpellTable.W.MaxRange, ColorBuilder(Menu.draw.colors))
		end
		
		if Menu.draw.ranges.w and WREADY then
			DrawCircle(myHero.x, myHero.y, myHero.z, SpellTable.W.Range, ColorBuilder(Menu.draw.colors))
		end
		
		if Menu.draw.ranges.e and EREADY then
			DrawCircle(myHero.x, myHero.y, myHero.z, SpellTable.E.Range, ColorBuilder(Menu.draw.colors))
		end
		
		if Menu.draw.ranges.r  and RREADY then
			DrawCircle(myHero.x, myHero.y, myHero.z, SpellTable.R.Range, ColorBuilder(Menu.draw.colors))
		end
		
		if Menu.draw.ranges.aa then
			DrawCircle(myHero.x, myHero.y, myHero.z, SpellTable.AA.Range, ColorBuilder(Menu.draw.colors))
		end
	end
end

function OnMenu()
	Menu = scriptConfig("Hi I'm Lucian", "hilucian")
	
	Menu:addSubMenu("Drawing Menu", "draw")
	Menu.draw:addSubMenu("Spell Ranges", "ranges")
	Menu.draw.ranges:addParam("q", "Draw Q Range", 1, true)
	Menu.draw.ranges:addParam("w", "Draw W Range", 1, true)
	Menu.draw.ranges:addParam("e", "Draw E Range", 1, false)
	Menu.draw.ranges:addParam("r", "Draw R Range", 1, false)
	Menu.draw.ranges:addParam("qm", "Draw Q Max Range", 1, false)
	Menu.draw.ranges:addParam("wm", "Draw W Max Range", 1, false)
	Menu.draw.ranges:addParam("aa", "Draw AA Range", 1, false)	
	Menu.draw:addParam("PermaShow", "Use PermaShow Box", 1, true)
	Menu.draw:addParam("LagFree", "Use Lag Free Circles", 1, true)
	Menu.draw:addParam("stream", "Enable Streaming Mode(F7)", SCRIPT_PARAM_ONKEYTOGGLE, false, 118)
	Menu.draw:addParam("colors", "Draw Colors", SCRIPT_PARAM_LIST, 5,{"Red","Orange","Yellow","Green","Sky Blue","Blue","Violet","Pink","White","Black"})
	Menu.draw:addParam("transparency", "Draw Transparency", SCRIPT_PARAM_SLICE, 255, 0, 255, decimalPlace)
	
	
	Menu:addSubMenu("Items Menu", "item")
	Menu.item:addSubMenu("Offensive Items", "ofi")
	Menu.item.ofi:addParam("itemsduring", "Use Items During", SCRIPT_PARAM_LIST, 3,{"Never","Combo","Combo+Harass"})
	Menu.item.ofi:addParam("mypercent", "If My Health % is Less Than", SCRIPT_PARAM_SLICE, 85, 0, 100, decimalPlace)
	Menu.item.ofi:addParam("enemypercent", "If Target Health % is Less Than", SCRIPT_PARAM_SLICE, 85, 0, 100, decimalPlace)
	
	Menu.item:addSubMenu("QSS/Cleanse Settings", "qss")
	Menu.item.qss:addParam("Always", "Use Always", SCRIPT_PARAM_ONOFF, true)
	Menu.item.qss:addParam("Blitz", "Remove Rocket Grab", SCRIPT_PARAM_ONOFF, false)		
	Menu.item.qss:addParam("Exhaust", "Remove Exhaust", SCRIPT_PARAM_ONOFF, false)		
	if SummonerSlot then
		Menu.item.qss:addParam("Summoner", "Use Cleanse Summoner", SCRIPT_PARAM_ONOFF, true) 
	end
	Menu.item.qss:addParam("delay", "Humanizer delay (ms)", SCRIPT_PARAM_SLICE, 0, 0, 250, 0)
	
	
	Menu.item:addParam("autopot", "Auto Health Pot", SCRIPT_PARAM_LIST, 2,{"Never","Combo","Always"})
	Menu.item:addParam("potpercent", "Pot If My Health % is <", SCRIPT_PARAM_SLICE, 50, 0, 100, decimalPlace)
	
	Menu:addSubMenu("Spell Settings", "spell")
	if ignite then
		Menu.spell:addSubMenu("Ignite", "ignite")
			Menu.spell.ignite:addParam("set", "Use Smart Ignite", SCRIPT_PARAM_LIST, 2, {"OFF", "Optimal", "Aggressive"})
	end
	
	if exhaust then	
		Menu.spell:addSubMenu("Summoner Exhaust", "exhaust")
		Menu.spell.exhaust:addParam("exh", "Exhaust Key", SCRIPT_PARAM_ONKEYDOWN, false, GetKey(exhaust.key)) 
		TSex = TargetSelector(TARGET_PRIORITY, 600, DAMAGE_MAGIC)	
		TSex.name = "EX"
	end
		
	if heal then
		Menu.spell:addSubMenu("Summoner Heal/Barrier", "heal")
		Menu.spell.heal:addParam("enable", "Use Heal/Barrier", SCRIPT_PARAM_ONOFF, true)
		Menu.spell.heal:addParam("health", "If My Health % is Less Than", SCRIPT_PARAM_SLICE, 30, 0, 100, 0)
		if realheals then
			Menu.spell.heal:addParam("ally", "Also use on ally", SCRIPT_PARAM_ONOFF, false)
		end
	end	
	
	Menu:addSubMenu("General Menu", "gen")
	Menu.gen:addSubMenu("Auto Leveler", "lvl")
	Menu.gen.lvl:addParam("autolvl", "Enable Auto Leveler", 1, true)
	Menu.gen.lvl:addParam("ignore", "Ignore First 3 Levels", 1, true)
	Menu.gen.lvl:addParam("sequence", "Leveling Sequence", SCRIPT_PARAM_LIST, 1,{"Q>E>W>Q>Q>R>Q>E>Q>E>R>E>E>W>W>R>W>W","Q>E>W>Q>Q>R>Q>E>Q>E>R>E>W>E>W>R>W>W","Q>E>Q>W>Q>R>Q>E>Q>E>R>E>E>W>W>R>W>W","Q>E>Q>W>Q>R>Q>E>Q>E>R>E>W>E>W>R>W>W"})
	Menu.gen:addSubMenu("Auto Buy", "buy")
	Menu.gen.buy:addParam("autobuy", "Enable Auto Buy", 1, true)
	Menu.gen.buy:addParam("autotrinket", "Auto Switch to Blue Trinket", 1, true)
	Menu.gen:addParam("lane", "Get to lane faster", 1, true)
	Menu.gen:addParam("pred", "Prediction", SCRIPT_PARAM_LIST, 1, predTable)
	
	Menu:addSubMenu("Orbwalker Settings","obwc")
	
	Menu:addSubMenu("Hotkeys","hotkeys")
	
	Menu:addParam("scripttitle", "", SCRIPT_PARAM_INFO, "")
	Menu:addParam("packets", "Enable Packet Features", 1, true)
	Menu:addParam("taunt", "Taunt On Kill", SCRIPT_PARAM_LIST, 1,{"None","Mastery","Joke","Taunt","Dance","Laugh"})
	Menu:addParam("skins", 'Skin Changer', SCRIPT_PARAM_LIST, 1,{"Classic", "Hired Gun", "Striker", "Chroma Pack: Yellow", "Chroma Pack: Red", "Chroma Pack: Blue", "PROJECT"})
	
	--Menu.permaShowEdit(Menu:permaShow("scripttitle"),"lText","                         Hi I'm Lucian")
end

----
----
local qOff, wOff, eOff, rOff = 0,0,0,0
local firstBuy = true
local function Slot(name)
	if myHero:GetSpellData(SUMMONER_1).name:find(name) then
		return SUMMONER_1
	elseif myHero:GetSpellData(SUMMONER_2).name:find(name) then
		return SUMMONER_2
	end
end
function BuyItem(Item)
	local items = {
		["Dorans Ring"] = {0x0075,0x007A},
		["Health Potion"] = {0x0089,0x00BA},
		["Warding Totem (Trinket)"] = {0x007B,0x00FB},
		["Boots of Speed"] = {0x00CC,0x00B1},
		["Doran's Blade"] = {0x00B7,0x007A},
		["Blue Trinket"] = {0x00B5,0x00FB}
	}

   local p = CLoLPacket(0x00F2)
   p.vTable = 0xED8C64
   p:EncodeF(myHero.networkID)
   p:Encode1(items[Item][1])--Item Specific
   p:Encode1(items[Item][2])--Item Specific
   for i = 1, 2 do p:Encode1(0x71) end
   for i = 1, 4 do p:Encode1(0x00) end
   SendPacket(p)
end
function isFleeingFromMe(target, range)
	if predTable[Menu.gen.pred] == "VPrediction" and not loadedVP then
		local pos = currentPred:GetPredictedPos(target, 0.26)
	elseif predTable[Menu.gen.pred] == "SPrediction" and not loadedSP then
		local pos = currentPred:PredictPos(target, 0.26)
	elseif predTable[Menu.gen.pred] == "HPrediction" and not loadedHP then
		local pos = currentPred:PredictPos(target, 0.26)
	elseif predTable[Menu.gen.pred] == "DPrediction" and not loadedDP then
		local pos = target:getPath():getPosAtTime(delta)
	end
	
	
	if pos and GetDistanceSqr(pos) > range*range then
		return true
	end
	return false
end
function GetCustomTarget()
	TargetSelector:update()	
	if ValidTarget(TargetSelector.target) and TargetSelector.target.type == myHero.type then
		return TargetSelector.target
	else
		return nil
	end
end
function findClosestAlly(obj)
    local closestAlly = nil
    local currentAlly = nil
	for i, currentAlly in pairs(GetAllyHeroes()) do
        if currentAlly and not currentAlly.dead then
            if closestAlly == nil then
                closestAlly = currentAlly
			end
            if GetDistanceSqr(currentAlly.pos, obj) < GetDistanceSqr(closestAlly.pos, obj) then
				closestAlly = currentAlly
            end
        end
    end
	return closestAlly
end
function inCircle(cx,cz,x,z,r)
	if (math.pow(cx-x,2)+math.pow(cz-z,2)<math.pow(r,2)) then
		return true
	else
		return false
	end
end
function GetSlotItemFromName(itemname)
	local slot
	for i = 6, 12 do
		local item = myHero:GetSpellData(i).name
		if ((#item > 0) and (item:lower():find(itemname:lower()))) then
			slot = i
		end
	end
	return slot
end
function GetSlotItem(id, unit)
	unit = unit or myHero

	if (not ItemNames[id]) then
		return ___GetInventorySlotItem(id, unit)
	end

	local name	= ItemNames[id]
	
	for slot = ITEM_1, ITEM_7 do
		local item = unit:GetSlotItem(id, unit)
		if ((#item > 0) and (item:lower() == name:lower())) then
			return slot
		end
	end
end
function UseItems(unit, scary)
	if not ValidTarget(unit) and unit ~= myHero then return end
	for i, Item in pairs(Items) do
		local Item = Items[i]
		if Item.id ~= 3140 and Item.id ~= 3139 then
			if GetInventoryItemIsCastable(Item.id) and GetDistanceSqr(unit) <= Item.range * Item.range then
				if Item.id == 3143 or Item.id == 3077 or Item.id == 3074 or Item.id == 3131 or Item.id == 3142 or Item.id == 2140 then
					CastItem(Item.id)
				else
					CastItem(Item.id, unit) return true
				end
			end
		end
	end
end
function ComboItems()
	if Menu.item.ofi.itemsduring > 0 then
		if myHero.health / myHero.maxHealth <=  Menu.item.ofi.mypercent / 100 then
			local unit = GetCustomTarget()
			if ValidTarget(unit, 1000) then
				if unit.health / unit.maxHealth <=  Menu.item.ofi.enemypercent / 100 then
					UseItems(unit)
				end
			end
		end	
	end	
end
function UseItemsCC(unit, scary)
	if lastRemove > os.clock() - 1 then return end
	for i, Item in pairs(Items) do
		local Item = Items[i]
		if GetInventoryItemIsCastable(Item.id) and GetDistanceSqr(unit) <= Item.range * Item.range then
			if Item.id == 3139 or Item.id ==  3140 then
				if scary then
					DelayAction(function()
						CastItem(Item.id)
					end, Menu.item.qss.delay/1000)	
					lastRemove = os.clock()
					return true
				end
			end
		end
	end
	if Menu.item.qss.Summoner and SummonerSlot and myHero:CanUseSpell(SummonerSlot) == 0 then
		DelayAction(function()
			CastSpell(SummonerSlot)
		end, Menu.item.qss.delay/1000)
		lastRemove = os.clock()
	end
end
function OnProcessSpell(unit, spell)
	if spell.name:lower():find("zedr") and spell.target == myHero then
		DelayAction(function()
			UseItemsCC(myHero, true)
		end, 1.5)
	end
end
function OnApplyBuff(source, unit, buff)
	if not buff or not source or not source.valid or not unit or not unit.valid then return end
	
	if unit.isMe and (Menu.item.qss.Always) then
		if (source.charName == "Rammus" and buff.type ~= 8) or source.charName == "Alistar" or source.charName:lower():find("baron") or source.charName:lower():find("spiderboss") or source.charName == "LeeSin" or (source.charName == "Hecarim" and not buff.name:lower():find("fleeslow")) then return end	
		if buff.name and ((not cleanse and buff.type == 24) or buff.type == 5 or buff.type == 11 or buff.type == 22 or buff.type == 21 or buff.type == 8)
		or (buff.type == 10 and buff.name and buff.name:lower():find("fleeslow"))
		or (Menu.item.qss.Exhaust and buff.name and buff.name:lower():find("summonerexhaust")) then
			if buff.name and buff.name:lower():find("caitlynyor") and CountEnemiesNearUnitReg(myHero, 700) == 0   then
				return false
			elseif not source.charName:lower():find("blitzcrank") then
				UseItemsCC(myHero, true)
			end          
		end  
	end  
end
function UsePotion()
	local slot = GetSlotItemFromName("crystalflask")
	if not slot then
		slot = GetSlotItemFromName("RegenerationPotion")
	end
	if not slot then
		slot = GetSlotItemFromName("itemminiregenpotion")
	end
	if slot then
		CastSpell(slot)
	end
end
function HealSlot()
	if myHero:GetSpellData(SUMMONER_1).name:find("summonerheal") or myHero:GetSpellData(SUMMONER_2).name:find("summonerheal") then
		realheals = true
	end
	if myHero:GetSpellData(SUMMONER_1).name:find("summonerheal")  or myHero:GetSpellData(SUMMONER_1).name:find("summonerbar") then
		return SUMMONER_1
	elseif myHero:GetSpellData(SUMMONER_2).name:find("summonerheal") or myHero:GetSpellData(SUMMONER_1).name:find("summonerbar") then
		return SUMMONER_2
	end
end
function ItemsInit()
		ItemNames				= {
		[3303]				= "ArchAngelsDummySpell",
		[3007]				= "ArchAngelsDummySpell",
		[3144]				= "BilgewaterCutlass",
		[3188]				= "ItemBlackfireTorch",
		[3153]				= "ItemSwordOfFeastAndFamine",
		[3405]				= "TrinketSweeperLvl1",
		[3411]				= "TrinketOrbLvl1",
		[3166]				= "TrinketTotemLvl1",
		[3450]				= "OdinTrinketRevive",
		--[2041]				= "ItemCrystalFlask",
		[2054]				= "ItemKingPoroSnack",
		[2138]				= "ElixirOfIron",
		[2137]				= "ElixirOfRuin",
		[2139]				= "ElixirOfSorcery",
		[2140]				= "ElixirOfWrath",
		[3184]				= "OdinEntropicClaymore",
		[2050]				= "ItemMiniWard",
		[3401]				= "HealthBomb",
		[3363]				= "TrinketOrbLvl3",
		[3092]				= "ItemGlacialSpikeCast",
		[3460]				= "AscWarp",
		[3361]				= "TrinketTotemLvl3",
		[3362]				= "TrinketTotemLvl4",
		[3159]				= "HextechSweeper",
		[2051]				= "ItemHorn",
		--[2003]			= "RegenerationPotion",
		[3146]				= "HextechGunblade",
		[3187]				= "HextechSweeper",
		[3190]				= "IronStylus",
		--[2004]				= "FlaskOfCrystalWater",
		[3139]				= "ItemMercurial",
		[3222]				= "ItemMorellosBane",
		[3042]				= "Muramana",
		[3043]				= "Muramana",
		[3180]				= "OdynsVeil",
		[3056]				= "ItemFaithShaker",
		[2047]				= "OracleExtractSight",
		[3364]				= "TrinketSweeperLvl3",
		[2052]				= "ItemPoroSnack",
		[3140]				= "QuicksilverSash",
		[3143]				= "RanduinsOmen",
		[3074]				= "ItemTiamatCleave",
		[3800]				= "ItemRighteousGlory",
		[2045]				= "ItemGhostWard",
		[3342]				= "TrinketOrbLvl1",
		[3040]				= "ItemSeraphsEmbrace",
		[3048]				= "ItemSeraphsEmbrace",
		[2049]				= "ItemGhostWard",
		[3345]				= "OdinTrinketRevive",
		[2044]				= "SightWard",
		[3341]				= "TrinketSweeperLvl1",
		[3069]				= "shurelyascrest",
		[3599]				= "KalistaPSpellCast",
		[3185]				= "HextechSweeper",
		[3077]				= "ItemTiamatCleave",
		[2009]				= "ItemMiniRegenPotion",
		[2010]				= "ItemMiniRegenPotion",
		[3023]				= "ItemWraithCollar",
		[3290]				= "ItemWraithCollar",
		[2043]				= "VisionWard",
		[3340]				= "TrinketTotemLvl1",
		[3090]				= "ZhonyasHourglass",
		[3154]				= "wrigglelantern",
		[3142]				= "YoumusBlade",
		[3157]				= "ZhonyasHourglass",
		[3512]				= "ItemVoidGate",
		[3131]				= "ItemSoTD",
		[3137]				= "ItemDervishBlade",
		[3352]				= "RelicSpotter",
		[3350]				= "TrinketTotemLvl2",
		[3085]              = "AtmasImpalerDummySpell",
	}

	Items = {
		["ELIXIR"]      = { id = 2140, range = 2140, target = false},
		["QSS"]	        = { id = 3140, range = 2500, target = false},
		["MercScim"]	= { id = 3139, range = 2500, target = false},
		["BRK"]			= { id = 3153, range = 550, target = true},
		["BWC"]			= { id = 3144, range = 550, target = true},
		--["DFG"]			= { id = 3128, range = 750, target = false},
		["HXG"]			= { id = 3146, range = 700, target = false},
		["ODYNVEIL"]	= { id = 3180, range = 525, target = false},
		["DVN"]			= { id = 3131, range = 200, target = false},
		["ENT"]			= { id = 3184, range = 350, target = false},
		["HYDRA"]		= { id = 3074, range = 350, target = false},
		["TIAMAT"]		= { id = 3077, range = 350, target = false},
		["RanduinsOmen"]	= { id = 3143, range = 500, target = false},
		["YGB"]			= { id = 3142, range = 600, target = false},
	}
	
	___GetInventorySlotItem	= rawget(_G, "GetInventorySlotItem")
	_G.GetInventorySlotItem	= GetSlotItem
	if myHero:GetSpellData(4).name:find("exhaust") then
		exhaust = { slot = 4, key = "D", range =  650, ready = false }
	elseif myHero:GetSpellData(5).name:find("exhaust") then
		exhaust = { slot = 5, key = "F", range =  650, ready = false }
	end
	SummonerSlot = Slot("summonerboost")
	ignite = Slot("summonerdot")
	heal = HealSlot()
end
function SpellsReady()
	QREADY = (myHero:CanUseSpell(_Q) == READY)
	WREADY = (myHero:CanUseSpell(_W) == READY)
	EREADY = (myHero:CanUseSpell(_E) == READY)
	RREADY = (myHero:CanUseSpell(_R) == READY)
end
----
----
function AutoIgnite()
	if ignite and Menu.spell.ignite.set > 1 and (myHero:CanUseSpell(ignite) == READY) then 
		local IgniteDmg = 50 + (20 * myHero.level)
		local aggro = Menu.spell.ignite.set == 3 and 0.05 or 0
		for i, enemy in pairs(GetEnemyHeroes()) do
			if ValidTarget(enemy, 600) then
				local spellDamage = 0
				local adDamage = myHero:CalcDamage(enemy, myHero.totalDamage)
				spellDamage = spellDamage + adDamage
				if myHero.health < myHero.maxHealth*(0.35+aggro) and enemy.health < enemy.maxHealth*(0.34+aggro)  and GetDistanceSqr(enemy) < 420 * 420 then
					CastSpell(ignite, enemy)							
				end
				local r = myHero.range+65
				local trange = r < 575 and r or 575
				if isFleeingFromMe(enemy, trange) then
					if enemy.health < IgniteDmg + spellDamage  + 10 then		
						if myHero.ms < enemy.ms then
							CastSpell(ignite, enemy)	
						else
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
function AutoHeal()
	if heal then
		if ValidTarget(GetCustomTarget(), 750) then
			if Menu.spell.heal.enable and myHero:CanUseSpell(heal) == 0 then
				if myHero.level > 5 and myHero.health/myHero.maxHealth < Menu.spell.heal.health/100 then
					CastSpell(heal)
				elseif  myHero.level < 6 and myHero.health/myHero.maxHealth < (Menu.spell.heal.health/100)*.75 then
					CastSpell(heal)
				end
				
				if realheals and Menu.spell.heal.ally then
					local ally = findClosestAlly(myHero)
					if ally and not ally.dead and GetDistance(ally) < 850 then
						if  ally.health/ally.maxHealth < Menu.spell.heal.health/100 then
							CastSpell(heal)
						end
					end
				end
			end
		end
	end
end
function AutoLeveler()
	if Menu.gen.lvl.autolvl then
		if Menu.gen.lvl.ignore and myHero.level <= 3 then return end 
		
		if Menu.gen.lvl.sequence == 1     then abilitySequence = { 1, 3, 2, 1, 1, 4, 1, 3, 1, 3, 4, 3, 3, 2, 2, 4, 2, 2 }
		elseif Menu.gen.lvl.sequence == 2 then abilitySequence = { 1, 3, 2, 1, 1, 4, 1, 3, 1, 3, 4, 3, 2, 3, 2, 4, 2, 2 }
		elseif Menu.gen.lvl.sequence == 3 then abilitySequence = { 1, 3, 1, 2, 1, 4, 1, 3, 1, 3, 4, 3, 3, 2, 2, 4, 2, 2 }
		elseif Menu.gen.lvl.sequence == 4 then abilitySequence = { 1, 3, 1, 2, 1, 4, 1, 3, 1, 3, 4, 3, 2, 3, 2, 4, 2, 2 }
		end
		
		local qL, wL, eL, rL = myHero.GetSpellData(myHero,_Q).level + qOff, myHero.GetSpellData(myHero,_W).level + wOff, myHero.GetSpellData(myHero,_E).level + eOff, myHero.GetSpellData(myHero,_R).level + rOff
		if qL + wL + eL + rL < myHero.level then
			local spellSlot = { SPELL_1, SPELL_2, SPELL_3, SPELL_4, }
			
			local level = { 0, 0, 0, 0 }
			for i = 1, myHero.level, 1 do
				level[abilitySequence[i]] = level[abilitySequence[i]] + 1
			end
			
			for i, v in ipairs({ qL, wL, eL, rL }) do
				if v < level[i] then LevelSpell(spellSlot[i]) end
			end
		end
	end
end
function AutoPot()
	if Menu.item.autopot > 0 then
		local percentOfHP = myHero.health / myHero.maxHealth * 100
		if percentOfHP < Menu.item.potpercent and not InFountain() then
			if not TargetHaveBuff("ItemMiniRegenPotion", myHero) and not TargetHaveBuff("RegenerationPotion", myHero) then
				UsePotion()
			end
		end
	end
end
function AutoBuy()
	if Menu.gen.buy.autobuy then
		if myHero.level <= 1 and firstBuy and InFountain() and GetSlotItem(1055, myHero) == nil then
			BuyItem("Doran's Blade")
			BuyItem("Health Potion")
			BuyItem("Warding Totem (Trinket)")
			firstBuy = false
		end
	end
	
	if Menu.gen.buy.autotrinket then
		if myHero.level >= 9 and myHero:GetSpellData(ITEM_7).name ~= "TrinketOrbLvl3" and InFountain() then
			BuyItem("Blue Trinket")
		end
	end
end
function AutoEscapePull()
	if TargetHaveBuff("rocketgrab2", myHero) then
		UseItemsCC(myHero, true)	
		CastSpell(_E,myHero.x - 20, myHero.z - 20)
	end
end
function AutoGetToLaneFaster()
	if Menu.gen.lane then
		for _, i in pairs(GetTurrets()) do
			if i.range == 1050 then
				if not inCircle(myHero.x, myHero.z, i.x, i.z, 1050) and inCircle(myHero.x, myHero.z, i.x, i.z, 1200) and EREADY then
					CastSpell(_E, myHero.endPath.x, myHero.endPath.z)
				end
			end
		end
	end
end
----
----
function OnOrbwalker()
	print("<b><font color=\"#3399FF\">Hi I'm Lucian:</font></b> <font color=\"#FFFFFF\"> Checking for external Orbwalkers! Please wait!</font>")
	DelayAction(
    function()
      -- MMA      
		if _G.MMA_Loaded ~= nil then
			print("<b><font color=\"#3399FF\">Hi I'm Lucian:</font></b> <font color=\"#FFFFFF\"> MMA Detected! Disabling SxOrbWalker!</font>")
			Menu.obwc:addParam("mmafd", "MMA Detected", SCRIPT_PARAM_INFO)
			walker = "Hotkeys integrated with your MMA Keys"
			Menu.hotkeys:addParam("hkcon", "Hotkeys integrated with your MMA Keys", SCRIPT_PARAM_INFO, "")
			MMA = true
			obwwillwork = true
			-- SAC R
		elseif _G.AutoCarry ~= nil then
			print("<b><font color=\"#3399FF\">Hi I'm Lucian:</font></b> <font color=\"#FFFFFF\"> SAC:R Detected</font>")
			Menu.obwc:addParam("sacfd", "SAC:R Detected", SCRIPT_PARAM_INFO, "")
			Menu.hotkeys:addParam("hkcon", "Hotkeys integrated with your SAC:R Keys", SCRIPT_PARAM_INFO, "")
			walker = "Hotkeys integrated with your SAC:R Keys"
			SAC = true
			obwwillwork = true
			-- SxOrbWalker
		elseif FileExist(LIB_PATH.."SxOrbwalk.lua") then
			print("<b><font color=\"#3399FF\">Hi I'm Lucian:</font></b> <font color=\"#FFFFFF\"> No external orbwalker found! Activating SxOrbWalker!</b></font>")
			require("SxOrbWalk")
			SxOrb:LoadToMenu(Menu.obwc)
			Menu.hotkeys:addParam("hkcon", "Hotkeys integrated with your SxOrbWalker Keys", SCRIPT_PARAM_INFO, "")
			walker = "Hotkeys integrated with your SxOrbWalker Keys"
			SX = true
			obwwillwork = true
		end
    end, 10)
end
function FindLibraries()
	if FileExist(LIB_PATH .. "VPrediction.lua") then
		table.insert(predTable, "VPrediction")
		loadedVP = false
	end

	if FileExist(LIB_PATH .. "SPrediction.lua") then
		table.insert(predTable, "SPrediction")
		loadedSP = false
	end
	
	if FileExist(LIB_PATH .. "HPrediction.lua") then
		table.insert(predTable, "HPrediction")
		loadedHP = false
	end
	
	if FileExist(LIB_PATH .. "DivinePred.lua") then
		table.insert(predTable, "DPrediction")
		loadedHP = false
	end
end
function OnPrediction()
	if predTable[Menu.gen.pred] == "VPrediction" and not loadedVP then
		require "VPrediction"
		loadedVP, currentPred = true, VPrediction()
	elseif predTable[Menu.gen.pred] == "SPrediction" and not loadedSP then
		require "SPrediction"
		loadedSP, currentPred = true, SPrediction()	
	elseif predTable[Menu.gen.pred] == "HPrediction" and not loadedHP then
		require "HPrediction"
		loadedHP, currentPred = true, HPrediction()
	elseif predTable[Menu.gen.pred] == "DPrediction" and not loadedDP then
		require "DivinePred"
		loadedDP, currentPred = true, DivinePred()
	end
end
----
----
function TauntOnKill()
	if myHero.kills > KillCount then
		if Menu.taunt == 2 then
			SendMastery()
		elseif Menu.taunt == 3 then
			SendEmote(1)
		elseif Menu.taunt == 4 then
			SendEmote(2)
		elseif Menu.taunt == 5 then
			SendEmote(3)
		elseif Menu.taunt == 6 then
			SendEmote(4)
		end
	
		KillCount = myHero.kills
	end
end
function SendEmote(id)
	local Emote = {0xB1,0xF1,0x71,0x31}
	local p = CLoLPacket(0x000F)
	p.vTable = 0xF02A78
	p:EncodeF(myHero.networkID)
	p:Encode1(Emote[id])
	p:Encode4(0x00000000)
	p:Encode1(0x00)
	SendPacket(p)
end
function SendMastery()
	local p = CLoLPacket(0x003E)
	p.vTable = 0xEC2BC0
	p:EncodeF(myHero.networkID)
	p:Encode4(0x00000000)
	p:Encode1(0x76)
	p:Encode1(0x07)
	p:Encode1(0x8C)
	p:Encode1(0xED)
	SendPacket(p)
end
function SkinSelector()
	SetSkin(myHero, Menu.skins - 1)
end
----
----
function ColorBuilder(index)
	local ColorTable = {ARGB(Menu.draw.transparency,255,0,0),ARGB(Menu.draw.transparency,255,153,0),ARGB(Menu.draw.transparency,255,219,77),ARGB(Menu.draw.transparency,51,204,51),
						ARGB(Menu.draw.transparency,51,204,255),ARGB(Menu.draw.transparency,0,51,204),ARGB(Menu.draw.transparency,153,51,255),ARGB(Menu.draw.transparency,255,102,255),
						ARGB(Menu.draw.transparency,255,255,255),ARGB(Menu.draw.transparency,0,0,0)}
	return ColorTable[index]
end
function OnDrawCircles()
	if not Menu.draw.LagFree then 
		_G.DrawCircle = _G.oldDrawCircle
	else
		_G.DrawCircle = DrawCircle2
	end
end
function CircleInit()
	_G.oldDrawCircle = rawget(_G, 'DrawCircle')
	_G.DrawCircle = DrawCircle2
end
function DrawCircleNextLvl(x, y, z, radius, width, color, chordlength)
	radius = radius + 50 or 300
	quality = math.max(8,round(180/math.deg((math.asin((chordlength/(2*radius)))))))
	quality = 2 * math.pi / quality
	radius = radius*.92
	local points = {}
	for theta = 0, 2 * math.pi + quality, quality do
		local c = WorldToScreen(D3DXVECTOR3(x + radius * math.cos(theta), y, z - radius * math.sin(theta)))
		points[#points + 1] = D3DXVECTOR2(c.x, c.y)
	end
	DrawLines2(points, width or 1, color or 4294967295)
end
function round(num) 
 if num >= 0 then return math.floor(num+.5) else return math.ceil(num-.5) end
end
function DrawCircle2(x, y, z, radius, color)
    local vPos1 = Vector(x, y, z)
    local vPos2 = Vector(cameraPos.x, cameraPos.y, cameraPos.z)
    local tPos = vPos1 - (vPos1 - vPos2):normalized() * radius
    local sPos = WorldToScreen(D3DXVECTOR3(tPos.x, tPos.y, tPos.z))
    if OnScreen({ x = sPos.x, y = sPos.y }, { x = sPos.x, y = sPos.y }) then
        DrawCircleNextLvl(x, y, z, radius, 1, color, 150) 
    end
end
