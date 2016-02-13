local V = {
			Name = "Aston Martin V12 Vantage 2010", 
			Class = "prop_vehicle_jeep",
			Category = "TDM Cars",
			Author = "TheDanishMaster, Turn 10",
			Information = "A drivable Aston Martin V12 Vantage by TheDanishMaster",
				Model = "models/tdmcars/aston_v12vantage.mdl",
						VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
						{Pos = Vector(-17, -25, 17), Ang = Angle(0, 0, 8), EnterRange = 80, ExitAng = Angle(0, -90, 0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12, 0, 4), Hide = true, DoorSounds = true, RadioControl = true}
						},							
							KeyValues = {
							vehiclescript	=	"scripts/vehicles/TDMCars/v12vantage.txt"
							}
			}
list.Set("Vehicles", "v12vantagetdm", V)