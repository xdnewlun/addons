ENT.Base = "sent_sakarias_scar_base"
ENT.Type = "anim"

ENT.PrintName		= "BMW M3 E92"
ENT.Author			= "TDM"
ENT.Category 		= "TDMSCars"
ENT.Information 	= "A BMW M3 E92" 
ENT.AdminOnly		= false


ENT.AddSpawnHeight = 9
ENT.ViewDist = 200
ENT.ViewDistUp = 30


ENT.NrOfSeats = 4
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

ENT.DefaultSoftnesFront = 15
ENT.DefaultSoftnesRear = 15
ENT.CarMass = 600
ENT.StabiliserOffset = NULL
ENT.StabilisationMultiplier = 70 --70 is default

ENT.DefaultSound = "advanced_engine_sounds/m3e92/"
ENT.EngineEffectName = "Turbo"
ENT.CarModel = "models/tdmscars/bmwm3e92.mdl"
ENT.TireModel = "models/tdmscars/bmwm3e92_wheel.mdl"
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
xPos = -3.5
yPos = -18.75
zPos = 20
ENT.SeatPos[1] = Vector(xPos, yPos, zPos)

--Seat Position 2 (Right front seat)
xPos = -3.5
yPos = 18.75
zPos = 20
ENT.SeatPos[2] = Vector(xPos, yPos, zPos)

--Seat Position 4 (Left rear seat)	
xPos = -43.2
yPos = -15.62
zPos = 20	
ENT.SeatPos[3] = Vector(xPos, yPos, zPos)

--Seat Position 5 (Right rear seat)	
xPos = -43.2
yPos = 15.62
zPos = 20	
ENT.SeatPos[4] = Vector(xPos, yPos, zPos)	




//WHEEL POSITIONS

--Side false = Left
--Side true = Right
--Torq true = spins
--Torq false = do not spin

--The two first wheels should be the front ones.
--The third and fourth wheel should be the rear ones.
--You can have more wheels but the suspension adjuster stool will set the suspension softness to the middle value between the front and rear softness.

--Front Left wheel
xPos = 74
yPos = -37
zPos = 12	
ENT.WheelInfo[1].Pos = Vector( xPos, yPos, zPos )
ENT.WheelInfo[1].Side = false
ENT.WheelInfo[1].Torq = false
ENT.WheelInfo[1].Steer = 1

--Front Right wheel
xPos = 74
yPos = 37
zPos = 12		
ENT.WheelInfo[2].Pos = Vector( xPos, yPos, zPos )
ENT.WheelInfo[2].Side = true
ENT.WheelInfo[2].Torq = false
ENT.WheelInfo[2].Steer = 1

--Rear Left wheel
xPos = -62
yPos = -37
zPos = 12	
ENT.WheelInfo[3].Pos = Vector( xPos, yPos, zPos )
ENT.WheelInfo[3].Side = false
ENT.WheelInfo[3].Torq = true
ENT.WheelInfo[3].Steer = 0

--Rear Right wheel
xPos = -62
yPos = 37
zPos = 12			
ENT.WheelInfo[4].Pos  =  Vector( xPos, yPos, zPos )
ENT.WheelInfo[4].Side = true
ENT.WheelInfo[4].Torq = true
ENT.WheelInfo[4].Steer = 0




//LIGHT POSITIONS	

--//Front Lights
--Left
xPos = 102
yPos = -29
zPos = 30.7	
ENT.FrontLightsPos[1] = Vector(xPos, yPos, zPos)

--Right
xPos = 102
yPos = 29
zPos = 30.7		
ENT.FrontLightsPos[2] = Vector(xPos, yPos, zPos)


--//Rear Lights
--Left
xPos = -110
yPos = -29.5
zPos = 42	
ENT.RearLightsPos[1] = Vector(xPos, yPos, zPos)

--Right
xPos = -110
yPos = 29.5
zPos = 42	
ENT.RearLightsPos[2] = Vector(xPos, yPos, zPos)






--The position where the fire and smoke effects will be placed when the car is damaged
xPos = 87
yPos = 0
zPos = 40	
ENT.effectPos = Vector(xPos, yPos, zPos)

--The position of the exhaust
xPos = -112.8
yPos = -13.86
zPos = 14.24				
ENT.ExhaustPos[1] = Vector(xPos, yPos, zPos)

xPos = -112.8
yPos = 13.86
zPos = 14.24				
ENT.ExhaustPos[2] = Vector(xPos, yPos, zPos)

//SUSPENSION
--The higher the number is the harder the suspension will be
--Recommend not to change these numbers
ENT.DefaultSoftnesFront = 23
ENT.DefaultSoftnesRear = 27	

ENT.DefaultAcceleration = 4000
ENT.DefaultMaxSpeed = 2500
ENT.DefaultTurboEffect = 2
ENT.DefaultTurboDuration = 4
ENT.DefaultTurboDelay = 10
ENT.DefaultReverseForce = 1000
ENT.DefaultReverseMaxSpeed = 200
ENT.DefaultBreakForce = 2200
ENT.DefaultSteerForce = 4
ENT.DefautlSteerResponse = 0.13
ENT.DefaultStabilisation = 2000
ENT.DefaultNrOfGears = 6
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
	
	self:SetPoseParameter( "tachometer", (self:GetRevPercent() + math.Rand(-0.001,0)) * 8000 ) 
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
