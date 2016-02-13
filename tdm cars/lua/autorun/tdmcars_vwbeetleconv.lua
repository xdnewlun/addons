local V = {
			Name = "Volkswagen New Beetle Convertible", 
			Class = "prop_vehicle_jeep",
			Category = "TDM Cars",
			Author = "TheDanishMaster, Ubisoft",
			Information = "The Volkswagen New Beetle Convertible, gmod-able by TDM",
			Model = "models/tdmcars/vw_beetleconv.mdl",
			KeyValues = {
						vehiclescript	=	"scripts/vehicles/TDMCars/vwbeetleconv.txt"
						}
			}
list.Set("Vehicles", "vwbeetleconvtdm", V)


































if SERVER then
local i = 0
local ToggleIt = true
local function TDMBeetleRoof(ply,key)
        for k,v in pairs(ents.FindByClass("prop_vehicle_jeep*")) do
                        if v:GetModel() == "models/tdmcars/vw_beetleconv.mdl" then
                if IsValid(v:GetDriver()) then
                        if (key == IN_RIGHT) then
							if v:GetVelocity():Length() < 550 then
                                if ToggleIt then
                                                                timer.Create( "open", 0.01, 500, function()
                                                                        i = i + 0.02
                                                                        v:SetPoseParameter("roof_pose", i)
                                                                end)
                                                                timer.Destroy("close")
                                                                ToggleIt = false
                                                                else
                                                                timer.Create("close",0.01, 500, function()
                                                                        i = i - 0.02
                                                                        v:SetPoseParameter("roof_pose", i)
                                                                end)
                                                                ToggleIt = true
                                                                timer.Destroy("open")
																end
                              end
                        end
                end
                        end
                end
        end
hook.Add("KeyPress", "TDMBeetle_Roof", TDMBeetleRoof)
end