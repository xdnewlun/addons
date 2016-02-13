local V = {
			Name = "Ford F100", 
			Class = "prop_vehicle_jeep",
			Category = "TDM Cars",
			Author = "TheDanishMaster, Turn 10",
			Information = "A drivable Ford F100 by TheDanishMaster",
				Model = "models/tdmcars/for_f100.mdl",
						VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
						{Pos = Vector(16, 10, 40), Ang = Angle(0, 0, 8), EnterRange = 80, ExitAng = Angle(0, -90, 0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12, 0, 4), Hide = true, DoorSounds = true, RadioControl = false}
						},
							
							KeyValues = {
							vehiclescript	=	"scripts/vehicles/TDMCars/f100.txt"
							}
			}
list.Set("Vehicles", "f100tdm", V)