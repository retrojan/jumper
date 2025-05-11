local Players = game:GetService("Players")
local Player = Players.LocalPlayer

local function AntiAFK()
    while true do
        task.wait(25) -- Ждем 25 секунд
        
        if Player.Character and Player.Character:FindFirstChild("Humanoid") then
            local Humanoid = Player.Character.Humanoid
            if Humanoid.Health > 0 then -- Проверка, что персонаж жив
                Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end
end

AntiAFK()
