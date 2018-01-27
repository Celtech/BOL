if myHero.charName ~= "Xayah" and myHero.charName ~= "Rakan" then return end
assert(load(Base64Decode("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"), nil, "bt", _ENV))()
TrackerLoad("7c0PSV2nxVLfueY5")

function OnLoad()
    local version = 0.13
    CheckUpdatesLib()
    CheckUpdates(version)

    if _G.Lulzlib then
        _G.Lulzlib:CreateBaseMenu()
        SetSkin(myHero, LulzMenu.Skins - 1)
        Orbwalker()
        Prediction(LulzMenu.General)
        CTargetSelector()
        ItemsAndSummoners()
        AntiBaseUlt()
        Humanizer()
        ThreshLantern()
        _G[myHero.charName]()
    end
end
function OnUnload()
    SetSkin(myHero, -1)
end

class "Rakan"
function Rakan:__init()
    _G.Lulzlib:Log("Rakan is currently under development. He will be added soon <3.")
end

class "Xayah"
function Xayah:__init()
    Xayah.SpellTable = {
       AA = {range = myHero.range + myHero.boundingRadius},
        Q = {range = 1075, speed = 2000, delay = 0.25, width = 75, collision = false},
        W = {range = 1000, delay = 0.25},
        E = {range = 1075, speed = 2000, delay = 0.00, width = 75, collision = false},
        R = {range = 1040, speed = 2000, delay = 0.50, angle = 150, collision = false, aoe = true}
    }
    Xayah.spellDmg = {
        [_Q] = function(unit) if _G.Lulzlib:IsQReady() then return myHero:CalcMagicDamage(unit, ((((myHero:GetSpellData(_Q).level * 20) + 20) + (myHero.addDamage * 0.4)))) end end,
        [_E] = function(unit) if _G.Lulzlib:IsEReady() then return myHero:CalcMagicDamage(unit, ((((myHero:GetSpellData(_E).level * 10) + 40) + (myHero.addDamage * 0.6)))) end end,
        [_R] = function(unit) if _G.Lulzlib:IsRReady() then return myHero:CalcMagicDamage(unit, ((((myHero:GetSpellData(_R).level * 50) + 50) + (myHero.addDamage * 1.0)))) end end
    }
    self.feathers = {}
    --[[
    type 1 = distance check
    type 2 = line/cone skillshot w/ collision
    type 3 = line/cone skillshot w/o collision
    type 4 = circular skillshot
    type 5 = targeted
    ]]
    self.jukeTable = {
    	["Aatrox"] = {
    		{type = 4, range = 1200, spell = _Q, name = "Q"}
    	},
    	["Ahri"] = {
    		{type = 2, range = 800,  spell = _E, name = "E"},
    	},
    	["Alistar"] = {
    		{type = 2, range = 1200, spell = _Q, name = "Q"}
    	},
    	["Amumu"] = {
    		{type = 1, range = 800,  spell = _R, name = "R"},
    		{type = 2, range = 1200, spell = _Q, name = "Q"}
    	},
    	["Anivia"] = {
    		{type = 3, range = 1200, spell = _Q, name = "Q"}
    	},
    	["Annie"] = {
    		{type = 5, range = 1200, spell = _Q, name = "Q"},
    		{type = 3, range = 1200, spell = _W, name = "W"},
    		{type = 4, range = 800,  spell = _R, name = "R"},

    	},
    	["Ashe"] = {
    		{type = 3, range = 800,  spell = _R, name = "R"},
    	},
    	["Azir"] = {
    		{type = 3, range = 800,  spell = _R, name = "R"},
    	},
    	["Bard"] = {
    		{type = 4, range = 800,  spell = _R, name = "R"},
    	},
    	["Blitzcrank"] = {
    		{type = 1, range = 800,  spell = _R, name = "R"},
    		{type = 2, range = 1200, spell = _Q, name = "Q"}
    	},
    	["Brand"] = {
    		{type = 5, range = 800,  spell = _R, name = "R"},
    	},
    	["Braum"] = {
    		{type = 3, range = 800,  spell = _R, name = "R"},
    	},
    	["Cassiopeia"] = {
    		{type = 3, range = 800,  spell = _R, name = "R"},
    	},
    	["ChoGath"] = {
    		{type = 4, range = 1200, spell = _Q, name = "Q"}
    	},
    	["Draven"] = {
    		{type = 3, range = 800,  spell = _R, name = "R"},
    	},
    	["Ezreal"] = {
    		{type = 3, range = 800,  spell = _R, name = "R"},
    	},
    	["Fiddlesticks"] = {
    		{type = 4, range = 800,  spell = _R, name = "R"},
    	},
    	["Fizz"] = {
    		{type = 3, range = 800,  spell = _R, name = "R"},
    	},
    	["Gangplank"] = {
    		{type = 4, range = 800,  spell = _R, name = "R"},
    	},
    	["Gragas"] = {
    		{type = 4, range = 800,  spell = _R, name = "R"},
    	},
    	["Graves"] = {
    		{type = 3, range = 800,  spell = _R, name = "R"},
    	},
    	["Hecarim"] = {
    		{type = 3, range = 800,  spell = _R, name = "R"},
    	},
    	["Illaoi"] = {
    		{type = 1, range = 800,  spell = _R, name = "R"},
    	},
    	["Ivern"] = {
    		{type = 3, range = 1200, spell = _Q, name = "Q"}
    	},
    	["Jinx"] = {
    		{type = 3, range = 800,  spell = _R, name = "R"},
    	},
    	["Karthus"] = {
    		{type = 6, range = 800,  spell = _R, name = "R", delay = 1},
    	},
    	["Katarina"] = {
    		{type = 1, range = 800,  spell = _R, name = "R"},
    	},
    	["Kennen"] = {
    		{type = 1, range = 800,  spell = _R, name = "R"},
    	},
    	["Leona"] = {
    		{type = 4, range = 800,  spell = _R, name = "R"},
    	},
    	["Lux"] = {
    		{type = 3, range = 800,  spell = _R, name = "R"},
    	},
    	["Malphite"] = {
    		{type = 4, range = 800,  spell = _R, name = "R"},
    	},
    	["MissFortune"] = {
    		{type = 3, range = 800,  spell = _R, name = "R"},
    	},
    	["Morgana"] = {
    		{type = 6, range = 800,  spell = _R, name = "R"},
    	},
    	["Nami"] = {
    		{type = 3, range = 800,  spell = _R, name = "R"},
    	},
    	["Nautilus"] = {
    		{type = 5, range = 800,  spell = _R, name = "R"},
    	},
    	["Nunu"] = {
    		{type = 1, range = 800,  spell = _R, name = "R"},
    	},
    	["Orianna"] = {
    		{type = 4, range = 800,  spell = _R, name = "R"},
    	},
    	["Riven"] = {
    		{type = 3, range = 800,  spell = _R, name = "R"},
    	},
    	["Rumble"] = {
    		{type = 3, range = 800,  spell = _R, name = "R"},
    	},
    	["Sejuani"] = {
    		{type = 3, range = 800,  spell = _R, name = "R"},
    	},
    	["Sona"] = {
    		{type = 3, range = 800,  spell = _R, name = "R"},
    	},
    	["Syndra"] = {
    		{type = 5, range = 800,  spell = _R, name = "R"},
    	},
    	["Tristana"] = {
    		{type = 5, range = 800,  spell = _R, name = "R"},
    	},
    	["Veigar"] = {
    		{type = 5, range = 800,  spell = _R, name = "R"},
    	},
    	["VelKoz"] = {
    		{type = 3, range = 800,  spell = _R, name = "R"},
    	},
    	["Vi"] = {
    		{type = 5, range = 800,  spell = _R, name = "R"},
    	},
    	["Viktor"] = {
    		{type = 4, range = 800,  spell = _R, name = "R"},
    	},
    	["Warwick"] = {
    		{type = 3, range = 800,  spell = _R, name = "R"},
    	},
    	["Wukong"] = {
    		{type = 1, range = 800,  spell = _R, name = "R"},
    	},
    	["Zed"] = {
    		{type = 6, range = 800,  spell = _R, name = "R"},
    	},
    	["Ziggs"] = {
    		{type = 4, range = 800,  spell = _R, name = "R"},
    	},
    	["Zyra"] = {
    		{type = 4, range = 800,  spell = _R, name = "R"},
    	},
    }

    self.enemyHeros = GetEnemyHeroes()
    self.allyHeros = GetAllyHeroes()
    self.enemyMinions = minionManager(MINION_ENEMY, self.SpellTable.Q.range - 400, myHero, MINION_SORT_HEALTH_ASC)
    self.jungleMinions = minionManager(MINION_JUNGLE, 625, myHero, MINION_SORT_MAXHEALTH_ASC)

    self:AddToMenu()
    AddTickCallback(function() self:OnTick() end)
    AddDrawCallback(function() self:OnDraw() end)
    AddCreateObjCallback(function(object) self:TrackFeathers(object) end)
    AddDeleteObjCallback(function(object) self:TrackFeathersDelete(object) end)
    AddProcessSpellCallback(function(unit, spell) self:UltimateJuke(unit,spell) end)
