return function(Window)
    local Tab = Window:CreateTab("⚔️ Blade Ball")

    Tab:CreateButton({
        Name = "V.G Hub Blade Ball (Perfect Parry + Aimbot)",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Loader.lua"))()
        end
    })

    Tab:CreateButton({
        Name = "Vapour Hub (Auto Spam + More)",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/VapourNex/Blade-Ball/main/VapourNex"))()
        end
    })
end