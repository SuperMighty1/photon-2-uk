if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent() --[[@as PhotonLibraryComponent]]

COMPONENT.Author = "Photon"
COMPONENT.Credits = {
	Vehicle = "SGM",
	Code = "Schmal"
}

COMPONENT.PrintName = "2021 Volkswagen Passat"

COMPONENT.IsVirtual = true

COMPONENT.Templates = {
	["Mesh"] = {
		Mesh_static = {
			Model = "models/supermighty/photon/mesh/2021_passat_mesh.mdl",
			IntensityGainFactor = 10,
			IntensityLossFactor = 10,
            Scale = 1.0,
		},
        Mesh_flash = {
			Model = "models/supermighty/photon/mesh/2021_passat_mesh.mdl",
			IntensityGainFactor = 12,
			IntensityLossFactor = 4,
            Scale = 1.0,
            DeactivationState = "~OFF2",
		}
	},
    ["2D"] = {
		Main = {
			Shape = PhotonMaterial.GenerateLightQuad("sprites/emv/st_charger_front").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("sprites/emv/st_charger_front").MaterialName,
			--MaterialBloom = PhotonDynamicMaterial.GenerateBloomQuad("photon/lights/sgm_par46_bloom.png").MaterialName,
			Width = 12,
			Height = 12,
			Ratio = 1,
			Scale = 1,
		},
	}
}
COMPONENT.ElementStates = {
    ["Mesh"] = {
        ["~OFF"] = { Intensity = 0, IntensityTransitions = false },
        ["~OFF2"] = { Intensity = 0, IntensityTransitions = true },
		["BL"] = {
			Inherit = "B",
			Intensity = 10000
		},
        ["~SW"] = {
            BloomColor = PhotonColor( 255, 195, 145 ):Blend( softWhite ):GetBlendColor(),
		    DrawColor = PhotonColor( 255, 245, 120 ):Blend( softWhite ):GetBlendColor(),
            Inherit = "SW",
            Intensity = 1,
            IntensityLoss = 100,
            IntensityTransitions = true,
        },
        ["~A"] = {
            --BloomColor = PhotonColor( 255, 195, 145 ):Blend( softWhite ):GetBlendColor(),
		  --  DrawColor = PhotonColor( 255, 245, 120 ):Blend( softWhite ):GetBlendColor(),
            Inherit = "A",
            Intensity = 1,
            IntensityLoss = 500,
            IntensityTransitions = true,
        },
    },
}
COMPONENT.Elements = {
	[1] = { "Mesh_static", Vector( 0, 0.2, 15.4), Angle( 0, 90, 0 ), "models/supermighty/2021_passat/lights/d_run", DrawMaterial = "photon/common/glow_gradient_a" },
    [2] = { "Mesh_static", Vector( 0, 0.2, 15.4), Angle( 0, 90, 0 ), "models/supermighty/2021_passat/lights/p_run", DrawMaterial = "photon/common/glow_gradient_a" },
    [3] = { "Mesh_static", Vector( 0, -0.05, 15.4), Angle( 0, 90, 0 ), "models/supermighty/2021_passat/lights/pr_run", DrawMaterial = "photon/common/glow_gradient_a" },
    [4] = { "Mesh_static", Vector( 0, -0.05, 15.4), Angle( 0, 90, 0 ), "models/supermighty/2021_passat/lights/dr_run", DrawMaterial = "photon/common/glow_gradient_a" },
    [5] = { "Mesh_static", Vector( 0, -0.05, 15.4), Angle( 0, 90, 0 ), "models/supermighty/2021_passat/lights/d_brake", DrawMaterial = "photon/common/glow_gradient_a" },
    [6] = { "Mesh_static", Vector( 0, -0.05, 15.4), Angle( 0, 90, 0 ), "models/supermighty/2021_passat/lights/p_brake", DrawMaterial = "photon/common/glow_gradient_a" },
    [7] = { "Mesh_static", Vector( 0, -0.05, 15.4), Angle( 0, 90, 0 ), "models/supermighty/2021_passat/lights/c_brake", DrawMaterial = "photon/common/glow_gradient_a" },
    [8] = { "Mesh_flash", Vector( 0, 0.2, 15.4), Angle( 0, 90, 0 ), "models/supermighty/2021_passat/lights/d_turn", DrawMaterial = "photon/common/glow_gradient_a", }, --IntensityGainFactor = 5, IntensityLossFactor = 5 },
    [9] = { "Mesh_flash", Vector( 0, 0.2, 15.4), Angle( 0, 90, 0 ), "models/supermighty/2021_passat/lights/p_turn", DrawMaterial = "photon/common/glow_gradient_a", },--IntensityGainFactor = 5, IntensityLossFactor = 5 },
    [10] = { "Mesh_flash", Vector( 0, -0.05, 15.4), Angle( 0, 90, 0 ), "models/supermighty/2021_passat/lights/dr_turn", DrawMaterial = "photon/common/glow_gradient_a", }, --IntensityGainFactor = 5, IntensityLossFactor = 5 },
    [11] = { "Mesh_flash", Vector( 0, -0.05, 15.4), Angle( 0, 90, 0 ), "models/supermighty/2021_passat/lights/pr_turn", DrawMaterial = "photon/common/glow_gradient_a", }, --IntensityGainFactor = 5, IntensityLossFactor = 5 },
    [12] = { "Mesh_static", Vector( 0, -0.05, 15.4), Angle( 0, 90, 0 ), "models/supermighty/2021_passat/lights/dr_rev", DrawMaterial = "photon/common/glow_gradient_a", }, --IntensityGainFactor = 5, IntensityLossFactor = 5 },
    [13] = { "Mesh_static", Vector( 0, -0.05, 15.4), Angle( 0, 90, 0 ), "models/supermighty/2021_passat/lights/pr_rev", DrawMaterial = "photon/common/glow_gradient_a", }, --IntensityGainFactor = 5, IntensityLossFactor = 5 },
    [14] = { "Mesh_static", Vector( 0, 0.2, 15.4), Angle( 0, 90, 0 ), "models/supermighty/2021_passat/lights/d_low", DrawMaterial = "photon/common/glow_gradient_a", }, --IntensityGainFactor = 5, IntensityLossFactor = 5 },
    [15] = { "Mesh_static", Vector( 0, 0.2, 15.4), Angle( 0, 90, 0 ), "models/supermighty/2021_passat/lights/p_low", DrawMaterial = "photon/common/glow_gradient_a", }, --IntensityGainFactor = 5, IntensityLossFactor = 5 },


}

