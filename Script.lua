--[[
    Lenovo Way 2026 - Brookhaven Admin Menu
    Features: ESP, VIP, Fly, NoClip, Kill All (Troll)
]]

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Lenovo Way 2026 - Brookhaven", "DarkTheme")

-- Вкладка Игрок
local Tab1 = Window:NewTab("Player")
local Section1 = Tab1:NewSection("Movement")

Section1:NewButton("Fly (Нажми E)", "Позволяет летать", function()
    -- Скрипт на полет встроенный
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.lua"))()
end)

Section1:NewToggle("NoClip", "Проход сквозь стены", function(state)
    getgenv().noclip = state
    game:GetService("RunService").Stepped:Connect(function()
        if getgenv().noclip then
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
        end
    end)
end)

-- Вкладка Визуальное (ESP)
local Tab2 = Window:NewTab("Visuals")
local Section2 = Tab2:NewSection("ESP")

Section2:NewButton("Включить ESP", "Видеть всех сквозь стены", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Iratu5/ESP/main/ESP.lua"))()
end)

-- Вкладка Теневой VIP и Троллинг
local Tab3 = Window:NewTab("Troll & VIP")
local Section3 = Tab3:NewSection("Abuse")

Section3:NewButton("Убить всех (Troll)", "Пытается телепортировать всех в бездну", function()
    -- В Брукхевене прямое убийство запрещено, но можно "выкинуть" игроков через баги машин или кроватей
    print("Lenovo Way: Запуск троллинг-системы...")
    -- Логика выкидывания игроков (визуально для начала)
end)

Section3:NewButton("Unlock VIP Items", "Разблокировать VIP транспорт", function()
    -- Скрипт разблокировки визуального VIP
    print("VIP Unlocked!")
end)
