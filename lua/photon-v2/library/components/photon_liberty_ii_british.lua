if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent()

COMPONENT.Author = "Photon"

COMPONENT.Credits = {
	Model = "SGM",
	Code = "Schmal"
}

COMPONENT.PrintName = [[Whelen Liberty II British]]

COMPONENT.Model = "models/supermighty/whelen_liberty_ii_british.mdl"

COMPONENT.Templates = {
	["2D"] = {
		Primary = {
			Width 	= 8.7,
			Height	= 8.5,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_primary_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_primary_detail.png").MaterialName,
			-- Bloom = PhotonMaterial.GenerateBloomQuad("photon/lights/sm_whe_lib_ii_primary_bloom.png").MaterialName,
			Scale = 2
		},
		Corner = {
			Width 	= 12.8,
			Height	= 16,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_corner_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_corner_detail.png").MaterialName,
			-- Bloom = PhotonMaterial.GenerateBloomQuad("photon/lights/sm_whe_lib_ii_corner_bloom.png").MaterialName,
		},
		Half = {
			Width 	= 6,
			Height	= 4.4,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_half_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_half_detail.png").MaterialName,
			-- Bloom = PhotonMaterial.GenerateBloomQuad("photon/lights/sm_whe_lib_ii_half_bloom.png").MaterialName,
		},
		Alley = {
			Width 	= 3,
			Height	= 3,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_alley_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_alley_shape.png").MaterialName,
			-- Bloom = PhotonMaterial.GenerateBloomQuad("photon/lights/sm_whe_lib_ii_alley_bloom.png").MaterialName,
		},
		CornerEdge = {
			Width 	= 4.9,
			Height	= 4,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_corner_edge_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_corner_edge_detail.png").MaterialName,
			-- Bloom = PhotonMaterial.GenerateBloomQuad("photon/lights/sm_whe_lib_ii_corner_edge_bloom.png").MaterialName,
		},
	},
}

COMPONENT.StateMap = "[B] 1 2 3 4 5 6 7 8 9 10 13 14 15 16 17 18 19 20 21 22 23 24 25 26 [R] 12 11"

COMPONENT.Elements = {
	[1] = { "Primary", Vector( 6.29, 4.8, 0.36 ), Angle( 0, -90, 0 ) },
	[2] = { "Primary", Vector( 6.29, -4.8, 0.36 ), Angle( 0, -90, 0 ) },
	[3] = { "Primary", Vector( 6.29, 12, 0.36 ), Angle( 0, -90, 0 ) },
	[4] = { "Primary", Vector( 6.29, -12, 0.36 ), Angle( 0, -90, 0 ) },
	[5] = { "Half", Vector( 6.29, 17.3, 0.36 ), Angle( 0, -90, 0 ) },
	[6] = { "Half", Vector( 6.29, -17.3, 0.36 ), Angle( 0, -90, 0 ) },
	[7] = { "Corner", Vector( 4.08, 23.7, 0.39 ), Angle( 0, -90 + 45.9, 0 ) },
	[8] = { "Corner", Vector( 4.08, -23.7, 0.39 ), Angle( 0, -90 - 45.9, 0 ) },
	[9] = { "Corner", Vector( -4.08, 23.7, 0.39 ), Angle( 0, 90 - 45.9, 0 ) },
	[10] = { "Corner", Vector( -4.08, -23.7, 0.39 ), Angle( 0, 90 + 45.9, 0 ) },
	[11] = { "Primary", Vector( -6.29, 12, 0.36 ), Angle( 0, 90, 0 ) },
	[12] = { "Primary", Vector( -6.29, -12, 0.36 ), Angle( 0, 90, 0 ) },
	[13] = { "Primary", Vector( -6.29, 4.8, 0.36 ), Angle( 0, 90, 0 ) },
	[14] = { "Primary", Vector( -6.29, -4.8, 0.36 ), Angle( 0, 90, 0 ) },
	[15] = { "Half", Vector( -6.29, 17.3, 0.36 ), Angle( 0, 90, 0 ) },
	[16] = { "Half", Vector( -6.29, -17.3, 0.36 ), Angle( 0, 90, 0 ) },
	[17] = { "CornerEdge", Vector( 6.34, 20.89, 0.39 ), Angle( 0, -90, 0 ) },
	[18] = { "CornerEdge", Vector( 6.34, -20.89, 0.39 ), Angle( 0, -90, 0 ), Width = -4.9 },
	[19] = { "CornerEdge", Vector( 1.2, 25.89, 0.39 ), Angle( 0, 0, 0 ), Width = -4.9 },
	[20] = { "CornerEdge", Vector( 1.2, -25.89, 0.39 ), Angle( 0, 180, 0 ) },
	[21] = { "CornerEdge", Vector( -1.2, 25.89, 0.39 ), Angle( 0, 0, 0 ) },
	[22] = { "CornerEdge", Vector( -1.2, -25.89, 0.39 ), Angle( 0, 180, 0 ), Width = -4.9  },
	[23] = { "CornerEdge", Vector( -6.34, 20.89, 0.39 ), Angle( 0, 90, 0 ), Width = -4.9  },
	[24] = { "CornerEdge", Vector( -6.34, -20.89, 0.39 ), Angle( 0, 90, 0 ) },

}

COMPONENT.ElementGroups = {
	["ALL"] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24,},
    ["LEFT"] = { 1, 3, 5, 7, 9, 13, 15, 17, 19, 21, 23 },
    ["RIGHT"] = { 2, 4, 6, 8, 10, 14, 16, 18, 20, 22, 24},
    ["RED1"] = { 12 },
    ["RED2"] = { 11 },
}

local sequence = Photon2.SequenceBuilder.New

COMPONENT.Segments = {
	Mesh = {
		Frames = {
			[1] = "ALL",
            [2] = "LEFT",
            [3] = "RIGHT",
		},
		Sequences = {
			ON = { 2, 0, 2, 0, 2, 0, 2, 0, 3, 0, 3, 0, 3, 0, 3, 0} --1,2,1,2,1,2,3,4,3,4,3,4 }
		}
	},
    Reds = {
		Frames = {
            [1] = "RED1",
            [2] = "RED2",
		},
		Sequences = {
			ON = { 1, 0, 1, 0, 1, 0, 1, 0, 2, 0, 2, 0, 2, 0, 2, 0 } --1,2,1,2,1,2,3,4,3,4,3,4 }
		}
	},
}

COMPONENT.Inputs = {
	["Emergency.Warning"] = {
		["999"] = {
			Mesh = "ON",
		},
	},
    ["Emergency.Auxiliary"] = {
		["REDS"] = {
			Reds = "ON",
		},
	}, 
}