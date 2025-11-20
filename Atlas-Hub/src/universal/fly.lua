return function(Window)
    local Tab = Window:CreateTab("🌍 Universal", 4483362458)

    local flyEnabled = false
    local flySpeed = 100
    local bodyGyro = nil
    local bodyVelocity = nil

    Tab:CreateToggle({
        Name = "Fly (X to toggle)",
        CurrentValue = false,
        Callback = function(state)
            flyEnabled = state

            if state then
                local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
                local hrp = char:WaitForChild("HumanoidRootPart")

                bodyGyro = Instance.new("BodyGyro")
                bodyGyro.P = 9000
                bodyGyro.maxTorque = Vector3.new(9000, 9000, 9000)
                bodyGyro.CFrame = hrp.CFrame
                bodyGyro.Parent = hrp

                bodyVelocity = Instance.new("BodyVelocity")
                bodyVelocity.maxForce = Vector3.new(40000, 40000, 40000)
                bodyVelocity.Velocity = Vector3.new(0, 0, 0)
                bodyVelocity.Parent = hrp

                spawn(function()
                    while flyEnabled and wait() do
                        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.W) then
                            bodyVelocity.Velocity = workspace.CurrentCamera.CFrame.LookVector * flySpeed
                        elseif game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.S) then
                            bodyVelocity.Velocity = workspace.CurrentCamera.CFrame.LookVector * -flySpeed
                        elseif game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.A) then
                            bodyVelocity.Velocity = workspace.CurrentCamera.CFrame.RightVector * -flySpeed
                        elseif game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.D) then
                            bodyVelocity.Velocity = workspace.CurrentCamera.CFrame.RightVector * flySpeed
                        else
                            bodyVelocity.Velocity = Vector3.new(0, 0, 0)
                        end
                        bodyGyro.CFrame = workspace.CurrentCamera.CFrame
                    end
                end)
            else
                if bodyGyro then bodyGyro:Destroy() end
                if bodyVelocity then bodyVelocity:Destroy() end
            end
        end
    })

    Tab:CreateSlider({
        Name = "Fly Speed",
        Range = {16, 400},
        Increment = 10,
        CurrentValue = 100,
        Callback = function(val)
            flySpeed = val
        end
    })
end