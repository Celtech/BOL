function OnLoad()
    print("Loaded")

    FOWGankCircles()
end

class "FOWGankCircles"
function FOWGankCircles:__init()
    self.enemyHeros = GetEnemyHeroes()
    self.missingEnemy = {}
    self.baseColors = {{255,255,0,0},{255,0,255,0},{255,0,0,255},{255,255,255,0},{255,255,0,255}}
    _G.LulzMenu = scriptConfig("LulzGankCircles", "LulzGankCircleslulz")
    LulzMenu:addParam("Enable", "Draw minimap gank circles", 1, true)
    LulzMenu:addParam("PlaceHolder", "", SCRIPT_PARAM_INFO, "")

    for i, enemy in pairs(self.enemyHeros) do
        LulzMenu:addParam(enemy.charName, enemy.charName .. " Circle color", SCRIPT_PARAM_COLOR, self.baseColors[i])
    end

    AddDrawCallback(function() self:OnDraw() end)
end
function FOWGankCircles:OnDraw()
    local function ReturnColor(color) return ARGB(color[1],color[2],color[3],color[4]) end

    if LulzMenu.Enable then
        for _,enemy in pairs(self.enemyHeros) do
            if not enemy.visible then
                if self.missingEnemy[enemy.networkID] == nil then
                    self.missingEnemy[enemy.networkID] = os.clock()
                elseif (os.clock() - self.missingEnemy[enemy.networkID]) * enemy.ms < 17000 then
                    DrawCircleMinimap(enemy.x, enemy.y, enemy.z, (os.clock() - self.missingEnemy[enemy.networkID]) * enemy.ms , 1, ReturnColor(LulzMenu[enemy.charName]), 50)
                end
            else
                if self.missingEnemy[enemy.networkID] ~= nil then
                    self.missingEnemy[enemy.networkID] = nil
                end
            end
        end
    end
end
