local V = {
			Name = "Kenworth T800", 
			Class = "prop_vehicle_jeep",
			Category = "TDM Trucks",
			Author = "TheDanishMaster, SCS Software",
			Information = "A drivable Kenworth T800 by TheDanishMaster",
			Model = "models/tdmcars/trucks/kenworth_t800.mdl",		
			VC_Lights = { //Pos can be a simple Vector() relative to the vehicle or an attachment name, else is self explanatory, can be an infinite amount of these.

						{Pos = Vector(-7.922, -183.737, 34.256), Mat = "sprites/light_glow02.vmt", Alpha = 220, Size = 0.5, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0", BlinkersColor = "255 0 0"},				
						{Pos = Vector(7.922, -183.737, 34.256), Mat = "sprites/light_glow02.vmt", Alpha = 220, Size = 0.5, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0", BlinkersColor = "255 0 0"},				
						{Pos = Vector(-7.922, -183.075, 27.024), Mat = "sprites/light_glow02.vmt", Alpha = 220, Size = 0.5, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0", BlinkersColor = "255 0 0"},				
						{Pos = Vector(7.922, -183.075, 27.024), Mat = "sprites/light_glow02.vmt", Alpha = 220, Size = 0.5, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0", BlinkersColor = "255 0 0"},				
						{Pos = Vector(-0.053, -183.075, 26.625), Mat = "sprites/light_glow02.vmt", Alpha = 220, Size = 0.5, DynLight = true, ReverseColor = "255 255 255"},					
						{Pos = Vector(-8.763, 98.983, 127.575), Mat = "sprites/light_glow02.vmt", Alpha = 220, Size = 0.3, DynLight = true, NormalColor = "255 90 0"},
						{Pos = Vector(-0.053, 100.358, 127.711), Mat = "sprites/light_glow02.vmt", Alpha = 220, Size = 0.3, DynLight = true, NormalColor = "255 90 0"},
						{Pos = Vector(8.763, 98.983, 127.575), Mat = "sprites/light_glow02.vmt", Alpha = 220, Size = 0.3, DynLight = true, NormalColor = "255 90 0"},
						{Pos = Vector(-27.963, 97.849, 127.849), Mat = "sprites/light_glow02.vmt", Alpha = 220, Size = 0.3, DynLight = true, NormalColor = "255 90 0"},
						{Pos = Vector(27.963, 97.849, 127.849), Mat = "sprites/light_glow02.vmt", Alpha = 220, Size = 0.3, DynLight = true, NormalColor = "255 90 0"},
						{Pos = Vector(-42.269, 135.686, 64.784), Mat = "sprites/light_glow02.vmt", Alpha = 220, Size = 0.5, DynLight = true, NormalColor = "255 90 0", BlinkersColor = "255 90 0"},
						{Pos = Vector(42.269, 135.686, 64.784), Mat = "sprites/light_glow02.vmt", Alpha = 220, Size = 0.5, DynLight = true, NormalColor = "255 90 0", BlinkersColor = "255 90 0"},
						{Pos = Vector(-43.208, 168.045, 47.632), Mat = "sprites/light_glow02.vmt", Alpha = 255, Size = 0.5, DynLight = true, NormalColor = "255 255 255"},
						{Pos = Vector(43.208, 168.045, 47.632), Mat = "sprites/light_glow02.vmt", Alpha = 255, Size = 0.5, DynLight = true, NormalColor = "255 255 255"},
						{Pos = Vector(-40.309, 174.443, 29.121), Mat = "sprites/light_glow02.vmt", Alpha = 255, Size = 0.5, DynLight = true, NormalColor = "255 255 255"},
						{Pos = Vector(40.309, 174.443, 29.121), Mat = "sprites/light_glow02.vmt", Alpha = 255, Size = 0.5, DynLight = true, NormalColor = "255 255 255"},
						{Pos = Vector(-36.063, 168.045, 47.632), Size = 1, GlowSize = 1, HeadLightAngle = Angle(-5, 95, 0)},
						{Pos = Vector(36.063, 168.045, 47.632), Size = 1, GlowSize = 1, HeadLightAngle = Angle(-5, 85, 0)}
						},
			VC_Exhaust_Dissipate = true,
			VC_Exhaust = { //Exhaust effect, only active when engine is on, can be infinite amount.
						{Pos = Vector(25.269, -23.788, 155.439), Ang = Angle(0,0,90), EffectIdle = "Exhaust", EffectStress = "Exhaust"}
						},
			VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
						{Pos = Vector(16.96, 35.56, 76.77), Ang = Angle(0, 0, 8), EnterRange = 80, ExitAng = Angle(0, -90, 0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12, 0, 4), Hide = true, DoorSounds = true, RadioControl = true}
						},
			VC_Horn = {Sound = "vehicles/tdmcars/miscsounds/truck_horn1.wav", Pitch = 90, Looping = false}, //Horn sound the car will use.
			KeyValues = {
							vehiclescript	=	"scripts/vehicles/TDMCars/kwt800.txt"
							}
			}
list.Set("Vehicles", "kwt800tdm", V)

sound.Add( 
{
    name = "tdm_truckdoor_open",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 90,
    sound = "vehicles/tdmcars/miscsounds/truck_open.wav"
} )
sound.Add( 
{
    name = "tdm_truckdoor_close",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 90,
    sound = "vehicles/tdmcars/miscsounds/truck_close.wav"
} )