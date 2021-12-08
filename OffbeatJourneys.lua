getgenv().godmodeTW = false
getgenv().godmodeSP = false
getgenv().killaura = false
getgenv().starplatdmg = false

while godmodeTW do wait(0.01)
    local args = {
        [1] = game:GetService("Players").LocalPlayer.Character.TheWorld,
        [2] = "Immune",
        [3] = true
    }
    game:GetService("ReplicatedStorage").EffectsEvent.Event7:FireServer(unpack(args))
end

while godmodeSP do wait(0.01)
    local args = {
        [1] = game:GetService("Players").LocalPlayer.Character.StarPlatinum,
        [2] = "Immune",
        [3] = true
    }
    game:GetService("ReplicatedStorage").EffectsEvent.Event7:FireServer(unpack(args))
end

while killaura do wait(0.01)
    for i,v in pairs(game:GetService("Players"):GetChildren()) do
        if v.Character.Humanoid and v.Name ~= game.Players.LocalPlayer.Name then
            local args = {
                [1] = "BasicHit",
                [2] = game:GetService("Players").LocalPlayer.Character.Stand,
                [3] = v.Character.Humanoid,
                [4] = game:GetService("Players").LocalPlayer.Character.TheWorld
            }
            
            game:GetService("ReplicatedStorage").Logic.hitbox:FireServer(unpack(args))
        end
    end
end

while starplatdmg do wait(0.01)
    for i,v in pairs(game:GetService("Players"):GetChildren()) do
        if v.Character.Humanoid and v.Name ~= game.Players.LocalPlayer.Name then
            local args = {
                [1] = "Choke2",
                [2] = game:GetService("Players").LocalPlayer.Character.Stand,
                [3] = v.Character.Humanoid,
                [4] = game:GetService("Players").LocalPlayer.Character.StarPlatinum
            }
            
            game:GetService("ReplicatedStorage").Logic.hitbox:FireServer(unpack(args))
        end
    end
end
