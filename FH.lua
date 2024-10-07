local library = loadstring(game:HttpGet('https://raw.githubusercontent.com/FeHariHub/FarmNovo/main/LibUI.lua'))()

local Window = library:CreateWindow("FeHari Hub", "Lendas Da Velocidade ⚡", 111462827396918)

local AutoRaces = false -- Variável para controlar o estado das corridas

local function ToggleAutoRaces(Value)
    AutoRaces = Value
    if AutoRaces then
        spawn(function()
            while AutoRaces do
                pcall(function()
                    ReplicatedStorage.rEvents.raceEvent:FireServer("joinRace")
                    task.wait()
                    local part = Players.LocalPlayer.Character.HumanoidRootPart
                    for _, v in pairs(Workspace.raceMaps:GetDescendants()) do 
                        if v.Name == "Decal" and v.Parent then
                            firetouchinterest(part, v.Parent, 0)
                            wait()
                            firetouchinterest(part, v.Parent, 1)
                        end
                    end
                end)
                task.wait()
            end
        end)
    end
end
local Tab = Window:CreateTab("Início")

local Page = Tab:CreateFrame("Farmar")

Button = Page:CreateButton("Ativar Corridas", "Clique para ativar/desativar as corridas automáticas", function()
    AutoRaces = not AutoRaces -- Alterna o estado
    ToggleAutoRaces(AutoRaces) -- Chama a função com o novo estado

    -- Cria uma notificação para o usuário
    CreateNotification("Status de Corridas", AutoRaces and "Corridas ativadas" or "Corridas desativadas", function(value)
        if value == true then
            print("Notificação fechada")
        else
            print("Notificação não fechada")
        end
    end)
end)


Toggle = Page:CreateToggle("Toggle", "Description", function(arg)
Toggle:UpdateToggle("New Title", "New Description")
print(arg)
end)

Bind = Page:CreateBind("KeyBind", "F", function(arg)
Bind:UpdateBind("New Title")
print(arg)
end)

TextBox = Page:CreateBox("TextBox", 10044538000, function(arg)
TextBox:UpdateBox("New Title")
print(arg)
end)

Page:CreateSlider("Slider", 16, 500,function(arg)
   print(arg)
end)

Label = Page:CreateLabel("Label")
Label:UpdateLabel("New Title")
