local library = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/FeHariHub/FarmNovo/main/LibUI.lua"))()

local Main = library:CreateWindow("FeHari Hub","Lendas Da Velocidade ⚡")

local tab = Main:CreateTab("Cheats")
local tab2 = Main:CreateTab("Misc")

tab:CreateButton("Hi",function()
print("clicked")
end)

tab:CreateToggle("Farm",function(a)
print(a)
end)

tab:CreateSlider("Wow",1,16,function(a)
print(a)
end)

tab:CreateCheckbox("Aimbot",function(a)
print(a)
end)

tab:CreateDropdown("Word",{"Sung","Jin","Woo"},function(a)
print(a)
end)

tab2:CreateButton("Hello",function()
print("clicked")
end)

tab:Show()