COMPONENT.StateMap = "[W] 1 2 12 13 14 15 [R] 3 4 5 6 7 [~A] 8 9 10 11 "

local sequence = Photon2.SequenceBuilder.New

COMPONENT.Segments = {
    ["Marker"] = {
        Frames = {
            [1] = "1 2 3 4",
        },
        Sequences = {
            ON = {
                1
            },
        }
    },
    ["Turn_L"] = {
        Frames = {
            [1] = "8 10",
        },
        Sequences = {
            ON = sequence():Alternate( 1, 0, 11 ),
        }
    },
    ["Turn_R"] = {
        Frames = {
            [1] = "9 11",
        },
        Sequences = {
            ON = sequence():Alternate( 1, 0, 11 ),
        }
    },
    ["Reverse"] = {
        Frames = {
            [1] = "12 13",
        },
        Sequences = {
            ON = {
                1
            },
        }
    },
    ["Brake_L"] = {
        Frames = {
            [1] = "5",
        },
        Sequences = {
            ON = {
                1
            },
        }
    },
    ["Brake_R"] = {
        Frames = {
            [1] = "6",
        },
        Sequences = {
            ON = {
                1
            },
        }
    },
    ["Brake_C"] = {
        Frames = {
            [1] = "7",
        },
        Sequences = {
            ON = {
                1
            },
        }
    },
    ["Highbeam_L"] = {
        Frames = {
            [1] = "14 15",
            [2] = "14",
            [3] = "15",
        },
        Sequences = {
            ON = {
                1
            },
            FLASH = {
                2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3
            }
        }
    },
}

COMPONENT.Inputs = {
    ["Vehicle.Signal"] = {
        ["LEFT"] = {
         Turn_L = "ON",
        },
        ["RIGHT"] = {
            Turn_R = "ON",
           },
           ["HAZARD"] = {
            Turn_R = "ON",
            Turn_L = "ON",
           },
    }, 
   ["Vehicle.Lights"] = {
       ["PARKING"] = {
        Marker = "ON",
        Highbeam_L = "ON",
       -- Marker2 = "ON",
       },
       ["HEADLIGHTS"] = {
        Marker = "ON",
        Highbeam_L = "ON",
       },
   },
   ["Vehicle.Transmission"] = {
    ["REVERSE"] = {
        Reverse = "ON",
        }
    },
   ["Vehicle.Brake"] = {
    ["BRAKE"] = {
     Brake_L = "ON",
     Brake_R = "ON",
     Brake_C = "ON",
    },  
},
["Emergency.Warning"] = {
    ["999"] = {
        Highbeam_L = "FLASH",
    }
},
}