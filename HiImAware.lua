--if (not VIP_USER) then
--	print("<b><font color=\"#FF0000\">[Hi I'm Aware]</font><font color=\"#FFFFFF\"> You must be a VIP to use this script :(</b></font>");
--	return;
--end

assert(load(Base64Decode("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"), nil, "bt", _ENV))() ScriptStatus("VILMJQKJMPL") 

local myHero = GetMyHero()

local wardPos = { 
	{7777,800, 180}, 
	{10386,3041,240}, 
	{7088,3093,240}, 
	{6565,4700,240},
	{12222.328125,1278.7239990234 ,240}, 
	{13197.298828125,2198.5405273438 ,240}, 
	{8599.201171875,4715.81640625 ,240}, 
	{9442.0107421875,5624.416015625 ,240}, 
	{9928.279296875,6522.7236328125 ,240}, 
	{12508.688476563,5201.0532226563 ,240}, 
	{11537.41015625,7124.78515625 ,240},
	{11865.547851563,3901.45703125 ,240}, 
	{12222.715820313,8163.48046875 ,240}, 
	{9973.1962890625,7889.0434570313 ,240}, 
	{5557.1391601563,3511.5476074219 ,240}, 
	{3362.5991210938,7756.443359375 ,240}, 
	{4686.5844726563,10054.62109375 ,240}, 
	{5249.2065429688,9094.015625 ,240}, 
	{4929.78515625,8361.3193359375 ,240},
	{8291.970703125,10240.630859375 ,240},
	{9148.853515625,11434.6015625 ,240},
	{7795.7133789063,11756.650390625 ,240},
	{6248.728515625,10277.24609375 ,240},
	{10180.481445313,4825.6669921875 ,240},
	{9203.9873046875,2125.4926757813 ,240},
	{14109.025390625,6993.201171875 ,240},
	{5670.9155273438,12681.665039063 ,240},
	{7169.763671875,14101.22265625 ,240},
	{819.56982421875,8101.2841796875 ,240},
	{2307.5925292969,9709.6630859375 ,240},
	{4475,11820 ,240},
	{6921,11445 ,240}
}
local sspels = {{"summonerdot","I"},
				{"summonerexhaust","E"},
				{"summonerflash","F"},
				{"summonerheal","H"},
				{"summonerteleport","T"},
				{"summonerhaste","G"},
				{"summonerbarrier","B"},
				{"summonersmite","S"}
}
local enemywardpos = {}

function OnLoad()
	print("<b><font color=\"#FF0000\">[Hi I'm Aware]</font><font color=\"#FFFFFF\"> Loaded</font>")
	DrawMenu()
	
	_G.oldDrawCircle = rawget(_G, 'DrawCircle')
	_G.DrawCircle = DrawCircle2
end

function OnTick()
	if not Menu.general.LagFree then 
		_G.DrawCircle = _G.oldDrawCircle 
	elseif Menu.general.LagFree then
		_G.DrawCircle = DrawCircle2
	end
	
	if Menu.wards.enable then
		SnapWardPlacements()
	end
end

function OnCreateObj(obj)
	if obj.team ~= myHero.team then
		if obj.name == "TrinketTotemLvl1" or obj.name == "VisionWard" or obj.name == "TrinketOrbLvl3" or obj.name == "ItemGhostWard" or obj.name == "SightWard" then
			local destroytime = GetGameTimer() + 180
			enemywardpos[destroytime] = obj
		end
	end
end

function OnDeleteObj(obj)
	if obj.name == "TrinketTotemLvl1" or obj.name == "VisionWard" or obj.name == "TrinketOrbLvl3" or obj.name == "ItemGhostWard" or obj.name == "SightWard" then
		for time, ward in pairs(enemywardpos) do
			if obj == ward then
				enemywardpos[time] = nil
			end
		end
	end	
end

function OnDraw()
	if Menu.lines.draw then
		DrawChampionLines()
	end
	
	if Menu.wards.draw then
		DrawWardSpots()
	end
	
	if Menu.general.turret then
		DrawTowerRange()
	end
	
	DrawWayPoints()
	DrawItemSpots()
	
	if Menu.general.cd then
		TrackCoolDowns()
	end
