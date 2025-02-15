if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2002 Vauxhall Vectra UK Police [Rin]"
VEHICLE.Vehicle		= "sm02vectra"
VEHICLE.Category 	= "Photon 2: UK"
VEHICLE.Author		= "Rin Hoshizora"


VEHICLE.Siren = {
	[1] = "standby_rsg_mcs_rumbler",
}


VEHICLE.Equipment = {
    {
		Category = "Livery",
		Options = {
			
			{
				Option = "Central Police",
				SubMaterials = {
					{ Id = 6, Material = "rin/uk_liveries/vectra/central_police" }
				}
			},
		}
	},
	{
		Category = "Lightbar",
		Options = {
			{
				Option = "Whelen Liberty",
				Components = {
					{
						Component = "photon_whe_liberty_48",
						Position = Vector( 0, -11.5, 72.5 ),
						Angles = Angle( 2.5, 90, 0 ),
						Scale = 0.8,
					},
				}
			},
		}
	},
	{
		Category = "Siren",
		Options = {
			{
				Option = "Siren 2",
				Components = {
					{
						Component = "photon_british_siren",
						Position = Vector(0, 105, 20),
						Angles = Angle(0, 0, 0),
						Scale = 1,
                        Siren = "standby_rsg_mcs_rumbler"
					},
				}
			}
		}
	},
}

