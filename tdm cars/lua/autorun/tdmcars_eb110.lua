local V = {
			Name = "Bugatti EB110", 
			Class = "prop_vehicle_jeep",
			Category = "TDM Cars",
			Author = "TheDanishMaster, Turn 10",
			Information = "A drivable Bugatti EB110 by TheDanishMaster",
				Model = "models/tdmcars/bug_eb110.mdl",
						VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
						{Pos = Vector(17.5, 3, 13), Ang = Angle(0, 0, 8), EnterRange = 80, ExitAng = Angle(0, -90, 0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12, 0, 4), Hide = true, DoorSounds = true, RadioControl = true}
						},	
							KeyValues = {
							vehiclescript	=	"scripts/vehicles/TDMCars/eb110.txt"
							}
			}
list.Set("Vehicles", "eb110tdm", V)