end
function Xayah:AddToMenu()
    LulzMenu.Hotkeys:addParam("UltKey", "Ultimate Hotkey", SCRIPT_PARAM_ONKEYDOWN, false, string.byte("R"))

    LulzMenu.Draw.E:addParam("Feathers", "Draw feather circles", 1, true)
    LulzMenu.Draw.E:addParam("Timers", "Draw feather timers", 1, true)
    LulzMenu.Draw.E:addParam("Lines", "Draw feather lines", 1, true)
    LulzMenu.Draw.E:addParam("CircleColor", "Feather circle color", SCRIPT_PARAM_COLOR, {255,128,128,128})
    LulzMenu.Draw.E:addParam("HitCircleColor", "Feather that will hit line color", SCRIPT_PARAM_COLOR, {255,0,255,0})
    LulzMenu.Draw.E:addParam("WontHitCircleColor", "Feather that won't hit line color", SCRIPT_PARAM_COLOR, {255,255,0,0})

    LulzMenu.Spell.QMenu:addParam("EnableCombo", "Use in combo", 1, true)
    LulzMenu.Spell.QMenu:addParam("EnableHarass", "Use in harass", 1, true)
    LulzMenu.Spell.QMenu:addParam("EnableClear", "Use in clear", SCRIPT_PARAM_LIST, 2,{"Off","Last Hit","Clear"})
    LulzMenu.Spell.QMenu:addParam("EnableJungle", "Use in jungle", 1, true)
    LulzMenu.Spell.QMenu:addParam("EnableKillSteal", "Use in kill steal", 1, true)
    LulzMenu.Spell.QMenu:addParam("PlaceHolder", "", SCRIPT_PARAM_INFO, "")
    LulzMenu.Spell.QMenu:addParam("HarassMana", "Harass mana managment % >", SCRIPT_PARAM_SLICE, 30, 0, 100, 0)
    LulzMenu.Spell.QMenu:addParam("ClearMana", "Lane clear mana managment % >", SCRIPT_PARAM_SLICE, 60, 0, 100, 0)
    LulzMenu.Spell.QMenu:addParam("jungleMana", "Jungle clear mana managment % >", SCRIPT_PARAM_SLICE, 60, 0, 100, 0)
    LulzMenu.Spell.QMenu:addParam("PlaceHolder2", "", SCRIPT_PARAM_INFO, "")
    Prediction:AddToMenu(LulzMenu.Spell.QMenu)

    LulzMenu.Spell.WMenu:addParam("EnableCombo", "Use in combo", 1, true)
    LulzMenu.Spell.WMenu:addParam("EnableHarass", "Use in harass", 1, false)
    LulzMenu.Spell.WMenu:addParam("EnableClear", "Use in clear", SCRIPT_PARAM_LIST, 1,{"Off","Last Hit","Clear"})
    LulzMenu.Spell.WMenu:addParam("EnableJungle", "Use in jungle", 1, true)
    LulzMenu.Spell.WMenu:addParam("EnableKillSteal", "Use in kill steal", 1, true)
    LulzMenu.Spell.WMenu:addParam("RakanCheck", "Check for Rakan before cast", 1, true)
    LulzMenu.Spell.WMenu:addParam("PlaceHolder", "", SCRIPT_PARAM_INFO, "")
    LulzMenu.Spell.WMenu:addParam("HarassMana", "Harass mana managment % >", SCRIPT_PARAM_SLICE, 30, 0, 100, 0)
    LulzMenu.Spell.WMenu:addParam("ClearMana", "Lane clear mana managment % >", SCRIPT_PARAM_SLICE, 60, 0, 100, 0)
    LulzMenu.Spell.WMenu:addParam("jungleMana", "Jungle clear mana managment % >", SCRIPT_PARAM_SLICE, 60, 0, 100, 0)
    LulzMenu.Spell.WMenu:addParam("Buffer", "Rakan buffer range check", SCRIPT_PARAM_SLICE, 100, 0, 500, 0)

    LulzMenu.Spell.EMenu:addParam("EnableCombo", "Use in combo", 1, true)
    LulzMenu.Spell.EMenu:addParam("EnableHarass", "Use in harass", 1, true)
    LulzMenu.Spell.EMenu:addParam("EnableClear", "Use in clear", SCRIPT_PARAM_LIST, 1,{"Off","Last Hit","Clear"})
    LulzMenu.Spell.EMenu:addParam("EnableJungle", "Use in jungle", 1, true)
    LulzMenu.Spell.EMenu:addParam("EnableKillSteal", "Use in kill steal", 1, true)
    LulzMenu.Spell.EMenu:addParam("PlaceHolder", "", SCRIPT_PARAM_INFO, "")
    LulzMenu.Spell.EMenu:addParam("Feathers", "Min number of feathers to hit", SCRIPT_PARAM_SLICE, 3, 1, 10, 0)
    LulzMenu.Spell.EMenu:addParam("HarassMana", "Harass mana managment % >", SCRIPT_PARAM_SLICE, 70, 0, 100, 0)
    LulzMenu.Spell.EMenu:addParam("ClearMana", "Lane clear mana managment % >", SCRIPT_PARAM_SLICE, 60, 0, 100, 0)
    LulzMenu.Spell.EMenu:addParam("jungleMana", "Jungle clear mana managment % >", SCRIPT_PARAM_SLICE, 60, 0, 100, 0)

    LulzMenu.Spell.RMenu:addParam("EnableCombo", "Use in combo", 1, true)
    LulzMenu.Spell.RMenu:addParam("EnableHarass", "Use in harass", 1, false)
    LulzMenu.Spell.RMenu:addParam("EnableClear", "Use in lane clear", 1, false)
    LulzMenu.Spell.RMenu:addParam("EnableJungle", "Use in jungle", 1, false)
    LulzMenu.Spell.RMenu:addParam("EnableKillSteal", "Use in kill steal", 1, true)
    LulzMenu.Spell.RMenu:addParam("PlaceHolder", "", SCRIPT_PARAM_INFO, "")
    LulzMenu.Spell.RMenu:addParam("HarassMana", "Harass mana managment % >", SCRIPT_PARAM_SLICE, 30, 0, 100, 0)
    LulzMenu.Spell.RMenu:addParam("ClearMana", "Lane clear mana managment % >", SCRIPT_PARAM_SLICE, 60, 0, 100, 0)
    LulzMenu.Spell.RMenu:addParam("PlaceHolder2", "", SCRIPT_PARAM_INFO, "")
    Prediction:AddToMenu(LulzMenu.Spell.RMenu)
    LulzMenu.Spell.RMenu:addParam("PlaceHolder3", "", SCRIPT_PARAM_INFO, "")
    LulzMenu.Spell.RMenu:addParam("PlaceHolder4", "Ultimate Juke Settings", SCRIPT_PARAM_INFO, "")
    LulzMenu.Spell.RMenu:addParam("EnableJuke", "Enable juking with ultimate", 1, true)
    LulzMenu.Spell.RMenu:addParam("Collision", "Check collision when needed", 1, true)
    LulzMenu.Spell.RMenu:addParam("PlaceHolder5", "", SCRIPT_PARAM_INFO, "")
    --LulzMenu.Spell.RMenu:modifyParam("PlaceHolder4", "lBgColor", ARGB(255,255,255,255))
    for i=1, #self.enemyHeros do
        if self.jukeTable[self.enemyHeros[i].charName] then
            for j=1, #self.jukeTable[self.enemyHeros[i].charName] do
                LulzMenu.Spell.RMenu:addParam(self.enemyHeros[i].charName..self.jukeTable[self.enemyHeros[i].charName][j].name, self.enemyHeros[i].charName.." "..self.jukeTable[self.enemyHeros[i].charName][j].name, 1, true)
            end
        end
    end
