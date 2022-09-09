CreateThread(function()
    exports.qtarget:AddBoxZone("farmergaraze", vector3(2311.25, 4886.12, 41.81), 2, 2, {
        name = "farmergaraze",
        heading = 0,
        -- debugPoly = false,
       
        }, {
            options = {
                {
                    event = "astro:context2",
                    icon = "fas fa-car",
                    label = "Garaz frakcyjny",
                    job = "farmer"
                },
            },
            distance = 3.0
    })
end)
--schowek
CreateThread(function()
    exports.qtarget:AddBoxZone("farmerschowek", vector3(2341.98, 4881.55, 41.81), 2, 2, {
        name = "farmerschowek",
        heading = 0,
        debugPoly = true

        }, {
            options = {
                {
                    event = "astro:farmerszafka",
                    icon = "fas fa-clone",
                    label = "Otworz schowek",
                    job = "farmer"
                },
            },
            distance = 3.0
    })
end)