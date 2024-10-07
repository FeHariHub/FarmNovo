local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/FeHariHub/FarmNovo/main/LibUI.lua", true))() -- Defina a variável library aqui

-- Para criar uma nova janela:
local window = library:AddWindow("FeHari Hub | Lendas Da Velocidade", nil)

-- Para adicionar uma aba:
local tab = window:AddTab("Início")
tab:Show() -- Para mostrar a aba primeiro

-- Exemplos de Uso

-- Adicionar Label
tab:AddLabel("Hello World!")

-- Adicionar Botão
tab:AddButton("Give ...", function()
	print("Gave ...!")
end)

-- Adicionar Caixa de Texto
tab:AddTextBox("Teleport to Player", function(text)
	teleport_to(game:GetService("Players"):FindFirstChild(text) or game:GetService("Players").LocalPlayer)
end)

-- Adicionar Switch
local switch = tab:AddSwitch("God Mode", function(bool)
	toggle_god_mode(bool)
end)
switch:Set(true) -- Ativa o switch

-- Adicionar Slider
local slider = tab:AddSlider("WalkSpeed", function(p)
	setwalkspeed(p)
end, {
	["min"] = 16,
	["max"] = 100,
})
slider:Set(16) -- Valor inicial

-- Adicionar Keybind
local keybind = tab:AddKeybind("Toggle", function(obj)
	ui_options.toggle_key = obj
end, {
	["standard"] = Enum.KeyCode.RightShift,
})

-- Adicionar Dropdown
local dropdown = tab:AddDropdown("Teleport to Location", function(text)
	if text == "Mars" then
		teleport(CFrame.new(...))
	elseif ...
	end
end)
local mars = dropdown:Add("Mars")
local earth = dropdown:Add("Earth")
local not_a_planet = dropdown:Add("Iridocyclitis")
not_a_planet:Remove() -- Remove um item

-- Adicionar Seletor de Cores
tab:AddLabel("Theme color")
local cp = tab:AddColorPicker(function(color)
	ui_options.main_color = color
end)

-- Adicionar Pasta
local folder = tab:AddFolder("My Folder")
folder:AddSwitch("Switch Inside Folder", function(bool)
	print("Switch inside folder:", bool)
end)
folder:AddLabel("Woo! I'm inside a folder!")

local folder2 = folder:AddFolder("Nested Folder")
folder2:AddLabel("I'm inside *two* folders :smirk:")

-- Adicionando Opções
tab:AddSlider("WalkSpeed", function(x)
	setwalkspeed(x)
end, {
	["min"] = 16,
	["max"] = 100,
})

tab:AddTextBox("Epic", function(text)
	print("TextBox: " .. text)
end, {
	["clear"] = false,
})

-- Exemplo de Console
tab:AddConsole({
	["y"] = 210,
	["readonly"] = false,
	["source"] = "Lua",
})

-- Carregar a UI
