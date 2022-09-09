RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
	ESX.PlayerLoaded = true
end)

RegisterNetEvent('esx:onPlayerLogout')
AddEventHandler('esx:onPlayerLogout', function()
	ESX.PlayerLoaded = false
	ESX.PlayerData = {}
end)
-- Schowek
RegisterNetEvent('schowek:astrofarmer', function()
    if ESX.PlayerData.job and ESX.PlayerData.job.name == Config.FarmerJob then
    exports.ox_inventory:openInventory('stash', 'society_astrofarmer')
    end
end)
-- Items events
RegisterNetEvent('astro:farmerszafka')
AddEventHandler('astro:farmerszafka', function()
    lib.registerContext({
        id = 'astro:farmerszafka',
        title = 'Szafka Prawdziwego Farmera',
        options = {
            {
                title = 'Wyjmij siekierę',
                description = 'Ostre narzędzie.',
                arrow = true,
                event = 'siekierawyjmij'
            },
            print("test")

        },
    })
    lib.showContext('astro:farmerszafka')
    
end)
RegisterNetEvent('siekierawyjmij', function()
TriggerServerEvent('siekierawyjmij')
end)



-- =========================================================================
-- Zrespienie peda od garaży
Citizen.CreateThread(function()
    RequestModel(GetHashKey("a_m_m_farmer_01"))
    while not HasModelLoaded(GetHashKey("a_m_m_farmer_01")) do
        Wait(155)
    end
    while CreatePed == nil do
        Citizen.Wait(100)
    end
    local ped = CreatePed(4, GetHashKey("a_m_m_farmer_01"), 2311.015381, 4886.518555, 40.799316, 51.023624, false, true) 
    TaskStartScenarioInPlace(ped, "WORLD_HUMAN_STAND_MOBILE", 0, true)
    FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
end)

-- Zrespienie peda od schowka 
Citizen.CreateThread(function()
    RequestModel(GetHashKey("a_m_m_farmer_01"))
    while not HasModelLoaded(GetHashKey("a_m_m_farmer_01")) do
        Wait(155)
    end
    while CreatePed == nil do
        Citizen.Wait(100)
    end
    local ped = CreatePed(4, GetHashKey("a_m_m_farmer_01"), 2342.004395, 4881.534180, 40.799316, 158.740158, false, true) 
    TaskStartScenarioInPlace(ped, "amb@code_human_wander_clipboard@male@base", 0, true)
    FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
end)


-- Blip główny 
local blips = {
    {title="Stodoła Jacka", colour=51, id=473, x = 1905.230713, y =  4924.615234, z = 48.893066}
 }

Citizen.CreateThread(function()
   for _, info in pairs(blips) do
     info.blip = AddBlipForCoord(info.x, info.y, info.z)
     SetBlipSprite(info.blip, info.id)
     SetBlipDisplay(info.blip, 4)
     SetBlipScale(info.blip, 1.0)
     SetBlipColour(info.blip, info.colour)
     SetBlipAsShortRange(info.blip, true)
     BeginTextCommandSetBlipName("STRING")
     AddTextComponentString(info.title)
     EndTextCommandSetBlipName(info.blip)
   end
end)
