Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerColor                = { r = 120, g = 120, b = 240 }
Config.EnablePlayerManagement     = false -- enables the actual car dealer job. You'll need esx_addonaccount, esx_billing and esx_society
Config.EnableOwnedVehicles        = true
Config.EnableSocietyOwnedVehicles = false -- use with EnablePlayerManagement disabled, or else it wont have any effects
Config.ResellPercentage           = 65
Config.Locale                     = 'pt'

-- looks like this: 'LLL NNN'
-- The maximum plate length is 8 chars (including spaces & symbols), don't go past it!
Config.PlateLetters  = 4
Config.PlateNumbers  = 4
Config.PlateUseSpace = false

Config.Zones = {

	ShopEntering = { -- blip para comprar barcos
		Pos   = { x = -713.7, y = -1297.74, z = 4.1 },
		Size  = { x = 1.5, y = 1.5, z = 1.0 },
		Type  = 1,
	},

	ShopInside = { -- ver barcos
		Pos     = { x = -714.59, y = -1337.5, z = -0.38 },
		Size    = { x = 1.5, y = 1.5, z = 1.0 },
		Heading = 143.58,
		Type    = -1,
	},

	ShopOutside = { -- spawn dos barcos depois de comprar
		Pos     = { x = -782.71, y = -1423.98, z = -0.2 },
		Size    = { x = 1.5, y = 1.5, z = 1.0 },
		Heading = 330.0,
		Type    = -1,
	},

	BossActions = { -- nao funciona
		Pos   = { x = -31240.1, y = -3001.81, z = -43.87 },
		Size  = { x = 1.5, y = 1.5, z = 1.0 },
		Type  = -1,
	},

	GiveBackVehicle = {
		Pos   = { x = -1348.7, y = -3188.02, z = 12.33 },
		Size  = { x = 7.0, y = 7.0, z = 4.0 },
		Type  = (Config.EnablePlayerManagement and 1 or -1),
	},

	ResellVehicle = { -- vender barco 65% do preço original
		Pos   = { x = -797.24, y = -1502.92, z = -0.22 },
		Size  = { x = 7.0, y = 7.0, z = 4.0 },
		Type  = 1,
	}

}
