AddEventHandler('weaponDamageEvent', function(_, data)
    if data.weaponType ~= 2725352035 then
        local entityTarget = NetworkGetEntityFromNetworkId(data.hitGlobalId)
        local srcTarget = NetworkGetEntityOwner(entityTarget)
        if GetEntityHealth(entityTarget) ~= Config.dead and data.hitComponent == 20 then
            TriggerClientEvent('hitkill:setPlayerDead', srcTarget)
        end
    end
end)