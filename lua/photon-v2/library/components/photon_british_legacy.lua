if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent()
local sequence = Photon2.SequenceBuilder.New

COMPONENT.Author = "Photon"

COMPONENT.Credits = {
	Model = "OfficerFive0",
	Code = "Schmal"
}

COMPONENT.Title = [[Whelen Legacy (44")]]
COMPONENT.Category = "Lightbar"
COMPONENT.Model = "models/schmal/whelen_legacy_44.mdl"

COMPONENT.Preview = {
	Position = Vector( 0, 0, -0.5 ),
	Angles = Angle( 0, 180, 0 ),
	Zoom = 0.9
}

COMPONENT.States = {
	[1] = "R",
	[2] = "B"
}

local priW = 3.1
local priH = priW / 2

local tirW = 3.2
local tirH = tirW / 2

COMPONENT.Templates = {
	["2D"] = {
		Primary = {
			Width 	= priW,
			Height	= priH,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/legacy_module_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/legacy_module_detail.png").MaterialName,
			Scale = 0.9,
			ForwardVisibilityOffset = 0,
			VisibilityRadius = 0.6,
			IntensityGainFactor = 3,
			IntensityLossFactor = 3,
		},
		TIR3 = {
			Width 	= tirW,
			Height	= tirH,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/legacy_tir3_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/legacy_tir3_shape.png").MaterialName,
			-- Detail = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_primary_detail.png").MaterialName,
			Scale = 1,
			ForwardVisibilityOffset = 0,
			VisibilityRadius = 0.6
		}
	},
	["Projected"] = {
		Illumination = {
			Material = "photon/flashlight/led_linear.png",
			NearZ = 100,
			FOV = 50,
			Brightness = 3
		}
	}
}

COMPONENT.ElementStates = {
	["2D"] = {
		["~TA"] = {
			Inherit = "A",
			IntensityTransitions = true,
			IntensityGainFactor = 5,
			IntensityLossFactor = 5,
		}
	},
}

function move( vector, angle, distance )
    local radians = math.rad( angle )
    local newX = vector.x + math.sin( radians ) * distance
    local newY = vector.y + math.cos( radians ) * distance
	local result = Vector( newX, newY, vector.z )
    print( tostring( result ) )
	return result
end

local ang = -45

COMPONENT.Elements = {
	[1] = { "Primary", Vector( 6.96, 2.3, 1.13 ), Angle( 0, -90, 0 ) },
	[2] = { "Primary", Vector( 6.96, -2.3, 1.13 ), Angle( 0, -90, 0 ) },

	[3] = { "Primary", Vector( 6.96, 5.38, 1.13 ), Angle( 0, -90, 0 ) },
	[4] = { "Primary", Vector( 6.96, -5.38, 1.13 ), Angle( 0, -90, 0 ) },

	[5] = { "Primary", Vector( 6.96, 8.66, 1.13 ), Angle( 0, -90, 0 ) },
	[6] = { "Primary", Vector( 6.96, -8.66, 1.13 ), Angle( 0, -90, 0 ) },

	[7] = { "Primary", Vector( 6.96, 11.74, 1.13 ), Angle( 0, -90, 0 ) },
	[8] = { "Primary", Vector( 6.96, -11.74, 1.13 ), Angle( 0, -90, 0 ) },

	[9] = { "Primary", Vector( 6.96, 15.02, 1.13 ), Angle( 0, -90, 0 ) },
	[10] = { "Primary", Vector( 6.96, -15.02, 1.13 ), Angle( 0, -90, 0 ) },

	[11] = { "Primary", Vector( 6.96, 18.1, 1.13 ), Angle( 0, -90, 0 ) },
	[12] = { "Primary", Vector( 6.96, -18.1, 1.13 ), Angle( 0, -90, 0 ) },

	[13] = { "Primary", Vector( 6.96, 21.37, 1.13 ), Angle( 0, -90, 0 ) },
	[14] = { "Primary", Vector( 6.96, -21.37, 1.13 ), Angle( 0, -90, 0 ) },

	[15] = { "Primary", Vector( 5.87, 24, 1.13 ), Angle( 0, -90 + 45, 0 ) },
	[16] = { "Primary", Vector( 5.87, -24, 1.13 ), Angle( 0, -90 - 45, 0 ) },

	[17] = { "Primary", Vector( 3.395, 26.475, 1.13 ), Angle( 0, -90 + 45, 0 ), Width = 3.95 },
	[18] = { "Primary", Vector( 3.395, -26.475, 1.13 ), Angle( 0, -90 - 45, 0 ), Width = 3.95 },

	[19] = { "Primary", Vector( -3.395, 26.475, 1.13 ), Angle( 0, 90 - 45, 0 ), Width = 3.95 },
	[20] = { "Primary", Vector( -3.395, -26.475, 1.13 ), Angle( 0, 90 + 45, 0 ), Width = 3.95 },

	[21] = { "Primary", Vector( -5.87, 24, 1.13 ), Angle( 0, 90 - 45, 0 ) },
	[22] = { "Primary", Vector( -5.87, -24, 1.13 ), Angle( 0, 90 + 45, 0 ) },

	[23] = { "Primary", Vector( -6.96, 21.37, 1.13 ), Angle( 0, 90, 0 ) },
	[24] = { "Primary", Vector( -6.96, -21.37, 1.13 ), Angle( 0, 90, 0 ) },

	[25] = { "Primary", Vector( -6.96, 18.1, 1.13 ), Angle( 0, 90, 0 ) },
	[26] = { "Primary", Vector( -6.96, -18.1, 1.13 ), Angle( 0, 90, 0 ) },

	[27] = { "Primary", Vector( -6.96, 15.02, 1.13 ), Angle( 0, 90, 0 ) },
	[28] = { "Primary", Vector( -6.96, -15.02, 1.13 ), Angle( 0, 90, 0 ) },

	[29] = { "Primary", Vector( -6.96, 11.74, 1.13 ), Angle( 0, 90, 0 ) },
	[30] = { "Primary", Vector( -6.96, -11.74, 1.13 ), Angle( 0, 90, 0 ) },

	[31] = { "Primary", Vector( -6.96, 8.66, 1.13 ), Angle( 0, 90, 0 ) },
	[32] = { "Primary", Vector( -6.96, -8.66, 1.13 ), Angle( 0, 90, 0 ) },

	[33] = { "Primary", Vector( -6.96, 5.38, 1.13 ), Angle( 0, 90, 0 ) },
	[34] = { "Primary", Vector( -6.96, -5.38, 1.13 ), Angle( 0, 90, 0 ) },

	[35] = { "Primary", Vector( -6.96, 2.3, 1.13 ), Angle( 0, 90, 0 ) },
	[36] = { "Primary", Vector( -6.96, -2.3, 1.13 ), Angle( 0, 90, 0 ) },

	[37] = { "TIR3", Vector( 0, 28, 1.14 ), Angle( 0, 0, 0 ) },
	[38] = { "TIR3", Vector( 0, -28, 1.14 ), Angle( 0, 180, 0 ) },

	[39] = { "Illumination", Vector( 7.5, 0, 0.23 ), Angle( 5, -90, 0 ) },
	[40] = { "Illumination", Vector( 7.5, 0, 0.23 ), Angle( 2, -90, 0 ), FOV = 90, Brightness = 1.5, Material = "photon/flashlight/wide.png" },

	[41] = { "Illumination", Vector( 0, 31, 0.23 ), Angle( 0, 0, 0 ), FOV = 90, Brightness = 1.5 },
	[42] = { "Illumination", Vector( 0, -31, 0.23 ), Angle( 5, 180, 0 ), FOV = 90, Brightness = 1.5 },
}

COMPONENT.StateMap = "[B] 1 3 5 7 9 11 13 15 17 19 21 23 25 27 33 35 2 4 6 8 10 12 14 16 18 20 22 24 26 28 34 36 [R] 29 31 30 32 [W] 37 38"

COMPONENT.ElementGroups = {
    ["ALL"] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38 },
    ["FRONT_LEFT"] = { 1, 3, 5, 7, 9, 11, 13, 15, 17 },
    ["FRONT_RIGHT"] = { 2, 4, 6, 8, 10, 12, 14, 16, 18 },
    ["REAR_LEFT"] = { 19, 21, 23, 25, 27, 33, 35 },
    ["REAR_RIGHT"] = { 20, 22, 24, 26, 28, 34, 36 },
    ["RED_LEFT"] = { 29, 31 },
    ["RED_RIGHT"] = { 30, 32 },
}
COMPONENT.Segments = {
    Front = {
		Frames = {
			[1] = "FRONT_LEFT",
            [2] = "FRONT_RIGHT",
		},
		Sequences = {
			["ON"] = sequence():QuadFlash( 1, 2), 
        },
    },
    Rear = {
        Frames = {
            [1] = "REAR_LEFT",
            [2] = "REAR_RIGHT",
        },
        Sequences = {
            ["ON"] = sequence():QuadFlash( 1, 2),
        },
    },
    Reds = {
        Frames = {
            [1] = "RED_LEFT",
            [2] = "RED_RIGHT",
        },
        Sequences = {
            ["ON"] = sequence():QuadFlash( 2, 1), 
        }
    }
}

COMPONENT.Inputs = {
	["Emergency.Warning"] = {
		["MODE1"] = {
            Front = "ON",
        },
        ["MODE2"] = {
            Rear = "ON",
        },
        ["MODE3"] = {
            Front = "ON",
            Rear = "ON",
        },
	},
    ["Emergency.Marker"] = {
        ["ON"] = {
			Reds = "ON",
		},
    }
}