ENT.Base = "sent_sakarias_scar_base"
ENT.Type = "anim"

ENT.PrintName = "Saab 99 Turbo"
ENT.Author = "TheDanishMaster"
ENT.Category = "TDMSCars"
ENT.Information = ""
ENT.AdminOnly = false


ENT.AddSpawnHeight = 5
ENT.ViewDist = 200
ENT.ViewDistUp = 30

ENT.NrOfSeats = 4
ENT.NrOfWheels = 4
ENT.NrOfExhausts = 1
ENT.NrOfFrontLights = 4
ENT.NrOfRearLights = 2

ENT.SeatPos = {}
ENT.WheelInfo = {}
ENT.ExhaustPos = {}
ENT.FrontLightsPos = {}
ENT.RearLightsPos = {}

ENT.effectPos = NULL

ENT.DefaultSoftnesFront =35
ENT.DefaultSoftnesRear =35

ENT.CarMass =700
ENT.StabiliserOffset = NULL
ENT.StabilisationMultiplier = 70

ENT.DefaultSound = "advanced_engine_sounds/saab99/"
ENT.EngineEffectName = "Turbo"
ENT.HornSound = "scarhorns/horn 6.wav"
ENT.CarModel = "models/tdmscars/saab99.mdl"
ENT.TireModel = "models/tdmscars/saab99_wheel.mdl"
ENT.AnimType = 1

ENT.FrontLightColor = "220 220 160"
------------------------------------VARIABLES END

for i = 1, ENT.NrOfWheels do
	ENT.WheelInfo[i] = {}
end

local xPos = 0
local yPos = 0
local zPos = 0

//SEAT POSITIONS
--Seat Position 1
xPos = 5
yPos = -16
zPos = 18
ENT.SeatPos[1] = Vector(xPos, yPos, zPos)

--Seat Position 2
xPos = 5
yPos = 16
zPos = 18
ENT.SeatPos[2] = Vector(xPos, yPos, zPos)

--Seat Position 3
xPos = -30.799999237061
yPos = 17
zPos = 21
ENT.SeatPos[3] = Vector(xPos, yPos, zPos)

--Seat Position 4
xPos = -30.799999237061
yPos = -17
zPos = 21
ENT.SeatPos[4] = Vector(xPos, yPos, zPos)

//WHEEL POSITIONS
--Wheel Position 1
xPos = 65
yPos = 34.200000762939
zPos = 11
ENT.WheelInfo[1].Pos = Vector(xPos, yPos, zPos)
ENT.WheelInfo[1].Side = true
ENT.WheelInfo[1].Torq = false
ENT.WheelInfo[1].Steer = 1

--Wheel Position 2
xPos = 65
yPos = -34.200000762939
zPos = 11
ENT.WheelInfo[2].Pos = Vector(xPos, yPos, zPos)
ENT.WheelInfo[2].Side = false
ENT.WheelInfo[2].Torq = false
ENT.WheelInfo[2].Steer = 1

--Wheel Position 3
xPos = -54.700000762939
yPos = 34.200000762939
zPos = 11
ENT.WheelInfo[3].Pos = Vector(xPos, yPos, zPos)
ENT.WheelInfo[3].Side = true
ENT.WheelInfo[3].Torq = true
ENT.WheelInfo[3].Steer = 0

--Wheel Position 4
xPos = -54.700000762939
yPos = -34.200000762939
zPos = 11
ENT.WheelInfo[4].Pos = Vector(xPos, yPos, zPos)
ENT.WheelInfo[4].Side = false
ENT.WheelInfo[4].Torq = true
ENT.WheelInfo[4].Steer = 0

//FRONT LIGHT POSITIONS
--Front light 1
xPos = 99
yPos = -26
zPos = 27.39999961853
ENT.FrontLightsPos[1] = Vector(xPos, yPos, zPos)

--Front light 2
xPos = 101
yPos = -18
zPos = 27.39999961853
ENT.FrontLightsPos[2] = Vector(xPos, yPos, zPos)

