function OnLoad()
    print("Loaded")

    FOWGankCircles()
end

class "FOWGankCircles"
function FOWGankCircles:__init()
    self.enemyHeros = GetEnemyHeroes()
    self.missingEnemy = {}
    self.enemySprites = {}
    self.baseColors = {{255,255,0,0},{255,0,255,0},{255,0,0,255},{255,255,255,0},{255,255,0,255}}
    _G.LulzMenu = scriptConfig("LulzGankCircles", "LulzGankCircleslulz")
    LulzMenu:addParam("Enable", "Draw minimap gank circles", 1, true)
    LulzMenu:addParam("PlaceHolder", "", SCRIPT_PARAM_INFO, "")

    for i, enemy in pairs(self.enemyHeros) do
        LulzMenu:addParam(enemy.charName, enemy.charName .. " Circle color", SCRIPT_PARAM_COLOR, self.baseColors[i])
    end

    AddLoadCallback(function() self:OnLoad() end)
    AddUnloadCallback(function() self:OnUnload() end)
    AddDrawCallback(function() self:OnDraw() end)
end
function FOWGankCircles:OnLoad()
    for i, enemy in pairs(self.enemyHeros) do
        self.enemySprites[enemy.networkID] = GetWebSprite("http://ddragon.leagueoflegends.com/cdn/6.24.1/img/champion/".. enemy.charName ..".png", function(data) self.enemySprites[enemy.networkID] = data end)
        self.enemySprites[enemy.networkID]:SetScale(.2,.2)
    end
end
function FOWGankCircles:OnUnload()
    for i, enemy in pairs(self.enemyHeros) do
        if self.enemySprites[enemy.networkID] then
            self.enemySprites[enemy.networkID]:Release()
        end
    end
end
function FOWGankCircles:OnDraw()
    local function ReturnColor(color) return ARGB(color[1],color[2],color[3],color[4]) end

    if LulzMenu.Enable then
        for _,enemy in pairs(self.enemyHeros) do
            if not enemy.visible then
                if self.missingEnemy[enemy.networkID] == nil then
                    self.missingEnemy[enemy.networkID] = os.clock()
                elseif (os.clock() - self.missingEnemy[enemy.networkID]) * enemy.ms < 17000 then
                    --DrawTextA(enemy.charName,20, GetMinimapX(enemy.x),GetMinimapY(enemy.z),  ReturnColor(LulzMenu[enemy.charName]), "center", "center")
                    if self.enemySprites[enemy.networkID] then
                        self.enemySprites[enemy.networkID]:Draw(GetMinimapX(enemy.x) - 12,GetMinimapY(enemy.z) - 12, 0xFF)
                    end
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
