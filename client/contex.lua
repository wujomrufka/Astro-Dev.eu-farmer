RegisterNetEvent('astro:context2')
AddEventHandler('astro:context2', function()
    -- if Config.Musiszmiecjoba then if ESX.PlayerData.job and ESX.PlayerData.job.grade_name == '' then
    lib.registerContext({
        id = 'astro:context2',
        title = 'Stodoła',
        options = {
            {
                title = 'Wyciągnij pojazd',
                description = 'Wycigąnij pojazd ze stodoły',
                arrow = true,
                event = 'astro:menupojazdow2'
            },
            {
                title = 'Schowaj pojazd',
                description = 'Schowaj pojazd do stodoły',
                arrow = false,
                event = 'astro:schowajpojazd2'
            },
        },
    })
    lib.showContext('astro:context2')
end)

RegisterNetEvent('astro:menupojazdow2')
AddEventHandler('astro:menupojazdow2', function()
    -- if Config.Musiszmiecjoba then if ESX.PlayerData.job and ESX.PlayerData.job.grade_name == '' then
    lib.registerContext({
        id = 'astro:menupojazdow2',
        title = 'Stodoła',
        options = {
            {
                title = 'Wyciagnij pojazd',
                description = 'Wycigąnij pojazd ze stodoły',
                arrow = false,
                event = 'astro:pojazd2'
            },
        },
    })
    lib.showContext('astro:menupojazdow2')
end)

RegisterNetEvent('astro:schowajpojazd2', function()
    ESX.ShowNotification('Wejdź do pojazdu a następnie odczekaj 10 sekund!')
    Citizen.Wait(10000)
    ESX.ShowNotification('Schowałeś pojazd')
    local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
    SetEntityAsMissionEntity(vehicle, true, true)
    DeleteVehicle(vehicle)
end)
-- -494.8499, -255.4472, 35.6140, 291.7604
RegisterNetEvent('astro:pojazd2', function()
ESX.ShowNotification('Wyciągnąłeś pojazd!')
ESX.Game.SpawnVehicle(Config.Traktor, Config.Garaz, 214.4182, function(vehicle) end)
end)