end


--function OnRecvPacket(p)
		--p.pos = 2
		--local name = ""
		--local obj = objManager:GetObjectByNetworkId(p:DecodeF())
		--if obj and obj.valid then
		--	name = obj.charName
		--else return end
		
--		if p.header == 0x00D4 then
--			print("<b><font color=\"#FF0000\">[Hi I'm Aware]</font><font color=\"#FFFFFF\">  is recalling0</b></font>")
--		end
		
		
--		if p.header == 0x00D4 then
--			print("<b><font color=\"#FF0000\">[Hi I'm Aware]</font><font color=\"#FFFFFF\"> canceled recall1</b></font>")
--		end
--end


function DrawMenu()
	Menu = scriptConfig("Aware", "awr")
	
	Menu:addSubMenu("General Settings", "general")
	Menu.general:addParam("LagFree", "Use Lag Free Circles", 1, true)
	Menu.general:addParam("turret", "Draw Turret Ranges", 1, true)
	Menu.general:addParam("cd", "Track Summoner Cool Downs", 1, true)
	
	Menu:addSubMenu("Champion Lines Menu", "lines")
	Menu.lines:addParam("draw", "Draw Champion Lines", 1, true)
	Menu.lines:addParam("distance", "Max Line Distance", SCRIPT_PARAM_SLICE, 5000, 300, 10000, decimalPlace)
	
	Menu:addSubMenu("Magnetic Wards", "wards")
	Menu.wards:addParam("draw", "Draw Ward Spots", 1, true)
	Menu.wards:addParam("enable", "Enable Magnetic Wards", 1, true)
	
	Menu:addSubMenu("Way Points", "wp")
	Menu.wp:addParam("draw", "Draw Waypoint Lines", 1, true)
	Menu.wp:addParam("text", "Draw Champion Name", 1, true)
	
	Menu:addSubMenu("Item Visibility", "ivb")
	Menu.ivb:addParam("draww", "Draw Wards", 1, true)
	--Menu.ivb:addParam("drawc", "Draw Caitlyn Traps", 1, true)
	--Menu.ivb:addParam("drawt", "Draw Teemo Shrooms", 1, true)
	--Menu.ivb:addParam("drawn", "Draw Nidalee Traps", 1, true)
end

function DrawItemSpots()
	for time, ward in pairs(enemywardpos) do
		local remainingTime = TimerText(time - GetGameTimer())
		DrawText3D(tostring(ward.name), ward.x, ward.y, ward.z, 16, ARGB(255, 255, 255, 255), true)
		DrawCircle(ward.x, ward.y, ward.z, 80, ARGB(255,255,255,255))
	end	
