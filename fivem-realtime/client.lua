
local syncActive = true
local syncThread = nil

-- Function to start synchronization
function StartRealTimeSync()
    if not syncActive then
        syncActive = true
        syncThread = CreateThread(function()
            while syncActive do
                TriggerServerEvent("realtime:event")
                Wait(60000) -- Wait for 1 minute before next sync
            end
        end)
    end
end

-- Function to stop synchronization
function StopRealTimeSync()
    if syncActive then
        syncActive = false
        if syncThread then
            -- In Lua, threads are cooperative; setting syncActive to false will stop the loop
            syncThread = nil
        end
    end
end

RegisterNetEvent("realtime:event")
AddEventHandler("realtime:event", function(hour, minute, second)
    if syncActive then
        NetworkOverrideClockTime(hour, minute, second)
    end
end)

-- Start synchronization on resource start
StartRealTimeSync()

-- Example: Command to toggle synchronization
RegisterCommand("toggleTimeSync", function()
    if syncActive then
        StopRealTimeSync()
        print("Real-time synchronization stopped.")
    else
        StartRealTimeSync()
        print("Real-time synchronization started.")
    end
end, false)