end
function Xayah:OnTick()
    _G.Target = CTargetSelector:GetTarget()

    self:Combo()
    self:Harass()
    self:LaneClear()
    self:KillSteal()
    self:FleeMode()
end
function Xayah:OnDraw()
    if not myHero.dead then
        if LulzMenu.Draw.AA.Enabled then
            _G.Lulzlib:RenderCircle("AA")
        end
        if LulzMenu.Draw.Q.Enabled and (_G.Lulzlib:IsQReady() or not LulzMenu.Draw.Q.Hide) then
            _G.Lulzlib:RenderCircle("Q")
        end
        if LulzMenu.Draw.W.Enabled and (_G.Lulzlib:IsWReady() or not LulzMenu.Draw.W.Hide) then
            _G.Lulzlib:RenderCircle("W")
        end
        if LulzMenu.Draw.E.Enabled and (_G.Lulzlib:IsEReady() or not LulzMenu.Draw.E.Hide) then
            for i, feather in _G.Lulzlib.pairs(self.feathers) do
                if LulzMenu.Draw.E.Feathers then
                    DrawCircle3D(feather.object.x, feather.object.y, feather.object.z, 100, 1, _G.Lulzlib:ReturnColor(LulzMenu.Draw.E.CircleColor), LulzMenu.Draw.Quality)
                end

                if LulzMenu.Draw.E.Timers then
                    DrawText3D(tostring(_G.Lulzlib.ceil(feather.endtime - _G.Lulzlib.clock())), feather.object.x, feather.object.y + 10, feather.object.z - 30, 20, _G.Lulzlib:ReturnColor(LulzMenu.Draw.E.CircleColor), true)
                end

                if LulzMenu.Draw.E.Lines then
                    if ValidTarget(Target) then
                        if self:IsOnEPath(Target,feather.object) then
                            DrawLine3D(feather.object.x, feather.object.y, feather.object.z, myHero.x, myHero.y, myHero.z, 1, _G.Lulzlib:ReturnColor(LulzMenu.Draw.E.HitCircleColor))
                        else
                            DrawLine3D(feather.object.x, feather.object.y, feather.object.z, myHero.x, myHero.y, myHero.z, 1, _G.Lulzlib:ReturnColor(LulzMenu.Draw.E.WontHitCircleColor))
                        end
                    end
                end
            end
        end
        if LulzMenu.Draw.R.Enabled and (_G.Lulzlib:IsRReady() or not LulzMenu.Draw.R.Hide) then
            _G.Lulzlib:RenderCircle("R")
        end

        if LulzMenu.Draw.DrawTarget then
            if Target ~= nil then
                DrawCircle3D(Target.x, Target.y, Target.z, 100, 1, ARGB(255,255,0,0), 100)
            end
        end
    end
