ENT.Base = "sent_sakarias_scar_base"
ENT.Type = "anim"

ENT.PrintName		= "Ford Transit"
ENT.Author			= "TDM"
ENT.Category 		= "TDMSCars"
ENT.Information 	= "A Ford Transit" 
ENT.AdminOnly		= false


ENT.AddSpawnHeight = 9
ENT.ViewDist = 200
ENT.ViewDistUp = 30


ENT.NrOfSeats = 2
ENT.NrOfWheels = 4
ENT.NrOfExhausts = 1
ENT.NrOfFrontLights = 2
ENT.NrOfRearLights = 3

ENT.SeatPos = {}
ENT.WheelInfo = {}
ENT.ExhaustPos = {}
ENT.FrontLightsPos = {}
ENT.RearLightsPos = {}

ENT.effectPos = NULL

ENT.DefaultSoftnesFront = 15
ENT.DefaultSoftnesRear = 15
ENT.CarMass = 600
ENT.StabiliserOffset = NULL
ENT.StabilisationMultiplier = 70 --70 is default

ENT.DefaultSound = "advanced_engine_sounds/transit/"
ENT.CarModel = "models/tdmscars/ford_transit.mdl"
ENT.TireModel = "models/tdmscars/transit_wheel.mdl"
ENT.AnimType = 1 --1 = jeep anim, 2 = airboat anim


ENT.FrontLightColor = "198 193 232" --RGB
------------------------------------VARIABLES END


for i = 1, ENT.NrOfWheels do
	ENT.WheelInfo[i] = {}
end

local xPos = 0
local yPos = 0
local zPos = 0

//SEAT POSITIONS
--Seat Position 1 (Driver seat)
xPos = 29.5
yPos = 19.4
zPos = 44.9
ENT.SeatPos[1] = Vector(xPos, yPos, zPos)

--Seat Position 2 (Right front seat)
xPos = 29.5
yPos = -19.4
zPos = 44.9
ENT.SeatPos[2] = Vector(xPos, yPos, zPos)


//WHEEL POSITIONS

--Side false = Left
--Side true = Right
--Torq true = spins
--Torq false = do not spin

--The two first wheels should be the front ones.
--The third and fourth wheel should be the rear ones.
--You can have more wheels but the suspension adjuster stool will set the suspension softness to the middle value between the front and rear softness.

--Front Left wheel
xPos = 74.1
yPos = -39.7
zPos = 13.7	
ENT.WheelInfo[1].Pos = Vector( xPos, yPos, zPos )
ENT.WheelInfo[1].Side = false
ENT.WheelInfo[1].Torq = false
ENT.WheelInfo[1].Steer = 1

--Front Right wheel
xPos = 74.1
yPos = 39.7
zPos = 13.7		
ENT.WheelInfo[2].Pos = Vector( xPos, yPos, zPos )
ENT.WheelInfo[2].Side = true
ENT.WheelInfo[2].Torq = false
ENT.WheelInfo[2].Steer = 1

--Rear Left wheel
xPos = -66.9
yPos = -39.7
zPos = 13.7	
ENT.WheelInfo[3].Pos = Vector( xPos, yPos, zPos )
ENT.WheelInfo[3].Side = false
ENT.WheelInfo[3].Torq = true
ENT.WheelInfo[3].Steer = 0

--Rear Right wheel
xPos = -66.9
yPos = 39.7
zPos = 13.7				
ENT.WheelInfo[4].Pos  =  Vector( xPos, yPos, zPos )
ENT.WheelInfo[4].Side = true
ENT.WheelInfo[4].Torq = true
ENT.WheelInfo[4].Steer = 0




//LIGHT POSITIONS	

--//Front Lights
--Left
xPos = 108
yPos = -34
zPos = 40.3	
ENT.FrontLightsPos[1] = Vector(xPos, yPos, zPos)

--Right
xPos = 107
yPos = 34
zPos = 40.3	
ENT.FrontLightsPos[2] = Vector(xPos, yPos, zPos)


--//Rear Lights
--Left
xPos = -110.9
yPos = -41.6
zPos = 42.4		
ENT.RearLightsPos[1] = Vector(xPos, yPos, zPos)

--Right
xPos = -110.9
yPos = 41.6
zPos = 42.4	
ENT.RearLightsPos[2] = Vector(xPos, yPos, zPos)

--Center
xPos = -110.9
yPos = 0
zPos = 90.8	
ENT.RearLightsPos[3] = Vector(xPos, yPos, zPos)

--The position where the fire and smoke effects will be placed when the car is damaged
xPos = 103.2
yPos = 0
zPos = 55.6	
ENT.effectPos = Vector(xPos, yPos, zPos)

--The position of the exhaust
xPos = -114.5
yPos = 31.4
zPos = 13.1				
ENT.ExhaustPos[1] = Vector(xPos, yPos, zPos)

//SUSPENSION
--The higher the number is the harder the suspension will be
--Recommend not to change these numbers
ENT.DefaultSoftnesFront = 20
ENT.DefaultSoftnesRear = 20

ENT.DefaultAcceleration = 2800
ENT.DefaultMaxSpeed = 1800
ENT.DefaultTurboEffect = 2
ENT.DefaultTurboDuration = 4
ENT.DefaultTurboDelay = 10
ENT.DefaultReverseForce = 1000
ENT.DefaultReverseMaxSpeed = 700
ENT.DefaultBreakForce = 2200
ENT.DefaultSteerForce = 5
ENT.DefautlSteerResponse = 0.13
ENT.DefaultStabilisation = 2000
ENT.DefaultNrOfGears = 5
ENT.DefaultAntiSlide = 23
ENT.DefaultAutoStraighten = 10
ENT.DeafultSuspensionAddHeight = -10
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
	self:SetPoseParameter( "fuel_gauge", (self:GetFuelPercent() + math.Rand(-0.001,0)))
	self:SetPoseParameter( "tachometer", (self:GetRevPercent() + math.Rand(-0.001,0)) * 4500 ) 
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
