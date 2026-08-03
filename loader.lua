--!strict

local HttpGet = game.HttpGet
local GameId: number = game.GameId

local Games: {[number]: string} = loadstring(
    HttpGet(game, "https://raw.githubusercontent.com/OoMaGad/Azizx/refs/heads/main/GameList.lua")
)() :: any

local URL: string? = Games[GameId]
if not URL then
    warn("ZanN Hub: Unsupported game!")
    return
end

loadstring(HttpGet(game, URL))()
