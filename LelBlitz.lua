if myHero.charName ~= "Blitzcrank" then return end
require "DivinePred"

--Variables
local ts
local mode = {TARGET_LOW_HP, TARGET_MOST_AP, TARGET_MOST_AD, TARGET_PRIORITY, TARGET_NEAR_MOUSE, TARGET_LOW_HP_PRIORITY, TARGET_LESS_CAST, TARGET_LESS_CAST_PRIORITY}
local Target
local version = "0.01"

DivinePred.debugMode = true --basically for me to debug some stuff as i develop it.
local processTime  = os.clock()*1000
local enemyChamps = {}
local dp = DivinePred() -- create an instance of the DivinePred class
local mySkillShot = SkillShot.PRESETS['RocketGrab'] -- 
local predictionCD = 200 -- prediction cooldown, attempts every every x ms 
local minHitDistance = 75
local lastTimeStamp = nil
local predict = true

function OnLoad() -- Store enemy Champs
	Config = scriptConfig("LelBlitz Config", "LelBlitz")

	Config:addSubMenu("Drawing Menu", "cDraw")
	Config.cDraw:addParam("drawPull", "Draw Pull", SCRIPT_PARAM_ONOFF, true)
	Config.cDraw:addParam("drawUlt", "Draw Ult", SCRIPT_PARAM_ONOFF, true)
	
	Config:addSubMenu("Teamfight Menu", "cFight")
	Config.cFight:addParam("combo", "Combo mode", SCRIPT_PARAM_ONKEYDOWN, false, string.byte(" "))
	Config.cFight:addParam("useUlt", "KS With Ult", SCRIPT_PARAM_ONOFF, false)
	
	ts = TargetSelector(TARGET_MOST_AD, 1350, DAMAGE_MAGICAL, false, true)
	ts.name = "Blitzcrank"
	
	Config:addTS(ts)
	
	
	_G.oldDrawCircle = rawget(_G, 'DrawCircle')
	_G.DrawCircle = DrawCircle2
	
	print("<font color=\"#ff0000\"><b>Loaded LelBlitz version "..version.."</b></font>")
end

function OnDraw()
	for i = 1, heroManager.iCount, 1 do
		local champ = heroManager:getHero(i)
		if ValidTarget(champ) then
		--Selected Target Rings
			if ts.target ~= nil then
				DrawCircle(champ.x,champ.y,champ.z, 30, ARGB(255,255,0,0))
			end
		end
	end
  
	if (Config.cDraw.drawPull) then
		if((myHero:CanUseSpell(_Q) == READY)) then
			DrawCircle(myHero.x,myHero.y,myHero.z, 950, ARGB(255,255,0,0))
		end
	end
	
	if (Config.cDraw.drawUlt) then
		if((myHero:CanUseSpell(_R) == READY)) then
			DrawCircle(myHero.x,myHero.y,myHero.z, 590, ARGB(255,255,0,0))
		end
	end
end


function OnTick()
	ts:update()
	_G.DrawCircle = DrawCircle2
	if  (lastTimeStamp and  os.clock()*1000 - lastTimeStamp < 200) then return end 
	
	if (Config.cFight.combo) then
		combo()
	end
	
	lastTimeStamp = os.clock()*1000
end

function combo()
	if (ts.target ~= nil) then
		local damage = getDmg("R",ts.target, myHero)
		local unit = DPTarget(ts.target)
		local State, Position, perc = dp:predict(unit, mySkillShot)
		if State == SkillShot.STATUS.SUCCESS_HIT then 
			CastSpell(_Q, Position.x, Position.z)
		end
		
		if GetDistance(ts.target) <= 280 and (myHero:CanUseSpell(_E) == READY) then
				CastSpell(_E)
				myHero:Attack(ts.target)
		end
		
		if (Config.cFight.useUlt) then
			if GetDistance(ts.target) <= 590 and (myHero:CanUseSpell(_R) == READY) and damage > ts.target.health then
					CastSpell(_R)
					myHero:Attack(ts.target)
			end
		end
	end
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
        DrawCircleNextLvl(x, y, z, radius, 1, color, 75) 
    end
end