local V = {
			Name = "Bugatti Veyron SS", 
			Class = "prop_vehicle_jeep",
			Category = "TDM Cars",
			Author = "TheDanishMaster, Turn 10",
			Information = "A drivable Bugatti Veyron SS by TheDanishMaster",
				Model = "models/tdmcars/bug_veyronss.mdl",
						VC_ExtraSeats = { //Can be an infinite amount of seats, Pos and ExitPos can be a simple Vector() or an attachment name, other options are self explanatory.
						{Pos = Vector(21, 10, 19), Ang = Angle(0, 0, 8), EnterRange = 80, ExitAng = Angle(0, -90, 0), Model = "models/props_phx/carseat2.mdl", ModelOffset = Vector(12, 0, 4), Hide = true, DoorSounds = true, RadioControl = true}
						},	
							KeyValues = {
							vehiclescript	=	"scripts/vehicles/TDMCars/veyronss.txt"
							}
			}
list.Set("Vehicles", "veyronsstdm", V)