if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2015 Subaru Impreza WRX STI UK Police [Rin]"
VEHICLE.Vehicle		= "subaru2015"
VEHICLE.Category 	= "Photon 2: UK"
VEHICLE.Author		= "Rin Hoshizora"


VEHICLE.SubMaterials = {
	[0] = "sentry/shared/env_cubemap_model",
	[6] = "sentry/shared/glass",
}

VEHICLE.Equipment = {
    {
		Category = "Color",
		Options = {
			
			{
				Option = "Blue",
				SubMaterials = {
					{ Id = 11, Material = "rin/uk_liveries/impreza/police_blue" }
				}
			},
			{
				Option = "Black",
				SubMaterials = {
					{ Id = 11, Material = "rin/uk_liveries/impreza/police_black" }
				}
			},
			{
				Option = "White",
				SubMaterials = {
					{ Id = 11, Material = "rin/uk_liveries/impreza/police_white" }
				}
			},
			{
				Option = "White Alt",
				SubMaterials = {
					{ Id = 11, Material = "rin/uk_liveries/impreza/police_white_alt" }
				}
			},
		}
	},
	{
		Category = "Lightbar",
		Options = {
			{
				Option = "Whelen Legacy",
				Components = {
					{
						Component = "photon_whe_legacy_44",
						Position = Vector( 0, -11.5, 70.5 ),
						Angles = Angle( 1, 90, 0 ),
						Scale = 1.0,
					},
				}
			},
		}
	},
	{
		Category = "Grille",
		Options = {
			{
				Option = "Whelen Ion",
				Components = {
					{
						Name = "@grille_ion",
						Component = "photon_whe_ion",
						Position = Vector( -8.5, 110, 27.5 ),
						Angles = Angle( 0.5, 0, 0 ),
						Scale = 1.0,
						States = { "B", "R" }
					},
					{
						Inherit = "@grille_ion", 
						Position = Vector( 8.5, 110, 27.5 ),
						Angles = Angle( -0.5, 0, 0 ),
						Phase = 180,
					},
					{
						Inherit = "@grille_ion", 
						Position = Vector( -12.5, 109, 14 ),
						Angles = Angle( 0.5, 0, 0 ),
						Phase = 180,
						States = { "W", "R" }
					},
					{
						Inherit = "@grille_ion", 
						Position = Vector( 12.5, 109, 14 ),
						Angles = Angle( -0.5, 0, 0 ),
						States = { "W", "R" }
					},
				}
			},
		}
	},
	{
		Category = "Rear Deck",
		Options = {
			{
				Option = "Rear Deck",
				Components = {
					{
						Name = "@deck_dingus",
						Component = "photon_fedsig_xstream_single",
						Position = Vector( -10, -75, 54 ),
						Angles = Angle( 0, -95, 0 ),
						BodyGroups = {
							["Mount"] = 0,
							["Shroud"] = 0
						},
						Bones = {
							["suction_mount"] = { Vector( 0, 0, 0), Angle( 0, 0, -20 ), 1 },
						
						},
						States = { "B" },
						Inputs = {

						},
						Segments = {

						},
						Scale = 1.1
					},
					{
						Inherit = "@deck_dingus", 
						Position = Vector( 10, -75, 54 ),
						Angles = Angle( 0, -85, 0 ),
						Phase = 180,
					},
				}
			},
		}
	},
}