--Front light 3
xPos = 99
yPos = 26
zPos = 27.39999961853
ENT.FrontLightsPos[3] = Vector(xPos, yPos, zPos)

--Front light 4
xPos = 101
yPos = 18
zPos = 27.39999961853
ENT.FrontLightsPos[4] = Vector(xPos, yPos, zPos)

//REAR LIGHT POSITIONS
--Rear light 1
xPos = -104
yPos = -29
zPos = 26
ENT.RearLightsPos[1] = Vector(xPos, yPos, zPos)

--Rear light 2
xPos = -104
yPos = 29
zPos = 26
ENT.RearLightsPos[2] = Vector(xPos, yPos, zPos)

//EXHAUST POSITIONS
--Exhaust 1
xPos = -105
yPos = -23.89999961853
zPos = 13
ENT.ExhaustPos[1] = Vector(xPos, yPos, zPos)

//EFFECT POSITION
xPos = 0
yPos = -0
zPos = 0
ENT.effectPos = Vector(xPos, yPos, zPos)

//CAR CHARACTERISTICS
ENT.DefaultAcceleration = 6500
ENT.DefaultMaxSpeed = 2300
ENT.DefaultTurboEffect = 2
ENT.DefaultTurboDuration = 4
ENT.DefaultTurboDelay = 10
ENT.DefaultReverseForce = 1089.6999511719
ENT.DefaultReverseMaxSpeed = 243.60000610352
ENT.DefaultBreakForce = 3000
ENT.DefaultSteerForce = 5
ENT.DefautlSteerResponse = 0.30000001192093
ENT.DefaultStabilisation = 2068.3999023438
ENT.DefaultNrOfGears = 5
ENT.DefaultAntiSlide = 12.39999961853
ENT.DefaultAutoStraighten = 5.8000001907349
ENT.DeafultSuspensionAddHeight = 14.10000038147
ENT.DefaultHydraulicActive = 0

list.Set( "SCarsList", ENT.PrintName, ENT )

function ENT:Initialize()
	
	--Setting up the SCar in the SCar base
	self:Setup()	
	
	if (SERVER) then
		--Setting up the car characteristics
		self:SetAcceleration( self.DefaultAcceleration )
		self:SetMaxSpeed( self.DefaultMaxSpeed )
		
		self:SetTurboEffect( self.DefaultTurboEffect )
		self:SetTurboDuration( self.DefaultTurboDuration )
		self:SetTurboDelay( self.DefaultTurboDelay )
		
		self:SetReverseForce( self.DefaultReverseForce )
		self:SetReverseMaxSpeed( self.DefaultReverseMaxSpeed )
		self:SetBreakForce( self.DefaultBreakForce )
		
		self:SetSteerForce( self.DefaultSteerForce )
		self:SetSteerResponse( self.DefautlSteerResponse )
		
		self:SetStabilisation( self.DefaultStabilisation )
		self:SetNrOfGears( self.DefaultNrOfGears )
		self:SetAntiSlide( self.DefaultAntiSlide )
		self:SetAutoStraighten( self.DefaultAutoStraighten )	
		
		self:SetSuspensionAddHeight( self.DeafultSuspensionAddHeight )
		self:SetHydraulicActive( self.DefaultHydraulicActive )	
	end

end

if (SERVER) then
function ENT:SpecialThink()
	self:SetPoseParameter( "steeringwheel", (self:GetSteerPercent() + math.Rand(-0.001,0)) * -49 ) 
	self:SetPoseParameter( "fuelgauge", (self:GetFuelPercent() + math.Rand(-0.001,0)))
	self:SetPoseParameter( "tachometer", (self:GetRevPercent() + math.Rand(-0.001,0)) * 5500 ) 
	self:SetPoseParameter( "speedometer", self:GetSpeedKPH() + math.Rand(-0.001,0)) 
end
else
function ENT:SpecialThink()
end
end

function ENT:SpecialRemove()	
end

function ENT:SpecialReposition()
end