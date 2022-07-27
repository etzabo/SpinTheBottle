-- Created by etzabo. Please credit my name if you use this script an any sort of video.
localPlayer.PlayerGui.ShootTimer:Destroy()
local playerService = game:GetService("Players")
local localPlayer = playerService.LocalPlayer

function GetRandPlayer()
    while true do
        local players = playerService:GetPlayers()
        local numPlayer = math.random(1, #players)
        if players[numPlayer].UserId ~= localPlayer.UserId then
            print("Trying to shoot " .. players[numPlayer].DisplayName .. "(" .. players[numPlayer].Name .. ")")
            return players[numPlayer]
        end
        wait(.1)
    end
end

while true do
    game:GetService("ReplicatedStorage").RemoteObjects.TargetChosen:FireServer(GetRandPlayer())
end
