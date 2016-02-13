ENT.Base = "sent_sakarias_scar_base"
ENT.Type = "anim"

ENT.PrintName = "Bugatti Veyron SS"
ENT.Author = "TheDanishMaster"
ENT.Category = "TDMSCars"
ENT.Information = ""
ENT.AdminOnly = false

ENT.AddSpawnHeight = 10
ENT.ViewDist = 200
ENT.ViewDistUp = 23

ENT.NrOfSeats = 2
ENT.NrOfWheels = 4
ENT.NrOfExhausts = 2
ENT.NrOfFrontLights = 2
ENT.NrOfRearLights = 4

ENT.SeatPos = {}
ENT.WheelInfo = {}
ENT.ExhaustPos = {}
ENT.FrontLightsPos = {}
ENT.RearLightsPos = {}

ENT.effectPos = NULL

ENT.DefaultSoftnesFront =55
ENT.DefaultSoftnesRear =55

ENT.CarMass =2000
ENT.StabiliserOffset = NULL
ENT.StabilisationMultiplier = 10

ENT.DefaultSound = "advanced_engine_sounds/veyron/"
ENT.EngineEffectName = "Turbo"
ENT.HornSound = "scarhorns/horn 7.wav"

ENT.CarModel = "models/tdmscars/veyronss.mdl"
ENT.TireModel = "models/tdmscars/veyronss_wheel.mdl"
ENT.AnimType = 1

ENT.FrontLightColor = "180 180 220"
------------------------------------VARIABLES END

for i = 1, ENT.NrOfWheels do
	ENT.WheelInfo[i] = {}
end

local xPos = 0
local yPos = 0
local zPos = 0

//SEAT POSITIONS
--Seat Position 1
xPos = 4.4
yPos = -19.60000038147
zPos = 14.2
ENT.SeatPos[1] = Vector(xPos, yPos, zPos)

--Seat Position 2
xPos = 4.4
yPos = 19.60000038147
zPos = 14.2
ENT.SeatPos[2] = Vector(xPos, yPos, zPos)

//WHEEL POSITIONS
--Wheel Position 1
xPos = 65.199996948242
yPos = 43
zPos = 12
ENT.WheelInfo[1].Pos = Vector(xPos, yPos, zPos)
ENT.WheelInfo[1].TireModel = "models/tdmscars/veyronss_wheel.mdl"
ENT.WheelInfo[1].Side = true
ENT.WheelInfo[1].Torq = true
ENT.WheelInfo[1].Steer = 1

--Wheel Position 2
xPos = 65.199996948242
yPos = -43
zPos = 12
ENT.WheelInfo[2].Pos = Vector(xPos, yPos, zPos)
ENT.WheelInfo[2].TireModel = "models/tdmscars/veyronss_wheel.mdl"
ENT.WheelInfo[2].Side = false
ENT.WheelInfo[2].Torq = true
ENT.WheelInfo[2].Steer = 1

--Wheel Position 3
xPos = -69
yPos = 43
zPos = 12.5
ENT.WheelInfo[3].Pos = Vector(xPos, yPos, zPos)
ENT.WheelInfo[3].TireModel = "models/tdmscars/veyronss_wheelr.mdl"
ENT.WheelInfo[3].Side = true
ENT.WheelInfo[3].Torq = true
ENT.WheelInfo[3].Steer = 0

--Wheel Position 4
xPos = -69
yPos = -43
zPos = 12.5
ENT.WheelInfo[4].Pos = Vector(xPos, yPos, zPos)
ENT.WheelInfo[4].TireModel = "models/tdmscars/veyronss_wheelr.mdl"
ENT.WheelInfo[4].Side = false
ENT.WheelInfo[4].Torq = true
ENT.WheelInfo[4].Steer = 0

//FRONT LIGHT POSITIONS
--Front light 1
xPos = 91.5
yPos = -36
zPos = 28.60000038147
ENT.FrontLightsPos[1] = Vector(xPos, yPos, zPos)

--Front light 2
xPos = 91.5
yPos = 36
zPos = 28.60000038147
ENT.FrontLightsPos[2] = Vector(xPos, yPos, zPos)

//REAR LIGHT POSITIONS
--Rear light 1
xPos = -102.09999847412
yPos = -27
zPos = 35.900001525879
ENT.RearLightsPos[1] = Vector(xPos, yPos, zPos)

--Rear light 2
xPos = -102.09999847412
yPos = 27
zPos = 35.900001525879
ENT.RearLightsPos[2] = Vector(xPos, yPos, zPos)

--Rear light 3
xPos = -103.80000305176
yPos = -18.89999961853
zPos = 35.900001525879
ENT.RearLightsPos[3] = Vector(xPos, yPos, zPos)

--Rear light 4
xPos = -103.80000305176
yPos = 18.89999961853
zPos = 35.900001525879
ENT.RearLightsPos[4] = Vector(xPos, yPos, zPos)

//EXHAUST POSITIONS
--Exhaust 1
xPos = -104.40000152588
yPos = -5.8000001907349
zPos = 16.89999961853
ENT.ExhaustPos[1] = Vector(xPos, yPos, zPos)

--Exhaust 2
xPos = -104.40000152588
yPos = 5.8000001907349
zPos = 16.89999961853
ENT.ExhaustPos[2] = Vector(xPos, yPos, zPos)

//EFFECT POSITION
xPos = -65.800003051758
yPos = -0
zPos = 30.200000762939
ENT.effectPos = Vector(xPos, yPos, zPos)

//CAR CHARACTERISTICS
ENT.DefaultAcceleration = 21000
ENT.DefaultMaxSpeed = 4000
ENT.DefaultTurboEffect = 6
ENT.DefaultTurboDuration = 7
ENT.DefaultTurboDelay = 10
ENT.DefaultReverseForce = 3000
ENT.DefaultReverseMaxSpeed = 700
ENT.DefaultBreakForce = 8000
ENT.DefaultSteerForce = 7
ENT.DefautlSteerResponse = 0.30000001192093
ENT.DefaultStabilisation = 2000
ENT.DefaultNrOfGears = 7
ENT.DefaultAntiSlide = 10
ENT.DefaultAutoStraighten = 5
ENT.DeafultSuspensionAddHeight = 0
ENT.DefaultHydraulicActive = 0

list.Set( "SCarsList", ENT.PrintName, ENT )

function ENT:Initialize()
		
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
	self:SetPoseParameter( "tachometer", (self:GetRevPercent() + math.Rand(-0.001,0)) * 7000 ) 
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