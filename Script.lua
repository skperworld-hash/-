--[[
    Lenovo Way 2026 - Ultra Light Brookhaven
    No-Lag Version
]]

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Lenovo Way 2026", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Включить ESP (Видеть всех)",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Iratu5/ESP/main/ESP.lua"))()
  	end    
})

Tab:AddToggle({
	Name = "NoClip (Сквозь стены)",
	Default = false,
	Callback = function(Value)
		getgenv().noclip = Value
        game:GetService("RunService").Stepped:Connect(function()
            if getgenv().noclip then
                game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
            end
        end)
	end    
})

Tab:AddButton({
	Name = "Fly (Полет на E)",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.lua"))()
  	end    
})

OrionLib:Init()
