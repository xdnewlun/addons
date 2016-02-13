local V = {
			Name = "Volkswagen Camper 1965", 
			Class = "prop_vehicle_jeep",
			Category = "TDM Cars",
			Author = "TheDanishMaster, Ubisoft",
			Information = "The Volkswagen Camper 1965, gmod-able by TDM",
			Model = "models/tdmcars/vw_camper65.mdl",
			KeyValues = {
						vehiclescript	=	"scripts/vehicles/TDMCars/vwcamper.txt"
						}
			}
list.Set("Vehicles", "vwcampertdm", V)



































if SERVER then
local i = 0
local ToggleIt = true
local function TDMCamperDoors(ply,key)
        for k,v in pairs(ents.FindByClass("prop_vehicle_jeep*")) do
                        if v:GetModel() == "models/tdmcars/vw_camper65.mdl" then
                if IsValid(v:GetDriver()) then
                        if (key == IN_RIGHT) then
                                if ToggleIt then
																v:EmitSound("buttons/latchunlocked2.wav", 80, 90 )
                                                                timer.Create( "open", 0.01, 50, function()
                                                                        i = i + 0.02
                                                                        v:SetPoseParameter("doors_pose", i)
                                                                end)
                                                                timer.Destroy("close")
                                                                ToggleIt = false
                                                                else
                                                                timer.Create("close",0.01, 50, function()
                                                                        i = i - 0.02
                                                                        v:SetPoseParameter("doors_pose", i)
                                                                end)
                                                                ToggleIt = true
                                                                timer.Destroy("open")
                              end
                        end
                end
                        end
                end
        end
hook.Add("KeyPress", "TDMCamper65_OpenDoors", TDMCamperDoors)
end