end
function TrackCoolDowns()
	if not myHero.dead then
		for _, enemy in pairs(GetEnemyHeroes()) do			
			if not enemy.dead and enemy.visible then			
				if enemy.GetSpellData(enemy, 0).currentCd > ((enemy.GetSpellData(enemy, 0).cd / 3) * 2) then
					DrawTextA(tostring("Q"), 16, GetUnitHPBarPos(enemy).x - 68, GetUnitHPBarPos(enemy).y + (GetUnitHPBarOffset(enemy).y * 50 + 12.5), ARGB(255,255,0,0))
				elseif enemy.GetSpellData(enemy, 0).currentCd >(enemy.GetSpellData(enemy, 0).cd / 10) then
					DrawTextA(tostring("Q"), 16, GetUnitHPBarPos(enemy).x - 68, GetUnitHPBarPos(enemy).y + (GetUnitHPBarOffset(enemy).y * 50 + 12.5), 0xFFFFA500)
				elseif enemy.GetSpellData(enemy, 0).currentCd > 0 then
					DrawTextA(tostring("Q"), 16, GetUnitHPBarPos(enemy).x - 68, GetUnitHPBarPos(enemy).y + (GetUnitHPBarOffset(enemy).y * 50 + 12.5), 0xFFFFFF00)
				else
					DrawTextA(tostring("Q"), 16, GetUnitHPBarPos(enemy).x - 68, GetUnitHPBarPos(enemy).y + (GetUnitHPBarOffset(enemy).y * 50 + 12.5), 0xFF00FF00)
				end
				
				
				if enemy.GetSpellData(enemy, 1).currentCd > ((enemy.GetSpellData(enemy, 1).cd / 3) * 2) then
					DrawTextA(tostring("W"), 16, GetUnitHPBarPos(enemy).x - 55, GetUnitHPBarPos(enemy).y + (GetUnitHPBarOffset(enemy).y * 50 + 12.5), ARGB(255,255,0,0))
				elseif enemy.GetSpellData(enemy, 1).currentCd >(enemy.GetSpellData(enemy, 1).cd / 10) then
					DrawTextA(tostring("W"), 16, GetUnitHPBarPos(enemy).x - 55, GetUnitHPBarPos(enemy).y + (GetUnitHPBarOffset(enemy).y * 50 + 12.5), 0xFFFFA500)
				elseif enemy.GetSpellData(enemy, 1).currentCd > 0 then
					DrawTextA(tostring("W"), 16, GetUnitHPBarPos(enemy).x - 55, GetUnitHPBarPos(enemy).y + (GetUnitHPBarOffset(enemy).y * 50 + 12.5), 0xFFFFFF00)
				else
					DrawTextA(tostring("W"), 16, GetUnitHPBarPos(enemy).x - 55, GetUnitHPBarPos(enemy).y + (GetUnitHPBarOffset(enemy).y * 50 + 12.5), 0xFF00FF00)
				end
				
				
				if enemy.GetSpellData(enemy, 2).currentCd > ((enemy.GetSpellData(enemy, 2).cd / 3) * 2) then
					DrawTextA(tostring("E"), 16, GetUnitHPBarPos(enemy).x - 38, GetUnitHPBarPos(enemy).y + (GetUnitHPBarOffset(enemy).y * 50 + 12.5), ARGB(255,255,0,0))
				elseif enemy.GetSpellData(enemy, 2).currentCd >(enemy.GetSpellData(enemy, 2).cd / 10) then
					DrawTextA(tostring("E"), 16, GetUnitHPBarPos(enemy).x - 38, GetUnitHPBarPos(enemy).y + (GetUnitHPBarOffset(enemy).y * 50 + 12.5), 0xFFFFA500)
				elseif enemy.GetSpellData(enemy, 2).currentCd > 0 then
					DrawTextA(tostring("E"), 16, GetUnitHPBarPos(enemy).x - 38, GetUnitHPBarPos(enemy).y + (GetUnitHPBarOffset(enemy).y * 50 + 12.5), 0xFFFFFF00)
				else
					DrawTextA(tostring("E"), 16, GetUnitHPBarPos(enemy).x - 38, GetUnitHPBarPos(enemy).y + (GetUnitHPBarOffset(enemy).y * 50 + 12.5), 0xFF00FF00)
				end
	
	
				if enemy.GetSpellData(enemy, 3).currentCd > ((enemy.GetSpellData(enemy, 3).cd / 3) * 2) then
					DrawTextA(tostring("R"), 16, GetUnitHPBarPos(enemy).x - 27, GetUnitHPBarPos(enemy).y + (GetUnitHPBarOffset(enemy).y * 50 + 12.5), ARGB(255,255,0,0))
				elseif enemy.GetSpellData(enemy, 3).currentCd >(enemy.GetSpellData(enemy, 3).cd / 10) then
					DrawTextA(tostring("R"), 16, GetUnitHPBarPos(enemy).x - 27, GetUnitHPBarPos(enemy).y + (GetUnitHPBarOffset(enemy).y * 50 + 12.5), 0xFFFFA500)
				elseif enemy.GetSpellData(enemy, 3).currentCd > 0 then
					DrawTextA(tostring("R"), 16, GetUnitHPBarPos(enemy).x - 27, GetUnitHPBarPos(enemy).y + (GetUnitHPBarOffset(enemy).y * 50 + 12.5), 0xFFFFFF00)
				else
					DrawTextA(tostring("R"), 16, GetUnitHPBarPos(enemy).x - 27, GetUnitHPBarPos(enemy).y + (GetUnitHPBarOffset(enemy).y * 50 + 12.5), 0xFF00FF00)
				end
				
				if enemy.GetSpellData(enemy, SUMMONER_1).currentCd > ((enemy.GetSpellData(enemy, SUMMONER_1).cd / 3) * 2) then
					DrawTextA(tostring(ReturnSSByLetter(enemy,SUMMONER_1)), 16, GetUnitHPBarPos(enemy).x - 15, GetUnitHPBarPos(enemy).y + (GetUnitHPBarOffset(enemy).y * 50 + 12.5), ARGB(255,255,0,0))
				elseif enemy.GetSpellData(enemy, SUMMONER_1).currentCd >(enemy.GetSpellData(enemy, SUMMONER_1).cd / 10) then
					DrawTextA(tostring(ReturnSSByLetter(enemy,SUMMONER_1)), 16, GetUnitHPBarPos(enemy).x - 15, GetUnitHPBarPos(enemy).y + (GetUnitHPBarOffset(enemy).y * 50 + 12.5), 0xFFFFA500)
				elseif enemy.GetSpellData(enemy, SUMMONER_1).currentCd > 0 then
					DrawTextA(tostring(ReturnSSByLetter(enemy,SUMMONER_1)), 16, GetUnitHPBarPos(enemy).x - 15, GetUnitHPBarPos(enemy).y + (GetUnitHPBarOffset(enemy).y * 50 + 12.5), 0xFFFFFF00)
				else
					DrawTextA(tostring(ReturnSSByLetter(enemy,SUMMONER_1)), 16, GetUnitHPBarPos(enemy).x - 15, GetUnitHPBarPos(enemy).y + (GetUnitHPBarOffset(enemy).y * 50 + 12.5), 0xFF00FF00)
				end
				
				if enemy.GetSpellData(enemy, SUMMONER_2).currentCd > ((enemy.GetSpellData(enemy, SUMMONER_2).cd / 3) * 2) then
					DrawTextA(tostring(ReturnSSByLetter(enemy,SUMMONER_2)), 16, GetUnitHPBarPos(enemy).x - 3, GetUnitHPBarPos(enemy).y + (GetUnitHPBarOffset(enemy).y * 50 + 12.5), ARGB(255,255,0,0))
				elseif enemy.GetSpellData(enemy, SUMMONER_2).currentCd >(enemy.GetSpellData(enemy, SUMMONER_2).cd / 10) then
					DrawTextA(tostring(ReturnSSByLetter(enemy,SUMMONER_2)), 16, GetUnitHPBarPos(enemy).x - 3, GetUnitHPBarPos(enemy).y + (GetUnitHPBarOffset(enemy).y * 50 + 12.5), 0xFFFFA500)
				elseif enemy.GetSpellData(enemy, SUMMONER_2).currentCd > 0 then
					DrawTextA(tostring(ReturnSSByLetter(enemy,SUMMONER_2)), 16, GetUnitHPBarPos(enemy).x - 3, GetUnitHPBarPos(enemy).y + (GetUnitHPBarOffset(enemy).y * 50 + 12.5), 0xFFFFFF00)
				else
					DrawTextA(tostring(ReturnSSByLetter(enemy,SUMMONER_2)), 16, GetUnitHPBarPos(enemy).x - 3, GetUnitHPBarPos(enemy).y + (GetUnitHPBarOffset(enemy).y * 50 + 12.5), 0xFF00FF00)
				end
			end
		end
	end
