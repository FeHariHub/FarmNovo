local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/FeHariHub/FarmNovo/main/LibUI.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/FeHariHub/FarmNovo/main/SalvarGerenciamento.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/FeHariHub/FarmNovo/main/InterfaceGerenciamento.lua"))()

local Window = Fluent:CreateWindow({
    Title = "FeHari Hub | Lendas Da Velocidade ⚡" .. Fluent.Version,
    SubTitle = "V-BETA!",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

--Fluent provides Lucide Icons https://lucide.dev/icons/ for the tabs, icons are optional
local Tabs = {
    Main = Window:AddTab({ Title = "Início", Icon = "warehouse" }),
    Farm = Window:AddTab({ Title = "Farmar", Icon = "skull" }),
    Teleport = Window:AddTab({ Title = "Teleportar", Icon = "arrow-right-left" })
    Races = Window:AddTab({ Title = "Corridas", Icon = "flag" })
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
        Title = "Atenção!",
        Content = "Esta é Uma V-BETA Do FeHari Hub.\nEm Breve Lançaremos A V-OFC!"
    })

    

    Tabs.Farm:AddButton({
        Title = "Em Breve..",
        Description = "Logo Logo!",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "This is a dialog",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            print("Confirmed the dialog.")
                        end
                    },
                    {
                        Title = "Cancel",
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
        Description = "Velocidade Do Personagem",
        Default = 1000,
        Min = 0,
        Max = 999999,
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



    local Input = Tabs.Main:AddInput("Input", {
        Title = "Parar De Farmar Rebirths",
        Default = "Valor",
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



local Dropdown = Tabs.Main:AddDropdown("Dropdown", {
        Title = "Áreas Para Teleportar",
        Values = {"Main City", "Snow City", "Magma City", "Legends Highway"},
        Multi = false,
        Default = nil,
    })

    Dropdown:SetValue("four")

    Dropdown:OnChanged(function(Value)
        print("Dropdown changed:", Value)
    end)



local Toggle = Tabs.Farm:AddToggle("MyToggle", {Title = "Corridas Automáticas", Default = false })

    Toggle:OnChanged(function()
        print("Toggle changed:", Options.MyToggle.Value)
    end)

    Options.MyToggle:SetValue(false)



    Tabs.Races:AddParagraph({
        Title = "Em Breve...",
        Content = "Logo Logo Novas Funções Como:"
    })



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
