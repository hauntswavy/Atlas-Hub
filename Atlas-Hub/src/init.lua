-- ATLAS HUB v2.0 - NO KEY SYSTEM
-- Loadstring: https://raw.githubusercontent.com/YOURUSERNAME/Atlas-Hub/main/src/init.lua

local Config = require(script.config)

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Atlas Hub v"..Config.Version,
    LoadingTitle = "Atlas Hub",
    LoadingSubtitle = "by @"..Config.Author,
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "AtlasHub",
        FileName = "Config"
    },
    Discord = {
        Enabled = true,
        Invite = Config.Discord,
        RememberJoins = true
    },
    KeySystem = false
})

-- Load Universal Features
require(script.universal.fly)(Window)
require(script.universal.extras)(Window)

-- Load Game-Specific Tabs
local placeId = game.PlaceId

if placeId == 2753915549 or placeId == 4442272183 or placeId == 7449423635 then -- Blox Fruits IDs
    require(script.games.bloxfruits)(Window)
elseif placeId == 13772389974 then -- Blade Ball
    require(script.games.bladeball)(Window)
else
    local Tab = Window:CreateTab("ℹ️ Info")
    Tab:CreateParagraph({Title = "No supported game detected", Content = "Universal features still work!\nJoin discord.gg/"..Config.Discord.." for more games"})
end

Rayfield:Notify({
    Title = "Atlas Hub Loaded!",
    Content = "discord.gg/"..Config.Discord.." • No Key • Enjoy!",
    Duration = 8
})