local V = {
			Name = "Mercedes-Benz 300SL Gullwing Coupe", 
			Class = "prop_vehicle_jeep",
			Category = "TDM Cars",
			Author = "TheDanishMaster, Turn 10",
			Information = "A drivable Mercedes-Benz 300SL Gullwing Coupe by TheDanishMaster",
			Model = "models/tdmcars/mer_300slgull.mdl",
					VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
						{Pos = Vector(18, -8, 16), Ang = Angle(0, 0, 8), EnterRange = 80, ExitAng = Angle(0, -90, 0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12, 0, 4), Hide = true, DoorSounds = true, RadioControl = true}
						},	
			
			KeyValues = {
							vehiclescript	=	"scripts/vehicles/TDMCars/mer300slgull.txt"
							}
			}
list.Set("Vehicles", "mer300slgulltdm", V)