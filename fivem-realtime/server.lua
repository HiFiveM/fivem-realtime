
RegisterNetEvent("realtime:event")
AddEventHandler("realtime:event", function()
    local hour = tonumber(os.date("%H"))
    local minute = tonumber(os.date("%M"))
    local second = tonumber(os.date("%S"))
    TriggerClientEvent("realtime:event", source, hour, minute, second)
end)
