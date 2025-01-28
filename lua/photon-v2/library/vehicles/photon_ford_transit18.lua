if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

local sequence = Photon2.SequenceBuilder.New
-- Readable title of the vehicle
VEHICLE.Title = "2018 Ford Transit CIU"

-- Unique identifier of the BASE vehicle
VEHICLE.Vehicle = "sm18tranny"

-- Spawn category of the vehicle
VEHICLE.Category = "Photon 2: UK"

-- The author of this vehicle file
VEHICLE.Author = "mighters"

VEHICLE.Properties = {
	Skin = 2,
	Color = Color( 255, 255, 255 ),
}

VEHICLE.BodyGroups = {
	["Bumpers"] = 1,
	["Mirrors"] = 0,
	["Sidetrim"] = 1,
	["Handles"] = 1,
	["Grille"] = 1,
	["Headlights"] = 1,
	["Rims"] = 1,
}


-- Sub-Material Example:
-- [1] = "path/to/material"
VEHICLE.SubMaterials = {}

VEHICLE.Components = {	
	{
		Component = "photon_lomax_mini",
		Position = Vector( 0, 24, 99.2 ),
		Angles = Angle( 1.5, 90, 0 ),
		Scale = 1,
	},
	{
		Component = "photon_lomax_mini",
		Position = Vector( 0, -100, 100.2 ),
		Angles = Angle( -0.5, 90, 0 ),
		Scale = 1,
		ElementGroups = {
			["RIGHT"] = { 3, 6, 8 },
			["LEFT"] = { 4, 5, 7 },
		},
	},
}


-- Props Example:
--	{
--		Model = "models/tdmcars/emergency/equipment/setina_bodyguard.mdl",
--		Position = Vector( 0, 100, 20 ),
--		Angles = Angle( 0, 0, 0 ),
--		Scale = 1,
--	}
VEHICLE.Props = {
}

VEHICLE.Schema = {
    ["Emergency.Warning"] = {
        { Label = "PRIMARY" },
        { Mode = "MODE1", Label = "FRONT LIGHTING" },
		{ Mode = "MODE2", Label = "REAR LIGHTING" },
		{ Mode = "MODE3", Label = "360 LIGHTING" },
    },
	["Emergency.Marker"] = {
		{ Label = "MARKER" },
        { Mode = "CRUISE", Label = "REDS" },
    },
}