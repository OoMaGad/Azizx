local success, err = pcall(function()
    local listUrl = "https://raw.githubusercontent.com/OoMaGad/Azizx/refs/heads/main/GameList.lua"
    local games = loadstring(game:HttpGet(listUrl))()

    local scriptUrl = games[game.PlaceId]
    if not scriptUrl then
        warn("ZanN Hub: Unsupported Place ID: " .. tostring(game.PlaceId))
        return
    end

    loadstring(game:HttpGet(scriptUrl))()
end)

if not success then
    warn("ZanN Hub Loader Error: " .. tostring(err))
end

