if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2021 Volkswagen Passat Police"
VEHICLE.Vehicle		= "sm21passat"
VEHICLE.Category 	= "Photon 2: UK"
VEHICLE.Author		= "SuperMighty"

VEHICLE.SubMaterials = {
	[7] = "mighters/liveries/passat/centralpolice",
}

VEHICLE.Siren = {
	[1] = "standby_rsg_mcs_rumbler",
}

VEHICLE.Equipment = {
	{
		Category = "Standard",
		Options ={
			{
				Option = "Standard Lighting",
				VirtualComponents = {
					{
						Component = "photon_standard_passat21",
					}
				}
			}
		}
	},
	{
		Category = "Lightbar",
		Options ={
			{
				Option = "Traffic Commander",
				Components = {
					{
						Component = "photon_rsg_traffic_commander",
						Position = Vector( 0, -70, 56 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0
					},
					{
						Component = "photon_liberty_ii_british",
						Position = Vector( 0, -25, 77.5 ),
						Angles = Angle( 0.5, 90, 0 ),
						Scale = 1.02
					}
				}
			}
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
						Position = Vector(-13.8, 105, 20),
						Angles = Angle(0, 0, 0),
						Scale = 1.2,
                        Siren = "standby_rsg_mcs_rumbler"
					},
				}
			}
		}
	},
	{
		Category = "Pushbar",
		Options ={
			{
				Option = "Whelen Ion",
				Components = {
					{
						Component = "photon_british_ion",
						Position = Vector( 10, 112, 33.55 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						Phase = "A",
					},
					{
						Component = "photon_british_ion",
						Position = Vector( -10, 112, 33.55),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						Phase = "B",
					},
				}
			}
		}
	},
}

-- PHOTON2_DEBUG_VEHICLE_HARDRELOAD = false

VEHICLE.Schema = {
    ["Emergency.Warning"] = {
        { Label = "PRIMARY" },
        { Mode = "MODE3", Label = "RESPONSE" },
    },
}