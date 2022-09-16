# Astro-Dev.eu-farmer
Astro Discord Server - https://discord.gg/pmkubZTbvu

![unknown](https://user-images.githubusercontent.com/106449079/190670489-03f074f6-fef1-49e1-8efb-246cec7ef3c5.png)


**Aby móc korzystać ze sklepu przejdź do pliku inventory i dodaj poniższy kod** (`ox_inventory/data/shops.lua`).
```lua

	AstroFarmer = {
		name = 'Sklep Z Nasionkami',
		blip = {
			id = 52, colour = 9, scale = 0.8
		}, inventory = {
			{ name = 'seeds', price = 20 }
		}, locations = {
			vec3(1087.213135, 6508.522949, 21.040283)

		}, targets = {
			-- { loc = vec3(2746.8, 3473.13, 55.67), length = 0.6, width = 3.0, heading = 65.0, minZ = 55.0, maxZ = 56.8, distance = 3.0 }
		}
	}
```
**Aby móc korzystać z szafki przejdź do pliku inventory i dodaj poniższy kod** (`ox_inventory/data/stashes.lua`)
```lua
	,{
		coords = vec3(2443.173584, 4977.138672, 46.803711),
		target = {
			loc = vec3(2443.173584, 4977.138672, 46.803711),
			length = 2,
			width = 2,
			heading = 0,
			minZ = 43.21,
			maxZ = 47.21,
			label = 'Open personal locker'
		},
		name = 'farmerschowek2',
		label = 'Szuflada Na Graty',
		owner = true,
		slots = 70,
		weight = 70000,
		groups = {['farmer'] = 0}
	}
```
