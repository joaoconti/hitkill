RegisterNetEvent('hitkill:setPlayerDead', function()
    SetEntityHealth(PlayerPedId(), Config.dead)
end)