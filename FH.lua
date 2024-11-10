local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/FeHariHub/FarmNovo/main/LibUI.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/FeHariHub/FarmNovo/main/SalvarGerenciamento.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/FeHariHub/FarmNovo/main/InterfaceGerenciamento.lua"))()

local Window = Fluent:CreateWindow({
    Title = "FeHari Hub | Lendas Da Velocidade⚡ " .. Fluent.Version,
    SubTitle = "Feito Por FeHariV7",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

local AutoRaces = false

local function ToggleAutoRaces(Value)
    AutoRaces = Value
    if AutoRaces then
        spawn(function()
            while AutoRaces do
                pcall(function()
                    if Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChild("Humanoid") and Players.LocalPlayer.Character.Humanoid.Health > 0 then
                        ReplicatedStorage.rEvents.raceEvent:FireServer("joinRace")
                        task.wait(2)  -- Aguarda 2 segundos antes de tentar novamente
                        local part = Players.LocalPlayer.Character.HumanoidRootPart
                        for _, v in pairs(Workspace.raceMaps:GetDescendants()) do 
                            if v.Name == "Decal" and v.Parent then
                                firetouchinterest(part, v.Parent, 0)
                                wait(0.1)  -- Espera um pouco entre os toques
                                firetouchinterest(part, v.Parent, 1)
                            end
                        end
                    end
                end)
                task.wait(1)  -- Intervalo entre as tentativas de entrada
            end
        end)
    end
end


--Fluent provides Lucide Icons https://lucide.dev/icons/ for the tabs, icons are optional
local Tabs = {
    Main = Window:AddTab({ Title = "Início", Icon = "" }),
    Teleport = Window:AddTab({ Title = "Teleportar", Icon = "arrow-up-down" }),
    Farm = Window:AddTab({ Title = "Farmar", Icon = "skull" }),
    Rebirth = Window:AddTab({ Title = "Renascimentos", Icon = "refresh-ccw" }),
    Races = Window:AddTab({ Title = "Corridas", Icon = "flag" }),
    Shop = Window:AddTab({ Title = "Loja", Icon = "shopping-cart" }),
    Tutorial = Window:AddTab({ Title = "Bug-Tutorial", Icon = "file-video" }),
    Extras = Window:AddTab({ Title = "Extras", Icon = "gem" }),
    Credits = Window:AddTab({ Title = "Créditos", Icon = "hammer" }),
    Settings = Window:AddTab({ Title = "Config", Icon = "settings" })
}

local Options = Fluent.Options

do
    Fluent:Notify({
        Title = "Notification",
        Content = "This is a notification",
        SubContent = "SubContent", -- Optional
        Duration = 5 -- Set to nil to make the notification not disappear
    })



    Tabs.Main:AddParagraph({
        Title = "ATENÇÃO !",
        Content = "Esta é uma V-BETA do FH.\nLogo mais a V-OFC!"
    })



    Tabs.Main:AddButton({
        Title = "Ativar Anti-Kick",
        Description = "Ative Para Não Sair Por Inavitidade!",
        Callback = function()
            Window:Dialog({
                Title = "Anti-Kick",
                Content = "Deseja Ativar?",
                Buttons = {
                    {
                        Title = "Sim",
                        Callback = function()
                            print("Confirmed the dialog.")
                        end
                    },
                    {
                        Title = "Não",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })



Tabs.Main:AddButton({
        Title = "Ativar Redução De Gráficos",
        Description = "Ative Para Obter +FPS e +Desempenho!",
        Callback = function()
            Window:Dialog({
                Title = "Reduzir Gráficos",
                Content = "Deseja Ativar?",
                Buttons = {
                    {
                        Title = "Sim",
                        Callback = function()
                            print("Confirmed the dialog.")
                        end
                    },
                    {
                        Title = "Não",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })



    Tabs.Main:AddParagraph({
        Title = "UTILITÁRIOS",
        Content = "Utilitários para o seu personagem!"
    })
    

    
local Toggle = Tabs.Main:AddToggle("RedOrbToggle", {Title = "Coletar Orbes Vermelhos", Default = false})

-- Função que será chamada quando o toggle mudar
Toggle:OnChanged(function()
    orbCollect = Toggle.Value  -- Passa o valor do toggle para a variável orbCollect
    orbCollecter()  -- Chama a função que executa a coleta dos orbes
    print("Toggle changed:", Toggle.Value)  -- Exibe o valor atual do toggle no console
end)

-- Função que faz a coleta dos orbes vermelhos
function orbCollecter()
    if orbCollect then
        -- Inicia o processo de coleta dos orbes
        spawn(function()
            while orbCollect do
                        game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")

		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
game.ReplicatedStorage.rEvents.orbEvent:FireServer("cogame.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")llectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
		game.ReplicatedStorage.rEvents.orbEvent:FireServer("collectOrb","Red Orb","Magma City")
	end
end)


    
Tabs.Main:AddButton({
        Title = "Resetar Personagem",
        Description = "Ative Para Remover BUGS!",
        Callback = function()
            Window:Dialog({
                Title = "Resetar Personagem",
                Content = "Deseja Ativar?",
                Buttons = {
                    {
                        Title = "Sim",
                        Callback = function()
                            print("Confirmed the dialog.")
                        end
                    },
                    {
                        Title = "Não",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
    

    
    local Slider = Tabs.Main:AddSlider("Slider", {
        Title = "Velocidade",
        Description = "Altere A Velocidade De Seu Personagem!",
        Default = 2,
        Min = 0,
        Max = 5,
        Rounding = 1,
        Callback = function(Value)
            print("Slider was changed:", Value)
        end
    })

    Slider:OnChanged(function(Value)
        print("Slider changed:", Value)
    end)

    Slider:SetValue(3)



    local Dropdown = Tabs.Main:AddDropdown("Dropdown", {
        Title = "Dropdown",
        Values = {"one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen"},
        Multi = false,
        Default = 1,
    })

    Dropdown:SetValue("four")

    Dropdown:OnChanged(function(Value)
        print("Dropdown changed:", Value)
    end)


    
    local MultiDropdown = Tabs.Main:AddDropdown("MultiDropdown", {
        Title = "Dropdown",
        Description = "You can select multiple values.",
        Values = {"one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen"},
        Multi = true,
        Default = {"seven", "twelve"},
    })

    MultiDropdown:SetValue({
        three = true,
        five = true,
        seven = false
    })

    MultiDropdown:OnChanged(function(Value)
        local Values = {}
        for Value, State in next, Value do
            table.insert(Values, Value)
        end
        print("Mutlidropdown changed:", table.concat(Values, ", "))
    end)



    local Colorpicker = Tabs.Main:AddColorpicker("Colorpicker", {
        Title = "Colorpicker",
        Default = Color3.fromRGB(96, 205, 255)
    })

    Colorpicker:OnChanged(function()
        print("Colorpicker changed:", Colorpicker.Value)
    end)
    
    Colorpicker:SetValueRGB(Color3.fromRGB(0, 255, 140))



    local TColorpicker = Tabs.Main:AddColorpicker("TransparencyColorpicker", {
        Title = "Colorpicker",
        Description = "but you can change the transparency.",
        Transparency = 0,
        Default = Color3.fromRGB(96, 205, 255)
    })

    TColorpicker:OnChanged(function()
        print(
            "TColorpicker changed:", TColorpicker.Value,
            "Transparency:", TColorpicker.Transparency
        )
    end)



    local Keybind = Tabs.Main:AddKeybind("Keybind", {
        Title = "KeyBind",
        Mode = "Toggle", -- Always, Toggle, Hold
        Default = "LeftControl", -- String as the name of the keybind (MB1, MB2 for mouse buttons)

        -- Occurs when the keybind is clicked, Value is `true`/`false`
        Callback = function(Value)
            print("Keybind clicked!", Value)
        end,

        -- Occurs when the keybind itself is changed, `New` is a KeyCode Enum OR a UserInputType Enum
        ChangedCallback = function(New)
            print("Keybind changed!", New)
        end
    })

    -- OnClick is only fired when you press the keybind and the mode is Toggle
    -- Otherwise, you will have to use Keybind:GetState()
    Keybind:OnClick(function()
        print("Keybind clicked:", Keybind:GetState())
    end)

    Keybind:OnChanged(function()
        print("Keybind changed:", Keybind.Value)
    end)

    task.spawn(function()
        while true do
            wait(1)

            -- example for checking if a keybind is being pressed
            local state = Keybind:GetState()
            if state then
                print("Keybind is being held down")
            end

            if Fluent.Unloaded then break end
        end
    end)

    Keybind:SetValue("MB2", "Toggle") -- Sets keybind to MB2, mode to Hold


    local Input = Tabs.Main:AddInput("Input", {
        Title = "Input",
        Default = "Default",
        Placeholder = "Placeholder",
        Numeric = false, -- Only allows numbers
        Finished = false, -- Only calls callback when you press enter
        Callback = function(Value)
            print("Input changed:", Value)
        end
    })

    Input:OnChanged(function()
        print("Input updated:", Input.Value)
    end)
end


-- Addons:
-- SaveManager (Allows you to have a configuration system)
-- InterfaceManager (Allows you to have a interface managment system)

-- Hand the library over to our managers
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

-- Ignore keys that are used by ThemeManager.
-- (we dont want configs to save themes, do we?)
SaveManager:IgnoreThemeSettings()

-- You can add indexes of elements the save manager should ignore
SaveManager:SetIgnoreIndexes({})

-- use case for doing it this way:
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
InterfaceManager:SetFolder("FluentScriptHub")
SaveManager:SetFolder("FluentScriptHub/specific-game")

InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)


Window:SelectTab(1)

Fluent:Notify({
    Title = "Fluent",
    Content = "The script has been loaded.",
    Duration = 8
})

-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
SaveManager:LoadAutoloadConfig()
