local V = {
			Name = "Dodge RAM SRT10", 
			Class = "prop_vehicle_jeep_old",
			Category = "TDM Cars",
			Author = "TheDanishMaster, freemmaann, Turn 10",
			Information = "A drivable Dodge RAM SRT10 by TheDanishMaster",
				Model = "models/tdmcars/dodgeram.mdl",
			//Vehicle Controller
			VC_Lights = { //Pos can be a simple Vector() relative to the vehicle or an attachment name, else is self explanatory, can be an infinite amount of these.
						{Pos = Vector(37.8, -109.3, 35.9), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.5, DynLight = true, ReverseColor = "255 255 255"},
						{Pos = Vector(-37.8, -109.3, 35.9), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.5, DynLight = true, ReverseColor = "255 255 255"},

						{Pos = Vector(38.2, -109, 40.4), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.8, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0", BlinkersColor = "255 0 0"},
						{Pos = Vector(-38.2, -109, 40.4), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.8, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0", BlinkersColor = "255 0 0"},
						{Pos = Vector(38.2, -109, 45.7), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.8, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0", BlinkersColor = "255 0 0"},
						{Pos = Vector(-38.2, -109, 45.7), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.8, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0", BlinkersColor = "255 0 0"},
						{Pos = Vector(3.9, -20.1, 77.1), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.3, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
						{Pos = Vector(-3.9, -20.1, 77.1), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.3, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
						{Pos = Vector(0, -20.1, 77.1), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.3, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0"},
						{Pos = Vector(38.1, 92.9, 38.2), Mat = "sprites/glow1.vmt", Alpha = 220, Size = 0.6, DynLight = true, BlinkersColor ="255 130 0"},
						{Pos = Vector(-38.1, 92.9, 38.2), Mat = "sprites/glow1.vmt", Alpha = 220, Size = 0.6, DynLight = true, BlinkersColor = "255 130 0"},
						{Pos = Vector(33.5, 103.4, 20.1), Mat = "sprites/glow1.vmt", Alpha = 220, Size = 0.7, DynLight = true, NormalColor ="255 255 255"},
						{Pos = Vector(-33.5, 103.4, 20.1), Mat = "sprites/glow1.vmt", Alpha = 220, Size = 0.7, DynLight = true, NormalColor = "255 255 255"},
						{Pos = Vector(-16.4, 36.9, 53.8), Mat = "sprites/glow1.vmt", Alpha = 220, Size = 0.1, DynLight = false, BlinkersColor ="255 130 0", RightBlinker = true },
						{Pos = Vector(-24.7, 36.9, 53.8), Mat = "sprites/glow1.vmt", Alpha = 220, Size = 0.1, DynLight = false, BlinkersColor = "255 130 0"},

						{Pos = Vector(32.4, 92, 38.2), Size = 1, GlowSize = 1.5, HeadLightAngle = Angle(5, 85, 0)},
						{Pos = Vector(-32.4, 92, 38.2), Size = 1, GlowSize = 1.5, HeadLightAngle = Angle(5, 95, 0)}
						},
			VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
							{Pos = Vector(20, 8, 25), Ang = Angle(0, 0, 8), EnterRange = 80, ExitAng = Angle(0, -90, 0), Model = "models/nova/jeep_seat.mdl", ModelOffset = Vector(0, 0, -0.5), Hide = true, DoorSounds = true},
							},
			VC_Horn = {Sound = "vehicles/vc_horn_light.wav", Pitch = 100, Looping = false}, //Horn sound the car will use.
			VC_Exhaust = { //Exhaust effect, only active when engine is on, can be infinite amount.
						{Pos = Vector(22.3, -114, 16), Ang = Angle(0,0,80), EffectIdle = "Exhaust", EffectStress = "Exhaust"}, //Pos and Ang are relative to the vehicle, Pos - a simple vector or an attachment name, effect has to be a looping particle effect.
						{Pos = Vector(27.5, -114, 16), Ang = Angle(0,0,90), EffectIdle = "Exhaust", EffectStress = "Exhaust"}, //Pos and Ang are relative to the vehicle, Pos - a simple vector or an attachment name, effect has to be a looping particle effect.
						},
			VC_Exhaust_Dissipate = true, //Remove the exhaust effect when car reaches certain velocity.
			//
				KeyValues = {
							vehiclescript	=	"scripts/vehicles/TDMCars/dodgeram.txt"
							}
			}
list.Set("Vehicles", "dodgeramtdm", V)