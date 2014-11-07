--Hero Check
if myHero.charName ~= "FiddleSticks" then return end

--Variables
local ts
local mode = {TARGET_LOW_HP, TARGET_MOST_AP, TARGET_MOST_AD, TARGET_PRIORITY, TARGET_NEAR_MOUSE, TARGET_LOW_HP_PRIORITY, TARGET_LESS_CAST, TARGET_LESS_CAST_PRIORITY}

function OnLoad()
  --Init Prints
  PrintChat ("LelFiddle V1.0.0 [11/05/2014 Build]")

  --Menu Setup
  Config = scriptConfig("LelFiddle Config", "LelFiddle")

  Config:addSubMenu("Drawing Menu", "cDraw")
  Config.cDraw:addParam("drawCircle", "Draw Circle", SCRIPT_PARAM_ONOFF, true)
  Config.cDraw:addParam("printMp", "Print Mana warning", SCRIPT_PARAM_ONKEYTOGGLE, true, string.byte("A"))

  Config:addSubMenu("Teamfight Menu", "cFight")
  Config.cFight:addParam("combo", "Combo mode", SCRIPT_PARAM_ONKEYDOWN, false, string.byte(" "))
  Config.cFight:addParam("useUlt", "Use Ult", SCRIPT_PARAM_ONOFF, false)

  Config:addSubMenu("Harass Menu", "cHarass")
  Config.cHarass:addParam("ManaSliderHarass", "Use mana till :",   SCRIPT_PARAM_SLICE, 40, 0, 100, 0)
  Config.cHarass:addParam("harass", "Harass mode", SCRIPT_PARAM_ONKEYDOWN, false, string.byte("C"))
  Config.cHarass:addParam("useQ", "Use Q", SCRIPT_PARAM_ONOFF, true)
  
  ts = TargetSelector(TARGET_LOW_HP_PRIORITY,650)
  
  ts.name = "FiddleSticks"
  Config:addTS(ts)
end

function OnTick()
  ts:update()

  if (Config.cHarass.harass) then
    Packet('S_MOVE', {}):send()
  end

  if (ts.target ~= nil) then
    if not FidMana(Config.cHarass.ManaSliderHarass) then
      if (Config.cHarass.harass) then
        if (myHero:CanUseSpell(_E) == READY) then
          CastSpell(_E, ts.target)
        end

        if Config.cHarass.useQ then
          if (myHero:CanUseSpell(_Q) == READY) then
            CastSpell(_Q, ts.target)
          end
        end
      end
    end

    if (Config.cFight.combo) then
      if Config.cFight.useUlt then
        if (myHero:CanUseSpell(_R) == READY) then
          CastSpell(_R, ts.target.x,ts.target.z)
        end
      end

      if (myHero:CanUseSpell(_Q) == READY) then
        CastSpell(_Q, ts.target)
      end

      if (myHero:CanUseSpell(_E) == READY) then
        CastSpell(_E, ts.target)
      end

      if (myHero:CanUseSpell(_W) == READY and myHero:CanUseSpell(_E) ~= READY and myHero:CanUseSpell(_Q) ~= READY) then
        CastSpell(_W, ts.target)
      end


    end
  end
end

function OnDraw()
  for i = 1, heroManager.iCount, 1 do
    local champ = heroManager:getHero(i)
    if ValidTarget(champ) then
      --MP Check and Draw
      if Config.cDraw.printMp then
        if (myHero.mana < 235) then
          DrawText3D("Need mana for QWE Combo", champ.x, champ.y, champ.z, 15, ARGB(255,255,255,255), true)
        end
      end

      --Selected Target Rings
      if ts.target ~= nil then
        DrawCircle3D(champ.x, champ.y, champ.z, 30, 6, ARGB(200,255,155,0), 16)
      end
    end
  end

  if (Config.cDraw.drawCircle) then
    DrawCircle(myHero.x, myHero.y, myHero.z, 580, 0x00ffff)
    DrawCircle(myHero.x, myHero.y, myHero.z, 750, 0x00ffff)
  end
end

function FidMana(percent)
  if myHero.mana < (myHero.maxMana * ( percent / 100)) then
    return true
  else
    return false
  end
end