CreateThread(function()
    exports.qtarget:AddBoxZone("farmergaraze", vector3(2414.94, 4996.81, 46.29), 1, 2, {
        name = "farmergaraz",
        heading = 320,
        --debugPoly = true,
        minZ = 44.09,
        maxZ = 48.09
        }, {
            options = {
                {
                    event = "astro:context2",
                    icon = "fas fa-car",
                    label = "Porozmawiaj z Władziem",
                    job = "farmer"
                },
            },
            distance = 3.0
    })
end)
--schowek
CreateThread(function()
    exports.qtarget:AddBoxZone("farmerschowek", vector3(2295.1, 4870.77, 41.81), 2, 2, {
        name = "farmerschowek",
        heading = 0,
        --debugPoly = true,


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
