local V = {
			Name = "Cadillac Escalade 2012", 
			Class = "prop_vehicle_jeep",
			Category = "TDM Cars",
			Author = "TheDanishMaster, freemmaann, Turn 10",
			Information = "A drivable Cadillac Escalade 2012 by TheDanishMaster",
			Model = "models/tdmcars/cad_escalade.mdl",
			//Vehicle Controller
			VC_Lights = { //Pos can be a simple Vector() relative to the vehicle or an attachment name, else is self explanatory, can be an infinite amount of these.
						{Pos = Vector(-38, -121, 53), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.6, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0", BlinkersColor = "255 0 0"},
						{Pos = Vector(38, -121, 53), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.6, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0", BlinkersColor = "255 0 0"},
						{Pos = Vector(-39, -121, 47), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.6, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0", BlinkersColor = "255 0 0"},
						{Pos = Vector(39, -121, 47), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.6, DynLight = true, NormalColor = "255 0 0", BrakeColor = "255 0 0", BlinkersColor = "255 0 0"},
						{Pos = Vector(-34.5, 111, 41.5), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.8, DynLight = true, NormalColor = "255 255 255"},
						{Pos = Vector(34.5, 111, 41.5), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.8, DynLight = true, NormalColor = "255 255 255"},
						{Pos = Vector(-29.4, 115, 20.7), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.6, DynLight = true, NormalColor = "255 255 255"},
						{Pos = Vector(29.4, 115, 20.7), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.6, DynLight = true, NormalColor = "255 255 255"},

						{Pos = Vector(-38, -121, 40), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.4, DynLight = true, ReverseColor = "255 255 255"},
						{Pos = Vector(38, -121, 40), Mat = "sprites/glow1.vmt", Alpha = 180, Size = 0.4, DynLight = true, ReverseColor = "255 255 255"},
						{Pos = Vector(-41, 107, 42), Mat = "sprites/glow1.vmt", Alpha = 220, Size = 0.2, DynLight = true, BlinkersColor = "255 130 0"},
						{Pos = Vector(41, 107, 42), Mat = "sprites/glow1.vmt", Alpha = 220, Size = 0.2, DynLight = true, BlinkersColor = "255 130 0"},
						{Pos = Vector(-41, 106, 46), Mat = "sprites/glow1.vmt", Alpha = 220, Size = 0.2, DynLight = true, BlinkersColor = "255 130 0"},
						{Pos = Vector(41, 106, 46), Mat = "sprites/glow1.vmt", Alpha = 220, Size = 0.2, DynLight = true, BlinkersColor = "255 130 0"},
						{Pos = Vector(-41, 108, 38), Mat = "sprites/glow1.vmt", Alpha = 220, Size = 0.2, DynLight = true, BlinkersColor = "255 130 0"},
						{Pos = Vector(41, 108, 38), Mat = "sprites/glow1.vmt", Alpha = 220, Size = 0.2, DynLight = true, BlinkersColor = "255 130 0"},
						{Pos = Vector(-53.5, 36, 60.8), Mat = "sprites/glow1.vmt", Alpha = 220, Size = 0.1, DynLight = true, BlinkersColor = "255 130 0"},
						{Pos = Vector(53.5, 36, 60.8), Mat = "sprites/glow1.vmt", Alpha = 220, Size = 0.1, DynLight = true, BlinkersColor = "255 130 0"},
						{Pos = Vector(-36.5, 111, 21), Mat = "sprites/glow1.vmt", Alpha = 220, Size = 0.6, DynLight = true, BlinkersColor = "255 130 0", NormalColor = "255 130 0"},
						{Pos = Vector(36.5, 111, 21), Mat = "sprites/glow1.vmt", Alpha = 220, Size = 0.6, DynLight = true, BlinkersColor = "255 130 0", NormalColor = "255 130 0"},

						{Pos = Vector(-36.7, 102, 47.5), Size = 1, GlowSize = 1, HeadLightAngle = Angle(-5, 95, 0)},
						{Pos = Vector(36.7, 102, 47.5), Size = 1, GlowSize = 1, HeadLightAngle = Angle(-5, 85, 0)}
						},
			VC_Exhaust_Dissipate = true,
			VC_Exhaust = { //Exhaust effect, only active when engine is on, can be infinite amount.
						{Pos = Vector(-26.5, -123, 19), Ang = Angle(0,0,90), EffectIdle = "Exhaust", EffectStress = "Exhaust"},
						{Pos = Vector(26.5, -123, 19), Ang = Angle(0,0,90), EffectIdle = "Exhaust", EffectStress = "Exhaust"}
						},
			VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
						{Pos = Vector(18, 19, 35), Ang = Angle(0, 0, 8), EnterRange = 80, ExitAng = Angle(0, -90, 0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12, 0, 4), Hide = true, DoorSounds = true, RadioControl = true},
						{Pos = Vector(18, -30, 32), Ang = Angle(0, 0, 8), EnterRange = 80, ExitAng = Angle(0, -90, 0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12, 0, 4), Hide = true, DoorSounds = true, RadioControl = false},
						{Pos = Vector(-18, -30, 32), Ang = Angle(0, 0, 8), EnterRange = 80, ExitAng = Angle(0, -90, 0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12, 0, 4), Hide = true, DoorSounds = true, RadioControl = false},
						{Pos = Vector(14, -70, 38), Ang = Angle(0, 0, 8), EnterRange = 80, ExitAng = Angle(0, -90, 0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12, 0, 4), Hide = true, DoorSounds = true, RadioControl = false},
						{Pos = Vector(-14, -70, 38), Ang = Angle(0, 0, 8), EnterRange = 80, ExitAng = Angle(0, -90, 0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12, 0, 4), Hide = true, DoorSounds = true, RadioControl = false}
						},
			VC_Horn = {Sound = "vehicles/vc_horn_light.wav", Pitch = 100, Looping = false}, //Horn sound the car will use.
						
			KeyValues = {
							vehiclescript	=	"scripts/vehicles/TDMCars/escalade.txt"
							}
			}
list.Set("Vehicles", "escaladetdm", V)
sound.Add( 
{
    name = "tdmcrownvic_idle",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 90,
    sound = "vehicles/tdmcars/crownvic/idle.wav"
} )

sound.Add( 
{
    name = "tdmcrownvic_start",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 90,
    sound = "vehicles/tdmcars/crownvic/start.mp3"
} )

sound.Add( 
{
    name = "tdmcrownvic_reverse",
    channel = CHAN_STATIC,
    volume = 0.9,
    soundlevel = 90,
    pitchstart = 98,
	pitchend = 105,
    sound = "vehicles/tdmcars/crownvic/rev.wav"
} )

sound.Add( 
{
    name = "tdmcrownvic_firstgear",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 90,
    pitchstart = 95,
	pitchend = 104,
    sound = "vehicles/tdmcars/crownvic/first.mp3"
} )

sound.Add( 
{
    name = "tdmcrownvic_secondgear",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 90,
    pitchstart = 90,
    pitchend = 105,
    sound = "vehicles/tdmcars/crownvic/second.mp3"
} )

sound.Add( 
{
    name = "tdmcrownvic_thirdgear",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 90,
    pitchstart = 90,
    pitchend = 105,
    sound = "vehicles/tdmcars/crownvic/third.mp3"
} )

sound.Add( 
{
    name = "tdmcrownvic_fourthgear",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 90,
    pitchstart = 90,
    pitchend = 105,
    sound = "vehicles/tdmcars/crownvic/fourth_cruise.wav"
} )

sound.Add( 
{
    name = "tdmcrownvic_noshift",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 90,
    pitchstart = 85,
    pitchend = 110,
    sound = "vehicles/tdmcars/crownvic/second.mp3"
} )

sound.Add( 
{
    name = "tdmcrownvic_slowdown",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 90,
    pitchstart = 85,
    pitchend = 110,
    sound = "vehicles/tdmcars/crownvic/throttle_off.mp3"
} )