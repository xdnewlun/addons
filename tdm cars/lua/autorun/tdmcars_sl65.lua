local V = {
			Name = "Mercedes SL65 AMG", 
			Class = "prop_vehicle_jeep",
			Category = "TDM Cars",
			Author = "TheDanishMaster, freemmaann, Turn 10",
			Information = "A drivable Mercedes SL65 AMG by TheDanishMaster",
			Model = "models/tdmcars/sl65amg.mdl",
			//Vehicle Controller
			VC_Lights = { //Pos can be a simple Vector() relative to the vehicle or an attachment name, else is self explanatory, can be an infinite amount of these.
						{Pos = Vector(-29.5, -95.9, 35.3), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.8, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
						{Pos = Vector(29.5, -95.9, 35.3), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.8, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
						{Pos = Vector(-5.4, -98.6, 40.2), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.2, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
						{Pos = Vector(5.4, -98.6, 40.2), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.2, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
						{Pos = Vector(0, -98.6, 40.2), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.2, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},

						{Pos = Vector(-26.6, -96, 31.9), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.6, DynLight = true, ReverseColor = "255 255 255"},
						{Pos = Vector(26.6, -96, 31.9), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.6, DynLight = true, ReverseColor = "255 255 255"},

						{Pos = Vector(-30.6, -95.6, 29.4), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.5, DynLight = true, BlinkersColor = "255 130 0"},
						{Pos = Vector(30.6, -95.6, 29.4), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.5, DynLight = true, BlinkersColor = "255 130 0"},
						{Pos = Vector(-23, -96.2, 28.8), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.5, DynLight = true, BlinkersColor = "255 130 0"},
						{Pos = Vector(23, -96.2, 28.8), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.5, DynLight = true, BlinkersColor = "255 130 0"},

						{Pos = Vector(-34.4, 78.7, 31.9), Mat = "sprites/glow1.vmt", Alpha = 220, Size = 0.3, DynLight = true, BlinkersColor = "255 130 0"},
						{Pos = Vector(34.4, 78.7, 31.9), Mat = "sprites/glow1.vmt", Alpha = 220, Size = 0.3, DynLight = true, BlinkersColor = "255 130 0"},
						{Pos = Vector(-27.9, 87.5, 26.4), Mat = "sprites/glow1.vmt", Alpha = 220, Size = 0.6, DynLight = true, NormalColor = "169 215 255"},
						{Pos = Vector(27.9, 87.5, 26.4), Mat = "sprites/glow1.vmt", Alpha = 220, Size = 0.6, DynLight = true, NormalColor = "169 215 255"},
						{Pos = Vector(-33.1, 82.3, 27.5), Size = 1, GlowSize = 1, HeadLightAngle = Angle(-5, 95, 0)},
						{Pos = Vector(33.1, 82.3, 27.5), Size = 1, GlowSize = 1, HeadLightAngle = Angle(-5, 85, 0)}
						},
			VC_Exhaust = { //Exhaust effect, only active when engine is on, can be infinite amount.
						{Pos = Vector(-23.5, -97.3, 11.7), Ang = Angle(0,0,90), EffectIdle = "Exhaust", EffectStress = "Exhaust"},
						{Pos = Vector(23.5, -97.3, 11.7), Ang = Angle(0,0,90), EffectIdle = "Exhaust", EffectStress = "Exhaust"}
						},
			VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
						{Pos = Vector(17.5, -7, 17), Ang = Angle(0, 0, 8), EnterRange = 80, ExitAng = Angle(0, -90, 0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12, 0, 4), Hide = true, DoorSounds = true, RadioControl = true}
						},
			VC_Horn = {Sound = "vehicles/vc_horn_light.wav", Pitch = 100, Looping = false}, //Horn sound the car will use.
						
			KeyValues = {
							vehiclescript	=	"scripts/vehicles/TDMCars/sl65amg.txt"
							}
			}
list.Set("Vehicles", "sl65amgtdm", V)