end
function Xayah:IsOnEPath(Target, feather)
    local LineEnd = myHero + (Vector(feather) - myHero):normalized() * GetDistance(feather)
    local pointSegment, pointLine, isOnSegment = VectorPointProjectionOnLineSegment(Vector(myHero), LineEnd, Vector(Target))
    if isOnSegment and GetDistance(Target, pointSegment) <= 85*1.25 then
        return true
    end
    return false
end
function Xayah:CastQ(enemy)
    if _G.Lulzlib:IsQReady() then
        local CastPosition, HitChance, Info = Prediction:GetLineCastPosition(enemy, self.SpellTable.Q)
        if CastPosition and HitChance >= LulzMenu.Spell.QMenu.Accuracy then
            CastSpell(_Q, CastPosition.x, CastPosition.z)
        end
    end
end
function Xayah:CastW(enemy)
    if GetDistanceSqr(enemy) < (myHero.range + myHero.boundingRadius) * (myHero.range + myHero.boundingRadius) then
        if LulzMenu.Spell.WMenu.RakanCheck then
            for i, ally in _G.Lulzlib.pairs(self.allyHeros) do
                if ally.charName == "Rakan" then
                    if GetDistanceSqr(ally) > self.SpellTable.W.range * self.SpellTable.W.range and GetDistanceSqr(ally) < self.SpellTable.W.range * self.SpellTable.W.range + LulzMenu.Spell.WMenu.Buffer then
                        return
                    end
                end
            end
        end
        CastSpell(_W)
    end