end
function ReturnSSByLetter(unit, slot)
	for _, spell in pairs(sspels) do
		if unit.GetSpellData(unit, slot).name == spell[1] then
			return spell[2]
		end
	end
end
	local sPos = WorldToScreen(D3DXVECTOR3(x, y, z))
	DrawText(text, size, sPos.x, sPos.y, color)
end
function SnapWardPlacements()
	for _, spots in pairs(wardPos) do
		if mPos3D(mousePos.x, mousePos.z, spots[1], spots[2], spots[3]) then
			AddCastSpellCallback(function(iSlot,startPos,endPos,target)
				if myHero.GetSpellData(myHero, iSlot).name == "TrinketTotemLvl1" or myHero.GetSpellData(myHero, iSlot).name == "VisionWard" or myHero.GetSpellData(myHero, iSlot).name == "TrinketOrbLvl3" or myHero.GetSpellData(myHero, iSlot).name == "ItemGhostWard" then
					endPos.x, endPos.z=spots[1], spots[2]
				end
			end)
		end
	end
end
function DrawWayPoints()
	if not myHero.dead then
		for _, enemy in pairs(GetEnemyHeroes()) do
			if not enemy.dead and enemy.visible then
				
				if Menu.wp.draw then
					FixedDrawLine3D(enemy.x, enemy.y, enemy.z, enemy.endPath.x, enemy.endPath.y, enemy.endPath.z, 1, 0xFFFFFFFF)
				end
				
				if Menu.wp.text then
					DrawText3D(tostring(enemy.charName), enemy.endPath.x, enemy.endPath.y, enemy.endPath.z, 16, ARGB(255, 255, 255, 255), true)
				end
			end
		end
	end
