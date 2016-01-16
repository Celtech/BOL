local barrelList = {}
local myHero = GetMyHero()

function OnLoad()
	print("Barrel Snapper Loaded")
	_G.DrawCircle = DrawCircle2
end

function OnTick()
	
end

function OnDraw()
	DrawSpots()
	
end

function DrawSpots()
	for _, spots in pairs(barrelList) do
		print(checkLineCollision(mousePos.x,mousePos.z,myHero.x,myHero.z,spots.x,spots.z,750))
		print("Hi")
		if mPos3D(mousePos.x, mousePos.z, spots.x, spots.z, 750) then
			DrawCircle(spots.x, spots.y, spots.z, 750, ARGB(255,0,255,0))
		else
			DrawCircle(spots.x, spots.y, spots.z, 750, ARGB(255,255,255,255))
		end
	end
end

function OnCreateObj(obj)
	if obj.name == "Barrel" then
		barrelList[GetGameTimer()] = obj
	end
end

function mPos3D(cx,cz,x,z,r)
	if (math.pow(cx-x,2)+math.pow(cz-z,2)<math.pow(r,2)) then
		return true
	else
		return false
	end
end

function checkLineCollision(x1,y1,x2,y2, circlex, circley, circler)
    for n=0,1,0.001 do
        local x = x1 + ((x2 - x1) * n)
        local y = y1 + ((y2 - y1) * n)
        local dist = math.sqrt((x - circlex)^2 + (y - circley)^2)
        if(dist <= circler) then return dist end
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
        DrawCircleNextLvl(x, y, z, radius, 1, color, 150) 
    end
end

