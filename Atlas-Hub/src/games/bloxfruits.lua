return function(Window)
    local Tab = Window:CreateTab("🍎 Blox Fruits")

    Tab:CreateButton({
        Name = "Redz Hub (Best Auto Farm 2025)",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/BloxFruits/main/source"))()
        end
    })

    Tab:CreateButton({
        Name = "Mukuro Hub (Mobile + Auto Raid)",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/xQuartyx/DonateMe/main/ScriptLoader"))()
        end
    })
end