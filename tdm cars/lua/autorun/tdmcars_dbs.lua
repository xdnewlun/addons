local V = {
			Name = "Aston Martin DBS", 
			Class = "prop_vehicle_jeep",
			Category = "TDM Cars",
			Author = "TheDanishMaster, freemmaann, Turn 10",
			Information = "A drivable Aston Martin DBS by TheDanishMaster",
			Model = "models/tdmcars/dbs.mdl",
			//Vehicle Controller
			VC_Lights = { //Pos can be a simple Vector() relative to the vehicle or an attachment name, else is self explanatory, can be an infinite amount of these.
						{Pos = Vector(-28.3, -107.1, 34.9), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.2, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
						{Pos = Vector(28.3, -107.1, 34.9), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.2, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
						{Pos = Vector(-30.5, -105.7, 34.9), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.2, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
						{Pos = Vector(30.5, -105.7, 34.9), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.2, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
						{Pos = Vector(-32.7, -104.2, 34.9), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.2, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
						{Pos = Vector(32.7, -104.2, 34.9), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.2, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
						{Pos = Vector(-34.8, -102.7, 34.9), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.2, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
						{Pos = Vector(34.8, -102.7, 34.9), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.2, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
						{Pos = Vector(-36.5, -100.6, 34.9), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.2, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
						{Pos = Vector(36.5, -100.6, 34.9), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.2, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
						{Pos = Vector(-37.8, -98.9, 34.9), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.2, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
						{Pos = Vector(37.8, -98.9, 34.9), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.2, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
						{Pos = Vector(-38, -97.8, 36.3), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.2, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
						{Pos = Vector(38, -97.8, 36.3), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.2, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
						{Pos = Vector(-37.7, -97.5, 37.4), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.2, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
						{Pos = Vector(37.7, -97.5, 37.4), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.2, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
						{Pos = Vector(-36.5, -99.2, 37.9), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.2, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
						{Pos = Vector(36.5, -99.2, 37.9), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.2, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
						{Pos = Vector(-32.5, -103.1, 38.8), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.2, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
						{Pos = Vector(32.5, -103.1, 38.8), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.2, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
						{Pos = Vector(-30, -104.4, 39), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.2, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
						{Pos = Vector(30, -104.4, 39), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.2, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
						{Pos = Vector(-27.5, -105.6, 39.2), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.2, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
						{Pos = Vector(27.5, -105.6, 39.2), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.2, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
						{Pos = Vector(-20.6, -108, 39.8), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.2, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
						{Pos = Vector(20.6, -108, 39.8), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.2, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
						{Pos = Vector(-4.5, -111.9, 46.3), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.2, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
						{Pos = Vector(4.5, -111.9, 46.3), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.2, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
						{Pos = Vector(-2.7, -111.9, 46.3), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.2, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
						{Pos = Vector(2.7, -111.9, 46.3), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.2, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
						{Pos = Vector(0, -111.9, 46.3), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.2, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
						{Pos = Vector(-34.8, -101, 38.3), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.2, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
						{Pos = Vector(34.8, -101, 38.3), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.2, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
						{Pos = Vector(-24.4, -106.7, 39.6), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.2, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
						{Pos = Vector(24.4, -106.7, 39.6), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.2, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},

						{Pos = Vector(-20.1, -109.3, 34.9), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.4, DynLight = true, ReverseColor = "255 255 255"},
						{Pos = Vector(20.1, -109.3, 34.9), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.4, DynLight = true, ReverseColor = "255 255 255"},

						{Pos = Vector(-25.9, 102.2, 30.6), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.5, DynLight = true, BlinkersColor = "255 130 0"},
						{Pos = Vector(25.9, 102.2, 30.6), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.5, DynLight = true, BlinkersColor = "255 130 0"},
						{Pos = Vector(-23.4, -108.7, 34.9), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = true, BlinkersColor = "255 130 0"},
						{Pos = Vector(23.4, -108.7, 34.9), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = true, BlinkersColor = "255 130 0"},
						{Pos = Vector(-25.6, -108.2, 34.9), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = true, BlinkersColor = "255 130 0"},
						{Pos = Vector(25.6, -108.2, 34.9), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.1, DynLight = true, BlinkersColor = "255 130 0"},
						
						{Pos = Vector(-30.3, 94.5, 31.8), Mat = "sprites/glow1.vmt", Alpha = 210, Size = 0.6, DynLight = true, NormalColor = "169 215 255"},
						{Pos = Vector(30.3, 94.5, 31.8), Mat = "sprites/glow1.vmt", Alpha = 210, Size = 0.6, DynLight = true, NormalColor = "169 215 255"},
						{Pos = Vector(-35.6, 88.4, 32.3), Size = 1, GlowSize = 1, HeadLightAngle = Angle(-5, 95, 0)},
						{Pos = Vector(35.6, 88.4, 32.3), Size = 1, GlowSize = 1, HeadLightAngle = Angle(-5, 85, 0)}
						},
			VC_Exhaust = { //Exhaust effect, only active when engine is on, can be infinite amount.
						{Pos = Vector(-22.7, -108, 18.8), Ang = Angle(0,0,90), EffectIdle = "Exhaust", EffectStress = "Exhaust"},
						{Pos = Vector(22.7, -108, 18.8), Ang = Angle(0,0,90), EffectIdle = "Exhaust", EffectStress = "Exhaust"}
						},
			VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
						{Pos = Vector(19.5, -7, 19), Ang = Angle(0, 0, 8), EnterRange = 80, ExitAng = Angle(0, -90, 0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12, 0, 4), Hide = true, DoorSounds = true, RadioControl = true}
						},
			VC_Horn = {Sound = "vehicles/vc_horn_light.wav", Pitch = 100, Looping = false}, //Horn sound the car will use.
						
			KeyValues = {
							vehiclescript	=	"scripts/vehicles/TDMCars/dbs.txt"
							}
			}
list.Set("Vehicles", "dbstdm", V)