local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Legends Of Speed Gui",
    LoadingTitle = "Exploiter Heaven",
    LoadingSubtitle = "by badnanax",
    ConfigurationSaving = {
        Enabled = false,
        FolderName = nil,
        FileName = "legendsofspeedexploiter"
    },
    Discord = {
        Enabled = true,
        Invite = "NbjDSTyCvj",
        RememberJoins = false
    },
    KeySystem = false,
    KeySettings = {
        Title = "Check the Discord server",
        Subtitle = "Key System",
        Note = "Join the Discord server for more information",
        FileName = "fun_keysystem",
        SaveKey = false,
        GrabKeyFromSite = true,
        Key = {"https://pastebin.com/raw/ULATYMKJ"}
    }
})

local MainTab = Window:CreateTab("Auto Farm", nil)
local MainSection = MainTab:CreateSection("Main")

Rayfield:Notify({
    Title = "Enjoy!",
    Content = "Be the best in the game :)",
    Duration = 5,
    Image = nil,
    Actions = {
        Ignore = {
            Name = "Thanks!",
            Callback = function()
                print("The user tapped Thanks!")
            end
        }
    },
})

-- Auto Steps Toggle
local ToggleSteps = MainTab:CreateToggle({
    Name = "Auto Steps",
    CurrentValue = false,
    Flag = "steps1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        getgenv().AutoSteps = Value -- Set AutoSteps to the current toggle value
        while getgenv().AutoSteps do
            local args = {
                [1] = "collectOrb",
                [2] = "Orange Orb",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))
            wait() -- You might want to adjust the wait time to control the frequency
        end
    end
})

-- Auto Gems Toggle
local ToggleGems = MainTab:CreateToggle({
    Name = "Auto Gems",
    CurrentValue = false,
    Flag = "gems1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        getgenv().AutoGems = Value -- Set AutoGems to the current toggle value
        while getgenv().AutoGems do
            local args = {
                [1] = "collectOrb",
                [2] = "Gem",
                [3] = "City"
            }
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))
            wait() -- You might want to adjust the wait time to control the frequency
        end
    end
})

-- Auto Rebirth Toggle
local ToggleRebirth = MainTab:CreateToggle({
    Name = "Auto Rebirth",
    CurrentValue = false,
    Flag = "rebirths1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        getgenv().AutoRebirth = Value -- Set AutoRebirth to the current toggle value
        while getgenv().AutoRebirth do
            local args = {
                [1] = "rebirthRequest"
            }
            game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer(unpack(args))
            wait() -- You might want to adjust the wait time to control the frequency
        end
    end
})
