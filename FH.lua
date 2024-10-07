local library = loadstring(game:HttpGet('https://raw.githubusercontent.com/FeHariHub/FarmNovo/main/LibUI.lua'))()

local Window = library:CreateWindow("FeHari Hub", "Lendas Da Velocidade ⚡", 111462827396918)

local Tab = Window:CreateTab("Início")

local Page = Tab:CreateFrame("Farmar")

Button = Page:CreateButton("Button", "Description", function()
CreateNotification("Title", "Description", function(value)
if value == true then
print(true)
else
print(false)
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