end
function DrawTowerRange()
	for _, i in pairs(GetTurrets()) do
		if mPos3D(myHero.x, myHero.z, i.x, i.z, 950) then
			DrawCircle(i.x, i.y, i.z, 950 , 0xFFFF0000)
		else
			DrawCircle(i.x, i.y, i.z, 950 , 0xFF00FF00)
		end
	end
end
function DrawWardSpots()
	for _, spots in pairs(wardPos) do
		if mPos3D(mousePos.x, mousePos.z, spots[1], spots[2], spots[3]) then
			DrawWardCircle(spots[1], 48, spots[2], spots[3], ARGB(255,0,255,0))
		else
			DrawWardCircle(spots[1], 48, spots[2], spots[3], ARGB(255,255,255,255))
		end
	end
end
function mPos3D(cx,cz,x,z,r)
	if (math.pow(cx-x,2)+math.pow(cz-z,2)<math.pow(r,2)) then
		return true
	else
		return false
	end
end
function DrawWardCircle(x,y,z,radius,color)
	DrawCircle(x, y, z, radius, color)
	DrawCircle(x, y, z, 10, color)
end
function DrawChampionLines()
	if not myHero.dead then
		for _, enemy in pairs(GetEnemyHeroes()) do
			if not enemy.dead and enemy.visible then
				local divisor = Menu.lines.distance / 3
				
				if GetDistance(enemy) < divisor then
					FixedDrawLine3D(myHero.x, myHero.y, myHero.z, enemy.x, enemy.y, enemy.z, 1, 0xFFFF0000)
				elseif GetDistance(enemy) < divisor*2 then
					FixedDrawLine3D(myHero.x, myHero.y, myHero.z, enemy.x, enemy.y, enemy.z, 1, 0xFFFFA500)
				elseif GetDistance(enemy) < Menu.lines.distance then
					FixedDrawLine3D(myHero.x, myHero.y, myHero.z, enemy.x, enemy.y, enemy.z, 1, 0xFF00FF00)
				end
			end
		end
	end
end
function FixedDrawLine3D(x1, y1, z1, x2, y2, z2, width, color)
    local p = WorldToScreen(D3DXVECTOR3(x1, y1, z1))
    local px, py = p.x, p.y
    local c = WorldToScreen(D3DXVECTOR3(x2, y2, z2))
    local cx, cy = c.x, c.y
    DrawLine(cx, cy, px, py, width or 1, color or 4294967295)
end
function DrawCircleNextLvl(x, y, z, radius, width, color, chordlength)
    radius = radius or 300
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
