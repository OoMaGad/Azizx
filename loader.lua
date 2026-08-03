local success, err = pcall(function()
    local HttpGet = game.HttpGet
    local GameId = game.GameId

    local listUrl = "https://raw.githubusercontent.com/OoMaGad/Azizx/refs/heads/main/GameList.lua"
    local games = loadstring(HttpGet(game, listUrl))()

    local scriptUrl = games[GameId]
    if not scriptUrl then
        warn("ZanN Hub: Unsupported game ID: " .. tostring(GameId))
        return
    end

    loadstring(HttpGet(game, scriptUrl))()
end)

if not success then
    warn("ZanN Hub Loader Error: " .. tostring(err))
end

