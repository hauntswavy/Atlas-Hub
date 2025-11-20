return function(Window)
    local Tab = Window:CreateTab("🌍 Universal", 4483362458)

    Tab:CreateSection("Player")

    Tab:CreateSlider({
        Name = "WalkSpeed",
        Range = {16, 300},
        Increment = 5,
        CurrentValue = 50,
        Callback = function(val)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = val
        end
    })

    Tab:CreateSlider({
        Name = "JumpPower",
        Range = {50, 300},
        },
        Increment = 10,
        CurrentValue = 50,
        Callback = function(val)
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = val
        end
    })

    Tab:CreateButton({
        Name = "Infinite Yield Admin",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
        end
    })

    Tab:CreateButton({
        Name = "Rejoin Server",
        Callback = function()
            game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
        end
    })
end