end
function Xayah:CastE(enemy)
    if _G.Lulzlib:IsEReady() then
        local featherHitCount = 0
        for i, feather in _G.Lulzlib.pairs(self.feathers) do
            if self:IsOnEPath(enemy,feather.object) then
                featherHitCount = featherHitCount + 1
            end
        end

        if featherHitCount >= LulzMenu.Spell.EMenu.Feathers then
            CastSpell(_E)
        end
    end
end
function Xayah:CastR(enemy)
    local CastPosition, HitChance, Info = Prediction:GetConeCastPosition(enemy, self.SpellTable.R)
    if CastPosition and HitChance >= LulzMenu.Spell.RMenu.Accuracy then
        CastSpell(_R, CastPosition.x, CastPosition.z)
    end
end
function Xayah:Combo()
    if Orbwalker:IsFighting() then
        if ValidTarget(Target) then
            if LulzMenu.Spell.QMenu.EnableCombo then
                if _G.Lulzlib:IsQReady() then
                    self:CastQ(Target)
                end
            end

            if LulzMenu.Spell.WMenu.EnableCombo then
                if _G.Lulzlib:IsWReady() then
                    self:CastW(Target)
                end
            end

            if LulzMenu.Spell.EMenu.EnableCombo then
                if _G.Lulzlib:IsEReady() then
                    self:CastE(Target)
                end
            end

            if LulzMenu.Spell.RMenu.EnableCombo then
                if _G.Lulzlib:IsRReady() then
                    self:CastR(Target)
                end
            end
        end
    end
