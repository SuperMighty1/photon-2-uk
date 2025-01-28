if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent()

COMPONENT.Author = "Photon"

COMPONENT.Credits = {
	Model = "SGM",
	Code = "Schmal"
}

COMPONENT.PrintName = [[Whelen Liberty British]]

COMPONENT.Model = "models/supermighty/whelen_liberty/whelen_liberty_refresh.mdl"

COMPONENT.SubMaterials = {
    [4] = "models/supermighty/photon/british/glass",
}

COMPONENT.BodyGroups = {
    ["Takedowns"] = 1,
}

COMPONENT.Templates = {
	["2D"] = {
		f_main = {
			Width 	= 8,
			Height	= 9,
			Shape = PhotonMaterial.GenerateLightQuad("sprites_apac/emv/whelen_lin6").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("sprites_apac/emv/whelen_lin6").MaterialName,
		    -- Bloom = PhotonMaterial.GenerateBloomQuad("photon/lights/sgm_ion_left_bloom.png").MaterialName,
			Scale = 1
		},
        corner = {
			Width 	= 12.4,
			Height	= 9,
			Shape = PhotonMaterial.GenerateLightQuad("sprites_apac/emv/whelen_lin6").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("sprites_apac/emv/whelen_lin6").MaterialName,
		    -- Bloom = PhotonMaterial.GenerateBloomQuad("photon/lights/sgm_ion_left_bloom.png").MaterialName,
			Scale = 1.2
		},
		FrontTakedowns = {
			Width 	= 7,
			Height	= 3.2,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/legend_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/legend_shape.png").MaterialName,
			Scale = 1.8
		},
		SideTakedowns = {
			Width 	= 3,
			Height	= 3,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/bulb_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/bulb_detail.png").MaterialName,
			Scale = 1.8
		},
	},
}

COMPONENT.StateMap = "[B] 1 2 3 4 5 6 7 8 9 10 13 14 [R] 11 12 [W] 15 16 17 18"

COMPONENT.Elements = { 
	[1] = { "f_main", Vector( 8.99, 3.8, 4.56 ), Angle( 0, -90, 0 ) },
    [2] = { "f_main", Vector( 8.99, -3.8, 4.56 ), Angle( 0, -90, 0 ) },
    [3] = { "f_main", Vector( 8.99, 18.59, 4.56 ), Angle( 0, -90, 0 ),  },
	[4] = { "f_main", Vector( 8.99, -18.59, 4.56 ), Angle( 0, -90, 0 ), },
    [5] = { "corner", Vector( 5.2, 27.97, 4.56 ), Angle( 0, -50, 0 ), },
    [6] = { "corner", Vector( 5.2, -27.97, 4.56 ), Angle( 0, -130, 0 ), },
    [7] = { "corner", Vector( -5.2, 27.97, 4.56 ), Angle( 0, 50, 0 ), },
    [8] = { "corner", Vector( -5.2, -27.97, 4.56 ), Angle( 0, 130, 0 ), },
    [9] = { "f_main", Vector( -8.99, 18.59, 4.56 ), Angle( 0, 90, 0 ), },
    [10] = { "f_main", Vector( -8.99, -18.59, 4.56 ), Angle( 0, 90, 0 ), },
    [11] = { "f_main", Vector( -8.99, -11.29, 4.56 ), Angle( 0, 90, 0 ), },
    [12] = { "f_main", Vector( -8.99, 11.29, 4.56 ), Angle( 0, 90, 0 ), },
    [13] = { "f_main", Vector( -8.99, 3.82, 4.56 ), Angle( 0, 90, 0 ), },
    [14] = { "f_main", Vector( -8.99, -3.82, 4.56 ), Angle( 0, 90, 0 ), },
		-- Front Takedowns
	[15] = { "FrontTakedowns", Vector( 9, 11.2, 4.5+.1 ), Angle( 0, -90, 0 ) },
	[16] = { "FrontTakedowns", Vector( 9, -11.2, 4.5+.1 ), Angle( 0, -90, 0 ) },
	-- Side Takedowns
	[17] = { "SideTakedowns", Vector( 0, 31.80, 4.5 ), Angle( 0, 0, 0 ) },
	[18] = { "SideTakedowns", Vector( 0, -31.80, 4.5 ), Angle( 0, 180, 0 ) },
}

COMPONENT.ElementGroups = {
	["ALL"] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14 },
    ["RIGHT"] = { 1, 3, 5, 7, 9, 13 },
    ["LEFT"] = { 2, 4, 6, 8, 10, 14 },
	["FRONT_RIGHT"] = { 1, 3, 5,},
	["FRONT_LEFT"] = { 2, 4, 6,},
    ["RIGHT_RED"] = { 11 },
    ["LEFT_RED"] = { 12 },
	["REAR_RIGHT"] = { 7, 9, 13 },
	["REAR_LEFT"] = { 8, 10, 14 },
	["TAKEDOWNS"] = { 15, 16 },
	["ALLEY_LEFT"] = { 17 },
	["ALLEY_RIGHT"] = { 18 },
}

local sequence = Photon2.SequenceBuilder.New

COMPONENT.Segments = {
	Mesh = {
		Frames = {
			[1] = "RIGHT",
            [2] = "LEFT",
			[3] = "FRONT_RIGHT",
			[4] = "FRONT_LEFT",
			[5] = "REAR_RIGHT",
			[6] = "REAR_LEFT",
		},
		Sequences = {
			["ON"] = { 1, 0, 1, 0, 1, 1, 1, 1, 1, 2, 0, 2, 0, 2, 2, 2, 2, 2,  },
			["FRONT"] = { 3, 0, 3, 3, 3, 3, 3, 3, 4, 0, 4, 0, 4, 4, 4, 4, 4, },
			["REAR"] = { 5, 0, 5, 5, 5, 5, 5, 5, 6, 0, 6, 0, 6, 6, 6, 6, 6 },
		}
	},
    Reds = {
		Frames = {
			[1] = "RIGHT_RED",
            [2] = "LEFT_RED",
		},
		Sequences = {
			["ON"] = { 1, 0, 1, 0, 1, 1, 1, 1, 1, 2, 0, 2, 0, 2, 2, 2, 2, 2,  },
		}
	},
	Takedown = {
		Frames = {
			[1] = "TAKEDOWNS",
		},
		Sequences = {
			["ON"] = { 1 },
		}
	},
	AlleyLeft = {
		Frames = {
			[1] = "ALLEY_LEFT",
		},
		Sequences = {
			["ON"] = { 1 },
		}
	},
	AlleyRight = {
		Frames = {
			[1] = "ALLEY_RIGHT",
		},
		Sequences = {
			["ON"] = { 1 },
		}
	},
}

COMPONENT.Inputs = {
	["Emergency.Warning"] = {
		["MODE1"] = {
			Mesh = "FRONT",
		},
		["MODE2"] = {
			Mesh = "REAR",
		},
		["MODE3"] = {
			Mesh = "ON",
		},
	},
	["Emergency.Marker"] = {
        ["ON"] = { Reds = "ON" }
    },
	["Emergency.SceneForward"] = {
		["ON"] = {
			Takedown = "ON"
		},
	},
	["Emergency.SceneLeft"] = { ["ON"] = { AlleyLeft = "ON" } },
	["Emergency.SceneRight"] = { ["ON"] = { AlleyRight = "ON" } },
}