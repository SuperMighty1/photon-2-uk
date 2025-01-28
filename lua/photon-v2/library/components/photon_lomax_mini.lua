if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent()

COMPONENT.Author = "Photon"

COMPONENT.Credits = {
	Model = "SGM",
	Code = "Schmal"
}

COMPONENT.PrintName = [[Premier Hazard Lomax Mini]]

COMPONENT.Model = "models/supermighty/props/premier_hazard_lomax_mini.mdl"


COMPONENT.Templates = {
	["2D"] = {
		Left = {
			Width 	= 3,
			Height	= 1.5,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/whe_dominator_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/whe_dominator_detail.png").MaterialName,
		    -- Bloom = PhotonMaterial.GenerateBloomQuad("photon/lights/sgm_ion_left_bloom.png").MaterialName,
			Scale = 1.5
		},
	},
}

COMPONENT.StateMap = "[B] 1 2 3 4 5 6 7 8"

COMPONENT.Elements = { 
	[1] = { "Left", Vector( 4.3, 3.3, 3.2 ), Angle( 0, -90, 0 ) },
    [2] = { "Left", Vector( 4.3, -3.3, 3.2 ), Angle( 0, -90, 0 ) },

	[3] = { "Left", Vector( 3.45, 8.9, 3.2 ), Angle( 0, -50, 0 ) },
	[4] = { "Left", Vector( 3.45, -8.9, 3.2 ), Angle( 0, -130, 0 ) },

	[5] = { "Left", Vector( -3.45, -8.9, 3.2 ), Angle( 0, 130, 0 ) },
	[6] = { "Left", Vector( -3.45, 8.9, 3.2 ), Angle( 0, 50, 0 ) },

	[7] = { "Left", Vector( -4.3, -3.3, 3.2 ), Angle( 0, 90, 0 ) },
	[8] = { "Left", Vector( -4.3, 3.3, 3.2 ), Angle( 0, 90, 0 ) },


}

COMPONENT.ElementGroups = {
	["RIGHT"] = { 1, 3, 6 },
	["LEFT"] = { 2, 4, 5 },
}

local sequence = Photon2.SequenceBuilder.New

COMPONENT.Segments = {
	Mesh = {
		Frames = {
			[1] = "RIGHT",
			[2] = "LEFT",
		},
		Sequences = {
			["ON"] = { 1, 0, 1, 0, 1, 0, 2, 0, 2, 0, 2, 0 },
			["ON:A"] = { 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, },
			["ON:B"] = { 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, },
		}
	},
}

COMPONENT.Inputs = {
	["Emergency.Warning"] = {
		["MODE1"] = {
			Mesh = "ON",
		},
		["FRONT"] = {
			Mesh = "ON",
		},
	},
}