end
function Xayah:Harass()
    if Orbwalker:IsHarassing() then
        if ValidTarget(Target) then
            if LulzMenu.Spell.QMenu.EnableHarass and LulzMenu.Spell.QMenu.HarassMana >= _G.Lulzlib:ManaPercent() then
                if _G.Lulzlib:IsQReady() then
                    self:CastQ(Target)
                end
            end

            if LulzMenu.Spell.WMenu.EnableHarass and LulzMenu.Spell.WMenu.HarassMana >= _G.Lulzlib:ManaPercent() then
                if _G.Lulzlib:IsWReady() then
                    self:CastW(Target)
                end
            end

            if LulzMenu.Spell.EMenu.EnableHarass and LulzMenu.Spell.EMenu.HarassMana >= _G.Lulzlib:ManaPercent() then
                if _G.Lulzlib:IsEReady() then
                    self:CastE(Target)
                end
            end

            if LulzMenu.Spell.RMenu.EnableHarass and LulzMenu.Spell.RMenu.HarassMana >= _G.Lulzlib:ManaPercent() then
                if _G.Lulzlib:IsRReady() then
                    self:CastR(Target)
                end
            end
        end
    end
end
function Xayah:LaneClear()
    if Orbwalker:IsLaneClearing() then
        if LulzMenu.Spell.QMenu.EnableJungle and LulzMenu.Spell.QMenu.jungleMana < _G.Lulzlib:ManaPercent() then
            self.jungleMinions:update()
            if _G.Lulzlib:IsQReady() then
                for i, jungle in _G.Lulzlib.pairs(self.jungleMinions.objects) do
                    if jungle ~= nil and ValidTarget(jungle) and GetDistance(jungle) < self.SpellTable.Q.range and string.split(jungle.charName,'_')[2] ~= "Plant" then
                        self:CastQ(jungle)
                    end
                end
            end
        end

        if LulzMenu.Spell.WMenu.EnableJungle and LulzMenu.Spell.WMenu.jungleMana < _G.Lulzlib:ManaPercent() then
            self.jungleMinions:update()
            if _G.Lulzlib:IsWReady() then
                for i, jungle in _G.Lulzlib.pairs(self.jungleMinions.objects) do
                    if jungle ~= nil and ValidTarget(jungle) and GetDistance(jungle) < self.SpellTable.Q.range and string.split(jungle.charName,'_')[2] ~= "Plant" then
                        self:CastW(jungle)
                    end
                end
            end
        end

        if LulzMenu.Spell.EMenu.EnableJungle and LulzMenu.Spell.EMenu.jungleMana < _G.Lulzlib:ManaPercent() then
            self.jungleMinions:update()

            if _G.Lulzlib:IsEReady() then
                for i, jungle in _G.Lulzlib.pairs(self.jungleMinions.objects) do
                    if jungle ~= nil and ValidTarget(jungle) and string.split(jungle.charName,'_')[2] ~= "Plant" then
                        self:CastE(jungle)
                    end
                end
            end
        end

        if LulzMenu.Spell.QMenu.EnableClear > 1 or LulzMenu.Spell.WMenu.EnableClear > 1 or LulzMenu.Spell.EMenu.EnableClear > 1  then
            self.enemyMinions:update()
            for i, minion in _G.Lulzlib.pairs(self.enemyMinions.objects) do
                if minion ~= nil and ValidTarget(minion) and GetDistance(minion) < self.SpellTable.Q.range then
                    if LulzMenu.Spell.QMenu.EnableClear == 3 and _G.Lulzlib:IsQReady() and LulzMenu.Spell.QMenu.ClearMana < _G.Lulzlib:ManaPercent() then
                        self:CastQ(minion)
                    elseif LulzMenu.Spell.QMenu.EnableClear == 2 and _G.Lulzlib:IsQReady() and LulzMenu.Spell.QMenu.ClearMana < _G.Lulzlib:ManaPercent() then
                        if _G.Lulzlib:GetDamage(_Q, minion) > minion.health then
                            self:CastQ(minion)
                        end
                    end

                    if LulzMenu.Spell.WMenu.EnableClear > 1 and _G.Lulzlib:IsWReady() and LulzMenu.Spell.WMenu.ClearMana < _G.Lulzlib:ManaPercent() then
                        self:CastW(minion)
                    end

                    if LulzMenu.Spell.EMenu.EnableClear == 3 and _G.Lulzlib:IsEReady() and LulzMenu.Spell.EMenu.ClearMana < _G.Lulzlib:ManaPercent() then
                        self:CastE(minion)
                    elseif LulzMenu.Spell.EMenu.EnableClear == 2 and _G.Lulzlib:IsEReady() and LulzMenu.Spell.EMenu.ClearMana < _G.Lulzlib:ManaPercent() then
                        if _G.Lulzlib:GetDamage(_E, minion) > minion.health then
                            self:CastE(minion)
                        end
                    end
                end
            end
        end
    end
