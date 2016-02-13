ENT.Base = "sent_sakarias_scar_base"
ENT.Type = "anim"

ENT.PrintName = "Nissan 350z"
ENT.Author			= "TDM"
ENT.Category 		= "TDMSCars"
ENT.Information = "A Nissan 350z"
ENT.AdminOnly = false

ENT.AddSpawnHeight = 5
ENT.ViewDist = 200
ENT.ViewDistUp = 10

ENT.NrOfSeats = 2
ENT.NrOfWheels = 4
ENT.NrOfExhausts = 2
ENT.NrOfFrontLights = 2
ENT.NrOfRearLights = 2

ENT.SeatPos = {}
ENT.WheelInfo = {}
ENT.ExhaustPos = {}
ENT.FrontLightsPos = {}
ENT.RearLightsPos = {}

ENT.effectPos = NULL

ENT.DefaultSoftnesFront =15
ENT.DefaultSoftnesRear =15

ENT.CarMass =800
ENT.StabiliserOffset = NULL
ENT.StabilisationMultiplier = 70

ENT.DefaultSound = "advanced_engine_sounds/350z/"
ENT.EngineEffectName = "Default"
ENT.HornSound = "scarhorns/horn 7.wav"

ENT.CarModel = "models/tdmscars/350z.mdl"
ENT.TireModel = "models/tdmscars/350z_wheel.mdl"
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
xPos = -12.199999809265
yPos = 18.10000038147
zPos = 16.700000762939
ENT.SeatPos[1] = Vector(xPos, yPos, zPos)

--Seat Position 2
xPos = -12.199999809265
yPos = -18.10000038147
zPos = 16.700000762939
ENT.SeatPos[2] = Vector(xPos, yPos, zPos)

//WHEEL POSITIONS
--Wheel Position 1
xPos = 64.599998474121
yPos = 37.900001525879
zPos = 12.699999809265
ENT.WheelInfo[1].Pos = Vector(xPos, yPos, zPos)
ENT.WheelInfo[1].Side = true
ENT.WheelInfo[1].Torq = false
ENT.WheelInfo[1].Steer = 1

--Wheel Position 2
xPos = 64.599998474121
yPos = -37.900001525879
zPos = 12.699999809265
ENT.WheelInfo[2].Pos = Vector(xPos, yPos, zPos)
ENT.WheelInfo[2].Side = false
ENT.WheelInfo[2].Torq = false
ENT.WheelInfo[2].Steer = 1

--Wheel Position 3
xPos = -65
yPos = 37.900001525879
zPos = 12.699999809265
ENT.WheelInfo[3].Pos = Vector(xPos, yPos, zPos)
ENT.WheelInfo[3].Side = true
ENT.WheelInfo[3].Torq = true
ENT.WheelInfo[3].Steer = 0

--Wheel Position 4
xPos = -65
yPos = -37.900001525879
zPos = 12.699999809265
ENT.WheelInfo[4].Pos = Vector(xPos, yPos, zPos)
ENT.WheelInfo[4].Side = false
ENT.WheelInfo[4].Torq = true
ENT.WheelInfo[4].Steer = 0

//FRONT LIGHT POSITIONS
--Front light 1
xPos = 83.099998474121
yPos = -30.89999961853
zPos = 32.400001525879
ENT.FrontLightsPos[1] = Vector(xPos, yPos, zPos)

--Front light 2
xPos = 83.099998474121
yPos = 30.89999961853
zPos = 32.400001525879
ENT.FrontLightsPos[2] = Vector(xPos, yPos, zPos)

//REAR LIGHT POSITIONS
--Rear light 1
xPos = -100.5
yPos = -28.5
zPos = 38.700000762939
ENT.RearLightsPos[1] = Vector(xPos, yPos, zPos)

--Rear light 2
xPos = -100.5
yPos = 28.5
zPos = 38.700000762939
ENT.RearLightsPos[2] = Vector(xPos, yPos, zPos)

//EXHAUST POSITIONS
--Exhaust 1
xPos = -103.30000305176
yPos = -19.799999237061
zPos = 14.800000190735
ENT.ExhaustPos[1] = Vector(xPos, yPos, zPos)

--Exhaust 2
xPos = -103.30000305176
yPos = 19.799999237061
zPos = 14.800000190735
ENT.ExhaustPos[2] = Vector(xPos, yPos, zPos)

//EFFECT POSITION
xPos = 70
yPos = 0
zPos = 50
ENT.effectPos = Vector(xPos, yPos, zPos)

//CAR CHARACTERISTICS
ENT.DefaultAcceleration = 6200
ENT.DefaultMaxSpeed = 2200
ENT.DefaultTurboEffect = 2
ENT.DefaultTurboDuration = 4
ENT.DefaultTurboDelay = 10
ENT.DefaultReverseForce = 1000
ENT.DefaultReverseMaxSpeed = 800
ENT.DefaultBreakForce = 2000
ENT.DefaultSteerForce = 5
ENT.DefautlSteerResponse = 0.30000001192093
ENT.DefaultStabilisation = 2000
ENT.DefaultNrOfGears = 6
ENT.DefaultAntiSlide = 10
ENT.DefaultAutoStraighten = 5
ENT.DeafultSuspensionAddHeight = 7
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
	
	self:SetPoseParameter( "tachometer", (self:GetRevPercent() + math.Rand(-0.001,0)) * 6000 ) 
	self:SetPoseParameter( "speedometer", self:GetSpeedMPH() * 2 + math.Rand(-0.001,0)) 
end
else
function ENT:SpecialThink()
end
end

function ENT:SpecialRemove()	
end

function ENT:SpecialReposition()
end
