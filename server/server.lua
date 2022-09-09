RegisterNetEvent('siekierawyjmij')
AddEventHandler('siekierawyjmij', function()
    exports.ox_inventory:AddItem(1, 'weapon_hatchet', 4, nil, nil, function(success, reason)
    end)
end)

AddEventHandler('onResourceStart', function(resourceName)
    Citizen.Wait(100)
    if (GetCurrentResourceName() ~= resourceName) then
      return
    end
    print('Korzystasz ze skryptów Astro.De-eu!')
    print('Twórca: Wujo Mrufka#2777')
    -- lib.versionCheck('wujomrufka/AstroDevelopment-DiscordStatus')
  end)