end
function Xayah:KillSteal()
    for i, enemy in _G.Lulzlib.pairs(self.enemyHeros) do
        if enemy and ValidTarget(enemy) then
            if LulzMenu.Spell.EMenu.EnableKs then

            end

            if LulzMenu.Spell.QMenu.EnableKs then
                if _G.Lulzlib:GetDamage(_Q, enemy) > enemy.health then
                    self:CastQ(enemy)
                end
            end

            if LulzMenu.Spell.RMenu.EnableKs then
                if _G.Lulzlib:GetDamage(_R, enemy) > enemy.health then
                    self:CastR(enemy)
                end
            end
        end
    end
end
function Xayah:FleeMode()
    if LulzMenu.Hotkeys.FleeKey then
        myHero:MoveTo(mousePos.x, mousePos.z)
    end
end
function Xayah:TrackFeathers(object)
    if object and object.valid and object.networkID and object.networkID ~= 0 then
        if object.name:find("Xayah_Base_Passive_Dagger_Mark") then
            self.feathers[object.networkID] = {object = object.pos, endtime = _G.Lulzlib.clock() + 6.1}
        end
    end
end
function Xayah:TrackFeathersDelete(object)
    if object and object.valid and object.networkID and object.networkID ~= 0 then
        if object.name:find("Xayah_Base_Passive_Dagger_Mark") then
            self.feathers[object.networkID] = nil
        end
    end
