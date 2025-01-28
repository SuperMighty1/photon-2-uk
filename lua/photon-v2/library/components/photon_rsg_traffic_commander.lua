if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent()

COMPONENT.Author = "Photon"

COMPONENT.Credits = {
	Model = "mighters",
	Code = "mighters"
}

COMPONENT.PrintName = [[RSG Traffic Commander]]

COMPONENT.Model = "models/supermighty/props/rsg_traffic_commander.mdl"


COMPONENT.Templates = {
	["Mesh"] = {
		Mesh_static = {
			Model = "models/supermighty/photon/mesh/rsg_mesh.mdl",
            Scale = 1,
			DeactivationState = "~OFF",
			IntensityGainFactor = 1,
			IntensityLossFactor = 1000,
		},
	}
}

COMPONENT.StateMap = "[A] 81 82 83 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80"

COMPONENT.Elements = {
	[1] = { "Mesh_static", Vector( -0.5, 0, 0 ), Angle( 0, 180, 0 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/1", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/1", },
	[2] = { "Mesh_static", Vector( -0.5, 0, 0 ), Angle( 0, 180, 0 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/2", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/2", },
	[3] = { "Mesh_static", Vector( -0.5, 0, 0 ), Angle( 0, 180, 0 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/3", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/3", },
	[4] = { "Mesh_static", Vector( -0.5, 0, 0 ), Angle( 0, 180, 0 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[5] = { "Mesh_static", Vector( -0.5, -0.7, 0 ), Angle( 0, 180, 0 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[6] = { "Mesh_static", Vector( -0.5, -1.36, 0 ), Angle( 0, 180, 0 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[7] = { "Mesh_static", Vector( -0.5, -2, 0 ), Angle( 0, 180, 0 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[8] = { "Mesh_static", Vector( -0.5, -2.7, 0 ), Angle( 0, 180, 0 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[9] = { "Mesh_static", Vector( -0.5, -3.31, 0 ), Angle( 0, 180, 0 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[10] = { "Mesh_static", Vector( -0.5, -3.97, 0 ), Angle( 0, 180, 0 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[11] = { "Mesh_static", Vector( -0.5, -4.65, 0 ), Angle( 0, 180, 0 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[12] = { "Mesh_static", Vector( -0.5, -5.35, 0 ), Angle( 0, 180, 0 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[13] = { "Mesh_static", Vector( -0.5, -6, 0 ), Angle( 0, 180, 0 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[14] = { "Mesh_static", Vector( -0.5, -6.7, 0 ), Angle( 0, 180, 0 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[15] = { "Mesh_static", Vector( -0.5, -7.35, 0 ), Angle( 0, 180, 0 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[16] = { "Mesh_static", Vector( -0.5, -8.05, 0 ), Angle( 0, 180, 0 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[17] = { "Mesh_static", Vector( -0.5, -8.7, 0 ), Angle( 0, 180, 0 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[18] = { "Mesh_static", Vector( -0.5, -9.34, 0 ), Angle( 0, 180, 0 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[19] = { "Mesh_static", Vector( -0.5, -10, 0 ), Angle( 0, 180, 0 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[20] = { "Mesh_static", Vector( -0.5, -10.72, 0 ), Angle( 0, 180, 0 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[21] = { "Mesh_static", Vector( -0.5, -11.4, 0 ), Angle( 0, 180, 0 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[22] = { "Mesh_static", Vector( -0.5, -12.05, 0 ), Angle( 0, 180, 0 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[23] = { "Mesh_static", Vector( -0.5, -12.72, 0 ), Angle( 0, 180, 0 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[24] = { "Mesh_static", Vector( -0.5, -13.4, 0 ), Angle( 0, 180, 0 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[25] = { "Mesh_static", Vector( -0.5, -14.06, 0 ), Angle( 0, 180, 0 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[26] = { "Mesh_static", Vector( -0.5, -14.72, 0 ), Angle( 0, 180, 0 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[27] = { "Mesh_static", Vector( -0.5, -15.42, 0 ), Angle( 0, 180, 0 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[28] = { "Mesh_static", Vector( -0.5, -16.1, 0 ), Angle( 0, 180, 0 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[29] = { "Mesh_static", Vector( -0.5, -16.72, 0 ), Angle( 0, 180, 0 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[30] = { "Mesh_static", Vector( -0.5, -17.42, 0 ), Angle( 0, 180, 0 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[31] = { "Mesh_static", Vector( -0.5, -18.1, 0 ), Angle( 0, 180, 0 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[32] = { "Mesh_static", Vector( -0.5, -18.72, 0 ), Angle( 0, 180, 0 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[33] = { "Mesh_static", Vector( -0.5, -19.42, 0 ), Angle( 0, 180, 0 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[34] = { "Mesh_static", Vector( -0.5, -20.1, 0 ), Angle( 0, 180, 0 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[35] = { "Mesh_static", Vector( -0.5, -20.72, 0 ), Angle( 0, 180, 0 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[36] = { "Mesh_static", Vector( -0.5, -21.42, 0 ), Angle( 0, 180, 0 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[37] = { "Mesh_static", Vector( -0.5, -22.1, 0 ), Angle( 0, 180, 0 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/5", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/5", },
	[38] = { "Mesh_static", Vector( -0.5, -22.72, 0 ), Angle( 0, 180, 0 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/6", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/6", },
	[39] = { "Mesh_static", Vector( -0.5, -23.42, 0 ), Angle( 0, 180, 0 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/7", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/7", },
	[40] = { "Mesh_static", Vector( -0.5, 0, 0 ), Angle( 0, 180, 180 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/1", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/1", },
	[41] = { "Mesh_static", Vector( -0.5, 0, 0 ), Angle( 0, 180, 180 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/2", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/2", },
	[42] = { "Mesh_static", Vector( -0.5, 0, 0 ), Angle( 0, 180, 180 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/3", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/3", },
	[43] = { "Mesh_static", Vector( -0.5, 0, 0 ), Angle( 0, 180, 180 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[44] = { "Mesh_static", Vector( -0.5, 0.7, 0 ), Angle( 0, 180, 180 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[45] = { "Mesh_static", Vector( -0.5, 1.36, 0 ), Angle( 0, 180, 180 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[46] = { "Mesh_static", Vector( -0.5, 2, 0 ), Angle( 0, 180, 180 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[47] = { "Mesh_static", Vector( -0.5, 2.7, 0 ), Angle( 0, 180, 180 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[48] = { "Mesh_static", Vector( -0.5, 3.31, 0 ), Angle( 0, 180, 180 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[49] = { "Mesh_static", Vector( -0.5, 3.97, 0 ), Angle( 0, 180, 180 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[50] = { "Mesh_static", Vector( -0.5, 4.65, 0 ), Angle( 0, 180, 180 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[51] = { "Mesh_static", Vector( -0.5, 5.35, 0 ), Angle( 0, 180, 180 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[52] = { "Mesh_static", Vector( -0.5, 6, 0 ), Angle( 0, 180, 180 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[53] = { "Mesh_static", Vector( -0.5, 6.7, 0 ), Angle( 0, 180, 180 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[54] = { "Mesh_static", Vector( -0.5, 7.35, 0 ), Angle( 0, 180, 180 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[55] = { "Mesh_static", Vector( -0.5, 8.05, 0 ), Angle( 0, 180, 180 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[56] = { "Mesh_static", Vector( -0.5, 8.7, 0 ), Angle( 0, 180, 180 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[57] = { "Mesh_static", Vector( -0.5, 9.34, 0 ), Angle( 0, 180, 180 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[58] = { "Mesh_static", Vector( -0.5, 10, 0 ), Angle( 0, 180, 180 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[59] = { "Mesh_static", Vector( -0.5, 10.72, 0 ), Angle( 0, 180, 180 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[60] = { "Mesh_static", Vector( -0.5, 11.4, 0 ), Angle( 0, 180, 180 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[61] = { "Mesh_static", Vector( -0.5, 12.05, 0 ), Angle( 0, 180, 180 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[62] = { "Mesh_static", Vector( -0.5, 12.72, 0 ), Angle( 0, 180, 180 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[63] = { "Mesh_static", Vector( -0.5, 13.4, 0 ), Angle( 0, 180, 180 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[64] = { "Mesh_static", Vector( -0.5, 14.06, 0 ), Angle( 0, 180, 180 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[65] = { "Mesh_static", Vector( -0.5, 14.72, 0 ), Angle( 0, 180, 180 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[66] = { "Mesh_static", Vector( -0.5, 15.42, 0 ), Angle( 0, 180, 180 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[67] = { "Mesh_static", Vector( -0.5, 16.1, 0 ), Angle( 0, 180, 180 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[68] = { "Mesh_static", Vector( -0.5, 16.72, 0 ), Angle( 0, 180, 180 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[69] = { "Mesh_static", Vector( -0.5, 17.42, 0 ), Angle( 0, 180, 180 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[70] = { "Mesh_static", Vector( -0.5, 18.1, 0 ), Angle( 0, 180, 180 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[71] = { "Mesh_static", Vector( -0.5, 18.72, 0 ), Angle( 0, 180, 180 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[72] = { "Mesh_static", Vector( -0.5, 19.42, 0 ), Angle( 0, 180, 180 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[73] = { "Mesh_static", Vector( -0.5, 20.1, 0 ), Angle( 0, 180, 180 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[74] = { "Mesh_static", Vector( -0.5, 20.72, 0 ), Angle( 0, 180, 180 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[75] = { "Mesh_static", Vector( -0.5, 21.42, 0 ), Angle( 0, 180, 180 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/4", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/4", },
	[76] = { "Mesh_static", Vector( -0.5, 22.1, 0 ), Angle( 0, 180, 180 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/5", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/5", },
	[77] = { "Mesh_static", Vector( -0.5, 22.72, 0 ), Angle( 0, 180, 180 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/6", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/6", },
	[78] = { "Mesh_static", Vector( -0.5, 23.42, 0 ), Angle( 0, 180, 180 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/7", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/7", },
    
	[79] = { "Mesh_static", Vector( -0.5, 0, 0 ), Angle( 0, 180, 0 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/move", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/move", },
	[80] = { "Mesh_static", Vector( -0.5, 0, 0 ), Angle( 0, 180, 0 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/right", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/right", },
	[81] = { "Mesh_static", Vector( -0.5, 0, 0 ), Angle( 0, 180, 0 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/left", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/left", },

	[82] = { "Mesh_static", Vector( -0.5, 0, 0 ), Angle( 0, 180, 0 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/police", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/police", },
	[83] = { "Mesh_static", Vector( -0.5, 0, 0 ), Angle( 0, 180, 0 ), "models/supermighty/photon/rsg_commander/mesh/led", DrawMaterial = "models/supermighty/photon/rsg_commander/mesh/slow", BloomMaterial = "models/supermighty/photon/rsg_commander/mesh/slow", },

}

local sequence = Photon2.SequenceBuilder.New

COMPONENT.ElementGroups = {
}

COMPONENT.Segments = {
	TA = {
		Frames = {
			[1] = "1",
			[2] = "2",
			[3] = "3",
			[4] = "4",
			[5] = "5",
			[6] = "6",
			[7] = "7",
			[8] = "8",
			[9] = "9",
			[10] = "10",
			[11] = "11",
			[12] = "12",
			[13] = "13",
			[14] = "14",
			[15] = "15",
			[16] = "16",
			[17] = "17",
			[18] = "18",
			[19] = "19",
			[20] = "20",
			[21] = "21",
			[22] = "22",
			[23] = "23",
			[24] = "24",
			[25] = "25",
			[26] = "26",
			[27] = "26",
			[28] = "28",
			[29] = "29",
			[30] = "30",
			[31] = "31",
			[32] = "32",
			[33] = "33",
			[34] = "34",
			[35] = "35",
			[36] = "36",
			[37] = "37",
			[38] = "38",
			[39] = "39",
			[40] = "40",
			[41] = "41",
			[42] = "42",
			[43] = "43",
			[44] = "44",
			[45] = "45",
			[46] = "46",
			[47] = "47",
			[48] = "48",
			[49] = "49",
			[50] = "50",
			[51] = "51",
			[52] = "52",
			[53] = "53",
			[54] = "54",
			[55] = "55",
			[56] = "56",
			[57] = "57",
			[58] = "58",
			[59] = "59",
			[60] = "60",
			[61] = "61",
			[62] = "62",
			[63] = "63",
			[64] = "64",
			[65] = "65",
			[66] = "66",
			[67] = "67",
			[68] = "68",
			[69] = "69",
			[70] = "70",
			[71] = "71",
			[72] = "72",
			[73] = "73",
			[74] = "74",
			[75] = "75",
			[76] = "76",
			[77] = "77",
			[78] = "78",
			[79] = "79",
			[80] = "80",
			[81] = "81",
			[82] = "82",
			[83] = "83",
		},
		Sequences = {
			["POLSLOW"] = { 82, 82, 82, 82, 82, 82, 82, 82, 82, 82, 83, 83, 83, 83, 83, 83, 83, 83, 83, 83, },
			["RIGHT"] = sequence():Sequential( 1, 39 ):Stretch( 1 ):Add( 79 ):Hold( 8 ):Add( 80 ):Hold( 8 ),
			["LEFT"] = sequence():Sequential( 40, 79 ):Stretch( 1 ):Add( 79 ):Hold( 8 ):Add( 81 ):Hold( 8 ),
		}
	}
}

COMPONENT.Inputs = {
	["Emergency.Warning"] = {
		["999"] = {
			TA = "POLSLOW",
		},
	},
	["Emergency.Directional"] = {
		["MB_RIGHT"] = {
			TA = "RIGHT",
		},
		["MB_LEFT"] = {
			TA = "LEFT",
		},
		["MB_SLOW"] = {
			TA = "POLSLOW",
		},
	},
}