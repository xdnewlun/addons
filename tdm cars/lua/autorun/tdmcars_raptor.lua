local V = {
			Name = "Ford Raptor SVT", 
			Class = "prop_vehicle_jeep",
			Category = "TDM Cars",
			Author = "TheDanishMaster, Turn 10",
			Information = "A drivable Ford Raptor SVT by TheDanishMaster",
				Model = "models/tdmcars/for_raptor.mdl",
						VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
						{Pos = Vector(22, 19, 41), Ang = Angle(0, 0, 8), EnterRange = 80, ExitAng = Angle(0, -90, 0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12, 0, 4), Hide = true, DoorSounds = true, RadioControl = true}

						},					
							
							KeyValues = {
							vehiclescript	=	"scripts/vehicles/TDMCars/raptorsvt.txt"
							}
			}
list.Set("Vehicles", "raptorsvttdm", V)