end
function Xayah:UltimateJuke(unit,spell)
    local function IsOnPath(Target, spellEndPos, range)
        local LineEnd = Target + (Vector(spellEndPos) - Target):normalized() * range
        local pointSegment, pointLine, isOnSegment = VectorPointProjectionOnLineSegment(Vector(Target), LineEnd, Vector(myHero))
        if isOnSegment and GetDistance(myHero, pointSegment) <= 85*1.25 then
            return true
        end
        return false
    end
    if not LulzMenu.Spell.RMenu.EnableJuke then return end
    if unit.team ~= myHero.team then
        if self.jukeTable[unit.charName] then
            for i=1, #self.jukeTable[unit.charName] do
                if unit:GetSpellData(self.jukeTable[unit.charName][i].spell).name == spell.name then
                    if LulzMenu.Spell.RMenu[unit.charName..self.jukeTable[unit.charName][i].name] then
                        if self.jukeTable[unit.charName][i].type == 1 then
                            if GetDistanceSqr(unit) < self.jukeTable[unit.charName][i].range * self.jukeTable[unit.charName][i].range then
                                CastSpell(_R, unit.x, unit.z)
                            end
                        elseif self.jukeTable[unit.charName][i].type == 2 then
                            if IsOnPath(unit, spell.endPos, self.jukeTable[unit.charName][i].range) then
                                CastSpell(_R, unit.x, unit.z)
                            end
                        elseif self.jukeTable[unit.charName][i].type == 3 then
                        elseif self.jukeTable[unit.charName][i].type == 4 then
                        elseif self.jukeTable[unit.charName][i].type == 5 then
                            if spell.Target.isMe then
                                CastSpell(_R, unit.x, unit.z)
                            end
                        end
                    end
                end
            end
        end
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
    ToUpdate.VersionPath = "/Celtech/BOL/master/UnitedUnderBrokenWings/UnitedUnderBrokenWings.version"
    ToUpdate.ScriptPath =  "/Celtech/BOL/master/UnitedUnderBrokenWings/UnitedUnderBrokenWings.lua"
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
            self.DownloadStatus = 'Downloading VersionInfo ('.. math.round(100/self.Size*DownloadedSize,2)..'%)'
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
