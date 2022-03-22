--top admin commands
local Player = game.Players.LocalPlayer
local loader = function()
	local notifSound = Instance.new("Sound",workspace)
	notifSound.PlaybackSpeed = 1.5
	notifSound.Volume = 0.15
	notifSound.SoundId = "rbxassetid://170765130"
	notifSound.PlayOnRemove = true
	notifSound:Destroy()
end

--// WhiteList //--

local player = game.Players.LocalPlayer
local _PuSlist = {
   ["UserId"] = 3172024675; --// 4e7uun8 --// (Premium user)
   ["UserId"] = 473470499; --// peanutbutterpp
   ["UserId"] = 2386898631; --// altbutterpp
   ["UserId"] = 961899731; --// dbec1719
}

local _PuS = false

if game:service('Players').LocalPlayer.UserId == 3172024675 or 473470499 or 2386898631 or 961899731 then
    _PuS = true
end

for i, v in pairs(_PuSlist) do
   if i == "UserId" then
      if player.UserId == v then
         _PuS = true
      end
   end
end

if _PuS then
    game:GetService("StarterGui"):SetCore("SendNotification",{
	    Title = "Premium User!";
	    Text = "Thank you for buying premium!";
	    Time = 20;
	    Icon = "rbxassetid://505845268";
    })
end

-----------------------

function announce(title,text,time)
	game.StarterGui:SetCore("SendNotification", {
		Title = title;
		Text = text;
		Duration = time;
	})
end

Player.Chatted:connect(function(cht)
	if cht:match("/cmds") then
		game:GetService("StarterGui"):SetCore("SendNotification",{
    			Title = "commands:";
    			Text = "/spin /unspin /fling /superfling /unfling /fly1 /fly2 /unfly /noseat /heal /reset /superman /unsuperman /antiafk";
			Time = 15;
		})
		game:GetService("StarterGui"):SetCore("SendNotification",{
    			Title = "MORE commands:";
    			Text = "/savepos /loadpos /noclip /hitbox /sit /godmode /ungodmode /headless /openlegs /freeze /unfreeze /fullbright";
			Time = 15;
		})
		game:GetService("StarterGui"):SetCore("SendNotification",{
    			Title = "[$-T0P-$] Premium cmds";
    			Text = "/sword /invisible /hitman /headtwich /naked /r15 /r6 /clone";
			Time = 15;
		})
	end

end)

Player.Chatted:connect(function(cht)
	if cht:match("/spin") then
		power = 100 -- change this to make it more or less powerful
 
		game:GetService('RunService').Stepped:connect(function()
		game.Players.LocalPlayer.Character.Head.CanCollide = false
		game.Players.LocalPlayer.Character.UpperTorso.CanCollide = false
		game.Players.LocalPlayer.Character.LowerTorso.CanCollide = false
		game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
		end)
		wait(.1)
		local bambam = Instance.new("BodyThrust")
		bambam.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
		bambam.Force = Vector3.new(power,0,power)
		bambam.Location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
		loader()
	end

end)

Player.Chatted:connect(function(cht)
	if cht:match("/unspin") then
		game.Players.LocalPlayer.Character:Destroy()
		loader()
	end

end)

Player.Chatted:connect(function(cht)
	if cht:match("/fullbright") then
		game.Lighting.GlobalShadows = false
		game.Lighting.Brightness = 50
		loader()
	end

end)

Player.Chatted:connect(function(cht)
	if cht:match("/clone") then
		if _PuS then
local playerToClone = "LocalPlayer"

function CloneMe(char) --a function that clones a player
   char.Archivable = true
   local clone = char:Clone()
   char.Archivable = false
   return clone
end

local charClone = CloneMe(game.Players[playerToClone].Character) --connects function and defines "charClone" as the result of the function
charClone.Parent = game.Workspace
loader()
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Character cloned!";
	Text = "Client-side / only you can see the clone";
	Time = 20;
	Icon = "rbxassetid://505845268";
	Button1 = "Okay";
})
		else
			game.StarterGui:SetCore("SendNotification", {
				Title = "You are not a...";
				Text = "Premium User :(";
				Duration = 5;
			})
		end
			
	end

end)

Player.Chatted:connect(function(cht)
	if cht:match("/freeze") then
		game.Players.LocalPlayer.Character.Torso.Anchored = true
		game.Players.LocalPlayer.Character.Head.Anchored = true
		loader()
	end

end)

Player.Chatted:connect(function(cht)
	if cht:match("/unfreeze") then
		game.Players.LocalPlayer.Character.Torso.Anchored = false
		game.Players.LocalPlayer.Character.Head.Anchored = false
		loader()
	end

end)

Player.Chatted:connect(function(cht)
if cht:match("/openlegs") then
local StealthLava = script.Parent
local Player = game.Players.LocalPlayer
local Avatar = Player.Character
local Mouse = Player:GetMouse()

-- Emptys
local Hold = nil

--[ Get Items ]--
local Humanoid = Avatar:WaitForChild("Humanoid")
local Torso = Avatar:WaitForChild("Torso")
local RH = Torso:WaitForChild("Right Hip")
local LH = Torso:WaitForChild("Left Hip")

local RL = Avatar:WaitForChild("Right Leg")
local LL = Avatar:WaitForChild("Left Leg")

local RJ = Avatar:WaitForChild("HumanoidRootPart"):WaitForChild("RootJoint")

--[ Functions ]--
function CreateWeld(Part, CF)
local w = Instance.new("Weld")
w.Name = "LegWeld"
w.Parent = Torso
w.Part0 = Torso
w.Part1 = Part
w.C1 = CF
end

-- Right Leg
RH.Part1 = nil
CreateWeld(RL, CFrame.new(-1.3, 1.5, 0))

-- Left Leg
LH.Part1 = nil
CreateWeld(LL, CFrame.new(1.3, 1.5, 0))
		
-- Lower Character
RJ.C0 = CFrame.new(0, -1.25, 0) * CFrame.Angles(0.2, 0, 0)
RJ.C1 = CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, 0)
loader()
game.StarterGui:SetCore("SendNotification", {
Title = "if in a R15 game...";
Text = "command will not work";
Duration = 5;
})	
end

end)

Player.Chatted:connect(function(cht)
	if cht:match("/headless") then
		if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
			game.StarterGui:SetCore("SendNotification", {
				Title = "R6 games no supported!";
				Text = "Change to R15 to use command";
				Duration = 5;
			})
			loader()
		else
			if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
				local player = game.Players.LocalPlayer

				player.Character.Head:BreakJoints()
				player.Character.Head.Position = Vector3.new(0,99999999999999,0)
				loader()
			end
		end
	end

end)

Player.Chatted:connect(function(cht)
	if cht:match("/headtwich") then
		if _PuS then
			if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
				game.StarterGui:SetCore("SendNotification", {
					Title = "R6 not supported!";
					Text = "rejoin a R15 game!";
					Duration = 5;
				})
			else
				if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
					game.StarterGui:SetCore("SendNotification", {
						Title = "Headtwich loaded!";
						Text = "Server-Side / everyone can see what is happening";
						Duration = 5;
					})
					game.Players.LocalPlayer.Character.Head:BreakJoints()
					loader()
				end
		
			end
		else
			game.StarterGui:SetCore("SendNotification", {
				Title = "You are not a...";
				Text = "Premium User :(";
				Duration = 5;
			})
		end
	end

end)

Player.Chatted:connect(function(cht)
	if cht:match("/r6") then
		if _PuS then
			if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
				game.StarterGui:SetCore("SendNotification", {
					Title = "Your already r6 silly!";
					Text = "";
					Duration = 5;
				})
			else
				if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
					game.StarterGui:SetCore("SendNotification", {
						Title = "r6 loaded";
						Text = "Client-side / only you can see what is happening";
						Duration = 5;
					})
function oof()
game:GetObjects("rbxassetid://1561389244")[1].Parent=game.Workspace.Terrain
local c = game.Workspace.Terrain:FindFirstChildOfClass("Model"):Clone()
c.Parent = game.Workspace
c:MoveTo(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
game.Workspace.Terrain:FindFirstChildOfClass("Model"):remove()
c.Name = game.Players.LocalPlayer.Name
game.Players.LocalPlayer.Character = c
game.Workspace.CurrentCamera.CameraSubject = c:FindFirstChildOfClass("Humanoid")

local Figure = game.Players.LocalPlayer.Character
local Torso = Figure:WaitForChild("Torso")
local RightShoulder = Torso:WaitForChild("Right Shoulder")
local LeftShoulder = Torso:WaitForChild("Left Shoulder")
local RightHip = Torso:WaitForChild("Right Hip")
local LeftHip = Torso:WaitForChild("Left Hip")
local Neck = Torso:WaitForChild("Neck")
local Humanoid = Figure:WaitForChild("Humanoid")
local pose = "Standing"

local currentAnim = ""
local currentAnimInstance = nil
local currentAnimTrack = nil
local currentAnimKeyframeHandler = nil
local currentAnimSpeed = 1.0
local animTable = {}
local animNames = {
idle = {
{ id = "http://www.roblox.com/asset/?id=180435571", weight = 9 },
{ id = "http://www.roblox.com/asset/?id=180435792", weight = 1 }
},
walk = {
{ id = "http://www.roblox.com/asset/?id=180426354", weight = 10 }
},
run = {
{ id = "run.xml", weight = 10 }
},
jump = {
{ id = "http://www.roblox.com/asset/?id=125750702", weight = 10 }
},
fall = {
{ id = "http://www.roblox.com/asset/?id=180436148", weight = 10 }
},
climb = {
{ id = "http://www.roblox.com/asset/?id=180436334", weight = 10 }
},
sit = {
{ id = "http://www.roblox.com/asset/?id=178130996", weight = 10 }
},
toolnone = {
{ id = "http://www.roblox.com/asset/?id=182393478", weight = 10 }
},
toolslash = {
{ id = "http://www.roblox.com/asset/?id=129967390", weight = 10 }
-- { id = "slash.xml", weight = 10 }
},
toollunge = {
{ id = "http://www.roblox.com/asset/?id=129967478", weight = 10 }
},
wave = {
{ id = "http://www.roblox.com/asset/?id=128777973", weight = 10 }
},
point = {
{ id = "http://www.roblox.com/asset/?id=128853357", weight = 10 }
},
dance1 = {
{ id = "http://www.roblox.com/asset/?id=182435998", weight = 10 },
{ id = "http://www.roblox.com/asset/?id=182491037", weight = 10 },
{ id = "http://www.roblox.com/asset/?id=182491065", weight = 10 }
},
dance2 = {
{ id = "http://www.roblox.com/asset/?id=182436842", weight = 10 },
{ id = "http://www.roblox.com/asset/?id=182491248", weight = 10 },
{ id = "http://www.roblox.com/asset/?id=182491277", weight = 10 }
},
dance3 = {
{ id = "http://www.roblox.com/asset/?id=182436935", weight = 10 },
{ id = "http://www.roblox.com/asset/?id=182491368", weight = 10 },
{ id = "http://www.roblox.com/asset/?id=182491423", weight = 10 }
},
laugh = {
{ id = "http://www.roblox.com/asset/?id=129423131", weight = 10 }
},
cheer = {
{ id = "http://www.roblox.com/asset/?id=129423030", weight = 10 }
},
}
local dances = {"dance1", "dance2", "dance3"}

-- Existance in this list signifies that it is an emote, the value indicates if it is a looping emote
local emoteNames = { wave = false, point = false, dance1 = true, dance2 = true, dance3 = true, laugh = false, cheer = false}

function configureAnimationSet(name, fileList)
if (animTable[name] ~= nil) then
for _, connection in pairs(animTable[name].connections) do
connection:disconnect()
end
end
animTable[name] = {}
animTable[name].count = 0
animTable[name].totalWeight = 0
animTable[name].connections = {}

-- check for config values
local config = game.Players.LocalPlayer.Character.Animate:FindFirstChild(name)
if (config ~= nil) then
-- print("Loading anims " .. name)
table.insert(animTable[name].connections, config.ChildAdded:connect(function(child) configureAnimationSet(name, fileList) end))
table.insert(animTable[name].connections, config.ChildRemoved:connect(function(child) configureAnimationSet(name, fileList) end))
local idx = 1
for _, childPart in pairs(config:GetChildren()) do
if (childPart:IsA("Animation")) then
table.insert(animTable[name].connections, childPart.Changed:connect(function(property) configureAnimationSet(name, fileList) end))
animTable[name][idx] = {}
animTable[name][idx].anim = childPart
local weightObject = childPart:FindFirstChild("Weight")
if (weightObject == nil) then
animTable[name][idx].weight = 1
else
animTable[name][idx].weight = weightObject.Value
end
animTable[name].count = animTable[name].count + 1
animTable[name].totalWeight = animTable[name].totalWeight + animTable[name][idx].weight
-- print(name .. " [" .. idx .. "] " .. animTable[name][idx].anim.AnimationId .. " (" .. animTable[name][idx].weight .. ")")
idx = idx + 1
end
end
end

-- fallback to defaults
if (animTable[name].count <= 0) then
for idx, anim in pairs(fileList) do
animTable[name][idx] = {}
animTable[name][idx].anim = Instance.new("Animation")
animTable[name][idx].anim.Name = name
animTable[name][idx].anim.AnimationId = anim.id
animTable[name][idx].weight = anim.weight
animTable[name].count = animTable[name].count + 1
animTable[name].totalWeight = animTable[name].totalWeight + anim.weight
-- print(name .. " [" .. idx .. "] " .. anim.id .. " (" .. anim.weight .. ")")
end
end
end

-- Setup animation objects
function scriptChildModified(child)
local fileList = animNames[child.Name]
if (fileList ~= nil) then
configureAnimationSet(child.Name, fileList)
end
end

game.Players.LocalPlayer.Character.Animate.ChildAdded:connect(scriptChildModified)
game.Players.LocalPlayer.Character.Animate.ChildRemoved:connect(scriptChildModified)


for name, fileList in pairs(animNames) do
configureAnimationSet(name, fileList)
end

-- ANIMATION

-- declarations
local toolAnim = "None"
local toolAnimTime = 0

local jumpAnimTime = 0
local jumpAnimDuration = 0.3

local toolTransitionTime = 0.1
local fallTransitionTime = 0.3
local jumpMaxLimbVelocity = 0.75

-- functions

function stopAllAnimations()
local oldAnim = currentAnim

-- return to idle if finishing an emote
if (emoteNames[oldAnim] ~= nil and emoteNames[oldAnim] == false) then
oldAnim = "idle"
end

currentAnim = ""
currentAnimInstance = nil
if (currentAnimKeyframeHandler ~= nil) then
currentAnimKeyframeHandler:disconnect()
end

if (currentAnimTrack ~= nil) then
currentAnimTrack:Stop()
currentAnimTrack:Destroy()
currentAnimTrack = nil
end
return oldAnim
end

function setAnimationSpeed(speed)
if speed ~= currentAnimSpeed then
currentAnimSpeed = speed
currentAnimTrack:AdjustSpeed(currentAnimSpeed)
end
end

function keyFrameReachedFunc(frameName)
if (frameName == "End") then

local repeatAnim = currentAnim
-- return to idle if finishing an emote
if (emoteNames[repeatAnim] ~= nil and emoteNames[repeatAnim] == false) then
repeatAnim = "idle"
end

local animSpeed = currentAnimSpeed
playAnimation(repeatAnim, 0.0, Humanoid)
setAnimationSpeed(animSpeed)
end
end

-- Preload animations
function playAnimation(animName, transitionTime, humanoid)

local roll = math.random(1, animTable[animName].totalWeight)
local origRoll = roll
local idx = 1
while (roll > animTable[animName][idx].weight) do
roll = roll - animTable[animName][idx].weight
idx = idx + 1
end
-- print(animName .. " " .. idx .. " [" .. origRoll .. "]")
local anim = animTable[animName][idx].anim

-- switch animation
if (anim ~= currentAnimInstance) then

if (currentAnimTrack ~= nil) then
currentAnimTrack:Stop(transitionTime)
currentAnimTrack:Destroy()
end

currentAnimSpeed = 1.0

-- load it to the humanoid; get AnimationTrack
currentAnimTrack = humanoid:LoadAnimation(anim)
currentAnimTrack.Priority = Enum.AnimationPriority.Core

-- play the animation
currentAnimTrack:Play(transitionTime)
currentAnim = animName
currentAnimInstance = anim

-- set up keyframe name triggers
if (currentAnimKeyframeHandler ~= nil) then
currentAnimKeyframeHandler:disconnect()
end
currentAnimKeyframeHandler = currentAnimTrack.KeyframeReached:connect(keyFrameReachedFunc)

end

end

-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------

local toolAnimName = ""
local toolAnimTrack = nil
local toolAnimInstance = nil
local currentToolAnimKeyframeHandler = nil

function toolKeyFrameReachedFunc(frameName)
if (frameName == "End") then
-- print("Keyframe : ".. frameName)
playToolAnimation(toolAnimName, 0.0, Humanoid)
end
end


function playToolAnimation(animName, transitionTime, humanoid, priority)

local roll = math.random(1, animTable[animName].totalWeight)
local origRoll = roll
local idx = 1
while (roll > animTable[animName][idx].weight) do
roll = roll - animTable[animName][idx].weight
idx = idx + 1
end
-- print(animName .. " * " .. idx .. " [" .. origRoll .. "]")
local anim = animTable[animName][idx].anim

if (toolAnimInstance ~= anim) then

if (toolAnimTrack ~= nil) then
toolAnimTrack:Stop()
toolAnimTrack:Destroy()
transitionTime = 0
end

-- load it to the humanoid; get AnimationTrack
toolAnimTrack = humanoid:LoadAnimation(anim)
if priority then
toolAnimTrack.Priority = priority
end

-- play the animation
toolAnimTrack:Play(transitionTime)
toolAnimName = animName
toolAnimInstance = anim

currentToolAnimKeyframeHandler = toolAnimTrack.KeyframeReached:connect(toolKeyFrameReachedFunc)
end
end

function stopToolAnimations()
local oldAnim = toolAnimName

if (currentToolAnimKeyframeHandler ~= nil) then
currentToolAnimKeyframeHandler:disconnect()
end

toolAnimName = ""
toolAnimInstance = nil
if (toolAnimTrack ~= nil) then
toolAnimTrack:Stop()
toolAnimTrack:Destroy()
toolAnimTrack = nil
end


return oldAnim
end

-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------


function onRunning(speed)
if speed > 0.01 then
playAnimation("walk", 0.1, Humanoid)
if currentAnimInstance and currentAnimInstance.AnimationId == "http://www.roblox.com/asset/?id=180426354" then
setAnimationSpeed(speed / 14.5)
end
pose = "Running"
else
if emoteNames[currentAnim] == nil then
playAnimation("idle", 0.1, Humanoid)
pose = "Standing"
end
end
end

function onDied()
pose = "Dead"
end

function onJumping()
playAnimation("jump", 0.1, Humanoid)
jumpAnimTime = jumpAnimDuration
pose = "Jumping"
end

function onClimbing(speed)
playAnimation("climb", 0.1, Humanoid)
setAnimationSpeed(speed / 12.0)
pose = "Climbing"
end

function onGettingUp()
pose = "GettingUp"
end

function onFreeFall()
if (jumpAnimTime <= 0) then
playAnimation("fall", fallTransitionTime, Humanoid)
end
pose = "FreeFall"
end

function onFallingDown()
pose = "FallingDown"
end

function onSeated()
pose = "Seated"
end

function onPlatformStanding()
pose = "PlatformStanding"
end

function onSwimming(speed)
if speed > 0 then
pose = "Running"
else
pose = "Standing"
end
end

function getTool()
for _, kid in ipairs(Figure:GetChildren()) do
if kid.className == "Tool" then return kid end
end
return nil
end

function getToolAnim(tool)
for _, c in ipairs(tool:GetChildren()) do
if c.Name == "toolanim" and c.className == "StringValue" then
return c
end
end
return nil
end

function animateTool()

if (toolAnim == "None") then
playToolAnimation("toolnone", toolTransitionTime, Humanoid, Enum.AnimationPriority.Idle)
return
end

if (toolAnim == "Slash") then
playToolAnimation("toolslash", 0, Humanoid, Enum.AnimationPriority.Action)
return
end

if (toolAnim == "Lunge") then
playToolAnimation("toollunge", 0, Humanoid, Enum.AnimationPriority.Action)
return
end
end

function moveSit()
RightShoulder.MaxVelocity = 0.15
LeftShoulder.MaxVelocity = 0.15
RightShoulder:SetDesiredAngle(3.14 /2)
LeftShoulder:SetDesiredAngle(-3.14 /2)
RightHip:SetDesiredAngle(3.14 /2)
LeftHip:SetDesiredAngle(-3.14 /2)
end

local lastTick = 0

function move(time)
local amplitude = 1
local frequency = 1
  local deltaTime = time - lastTick
  lastTick = time

local climbFudge = 0
local setAngles = false

  if (jumpAnimTime > 0) then
  jumpAnimTime = jumpAnimTime - deltaTime
  end

if (pose == "FreeFall" and jumpAnimTime <= 0) then
playAnimation("fall", fallTransitionTime, Humanoid)
elseif (pose == "Seated") then
playAnimation("sit", 0.5, Humanoid)
return
elseif (pose == "Running") then
playAnimation("walk", 0.1, Humanoid)
elseif (pose == "Dead" or pose == "GettingUp" or pose == "FallingDown" or pose == "Seated" or pose == "PlatformStanding") then
-- print("Wha " .. pose)
stopAllAnimations()
amplitude = 0.1
frequency = 1
setAngles = true
end

if (setAngles) then
local desiredAngle = amplitude * math.sin(time * frequency)

RightShoulder:SetDesiredAngle(desiredAngle + climbFudge)
LeftShoulder:SetDesiredAngle(desiredAngle - climbFudge)
RightHip:SetDesiredAngle(-desiredAngle)
LeftHip:SetDesiredAngle(-desiredAngle)
end

-- Tool Animation handling
local tool = getTool()
if tool and tool:FindFirstChild("Handle") then

local animStringValueObject = getToolAnim(tool)

if animStringValueObject then
toolAnim = animStringValueObject.Value
-- message recieved, delete StringValue
animStringValueObject.Parent = nil
toolAnimTime = time + .3
end

if time > toolAnimTime then
toolAnimTime = 0
toolAnim = "None"
end

animateTool()
else
stopToolAnimations()
toolAnim = "None"
toolAnimInstance = nil
toolAnimTime = 0
end
end

-- connect events
Humanoid.Died:connect(onDied)
Humanoid.Running:connect(onRunning)
Humanoid.Jumping:connect(onJumping)
Humanoid.Climbing:connect(onClimbing)
Humanoid.GettingUp:connect(onGettingUp)
Humanoid.FreeFalling:connect(onFreeFall)
Humanoid.FallingDown:connect(onFallingDown)
Humanoid.Seated:connect(onSeated)
Humanoid.PlatformStanding:connect(onPlatformStanding)
Humanoid.Swimming:connect(onSwimming)

-- setup emote chat hook
game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)
local emote = ""
if msg == "/e dance" then
emote = dances[math.random(1, #dances)]
elseif (string.sub(msg, 1, 3) == "/e ") then
emote = string.sub(msg, 4)
elseif (string.sub(msg, 1, 7) == "/emote ") then
emote = string.sub(msg, 8)
end

if (pose == "Standing" and emoteNames[emote] ~= nil) then
playAnimation(emote, 0.1, Humanoid)
end

end)


-- main program

-- initialize to idle
playAnimation("idle", 0.1, Humanoid)
pose = "Standing"

while Figure.Parent ~= nil do
local _, time = wait(0.1)
move(time)
end

if Humanoid.Health == 0
then
print("death occured, waiting for respawn")
Figure:WaitForChild("Humanoid")
print("making r6 again")
oof()
end
end
oof()
					loader()
				end
		
			end
		else
			game.StarterGui:SetCore("SendNotification", {
				Title = "You are not a...";
				Text = "Premium User :(";
				Duration = 5;
			})
		end
	end

end)

Player.Chatted:connect(function(cht)
	if cht:match("/r15") then
		if _PuS then
			if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
				game.StarterGui:SetCore("SendNotification", {
					Title = "r15 charactor loaded!";
					Text = "Client-side / only you see what is happening";
					Duration = 5;
				})
				loader()
wait(2)

Player = game.Players.localPlayer


local function CharacterAdded(Character)
                if Character then
                        
                        local R15Model = Instance.new("Model")
                        R15Model.Name = "R15Model"
                        R15Model.Parent = Character
                        
                        local function CreateLimb(Name,Color,Size,Transparency,ConnectToLimb,MotorName,C0,C1,MeshId)
                                local Part = Instance.new("Part")
                                Part.FormFactor = "Custom"
                                Part.Size = Size
                                Part.BrickColor = Color
                                Part.CanCollide = false
                                Part.Name = Name
                                Part.Transparency = (Transparency == 0.001 and 0 or Transparency)
                                Part.TopSurface = "Smooth"
                                Part.BottomSurface = "Smooth"
                                
                                local Motor = Instance.new("Motor6D")
                                Motor.C0 = C0
                                Motor.C1 = C1
                                Motor.Part0 = ConnectToLimb
                                Motor.Part1 = Part
                                Motor.Name = MotorName
                                Motor.MaxVelocity = 0.1
                                Motor.Parent = ConnectToLimb
                                
                                if MeshId then
                                        local Mesh = Instance.new("SpecialMesh")
                                        Mesh.MeshType = "FileMesh"
                                        Mesh.MeshId = MeshId
                                        Mesh.Scale = Vector3.new(0.99,0.99,0.99)
                                        Mesh.Parent = Part
                                end
                                
                                if MeshId and Transparency == 0.001 then
                                        local ShirtTexturePart = Instance.new("Part")
                                        ShirtTexturePart.FormFactor = "Custom"
                                        ShirtTexturePart.Size = Size
                                        ShirtTexturePart.BrickColor = Color
                                        ShirtTexturePart.CanCollide = false
                                        ShirtTexturePart.Name = "ShirtTexturePart"
                                        ShirtTexturePart.Transparency = Transparency
                                        ShirtTexturePart.TopSurface = "Smooth"
                                        ShirtTexturePart.BottomSurface = "Smooth"
                                        
                                        local Mesh = Instance.new("SpecialMesh")
                                        Mesh.MeshType = "FileMesh"
                                        Mesh.MeshId = MeshId
                                        Mesh.Parent = ShirtTexturePart
                                        
                                        local Weld = Instance.new("Weld")
                                        Weld.Part0 = Part
                                        Weld.Part1 = ShirtTexturePart
                                        Weld.Parent = ShirtTexturePart
                                        
                                        ShirtTexturePart.Parent = Part
                                end
                                Part.Parent = R15Model
                                return Part
                        end
                        
                        local HumanoidRootPart = CreateLimb("HumanoidRootPart",BrickColor.new("Medium stone grey"),Vector3.new(1,1,1),1,Character.HumanoidRootPart,"RootConnector",CFrame.new(),CFrame.new(0,0.7,0))
                        local TorsoLower = CreateLimb("TorsoLower",BrickColor.new("Bright blue"),Vector3.new(0.5,0.5,0.5),0.001,HumanoidRootPart,"Root",CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"http://www.roblox.com/asset/?id=366190286")
                        local TorsoUpper = CreateLimb("TorsoUpper",BrickColor.new("Bright blue"),Vector3.new(0.2,0.74,0.2),0.001,TorsoLower,"Waist",CFrame.new(0, 0.739968002, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.369984001, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"http://www.roblox.com/asset/?id=366190087")
                        local Head = CreateLimb("FakeHead",BrickColor.new("Bright yellow"),Vector3.new(1,1,1),0,TorsoUpper,"Neck",CFrame.new(0, 0.566236973, -0.0666489974, 1, 0, 0, 0, 0.993143976, 0.116898, 0, -0.116898, 0.993143976),CFrame.new(0, -0.285073012, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"http://www.roblox.com/asset/?id=366190426")
                        local LeftArmUpper = CreateLimb("LeftArmUpper",BrickColor.new("Bright yellow"),Vector3.new(0.2,0.536,0.2),0.001,TorsoUpper,"LeftShoulder",CFrame.new(1.50177097, 0.220340997, 0, 0, -0.999044001, -0.0437170006, -1, 0, 0, 0, 0.0437170006, -0.999044001),CFrame.new(0, 0.336115986, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"http://www.roblox.com/asset/?id=366186808")
                        local LeftArmLower = CreateLimb("LeftArmLower",BrickColor.new("Bright yellow"),Vector3.new(0.2,0.739,0.2),0.001,LeftArmUpper,"LeftElbow",CFrame.new(0, -0.267791986, 0, 1, 0, 0, 0, 0.998493016, -0.0548710003, 0, 0.0548710003, 0.998493016),CFrame.new(0, 0.369605988, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"http://www.roblox.com/asset/?id=366187079")
                        local LeftHand = CreateLimb("LeftHand",BrickColor.new("Bright yellow"),Vector3.new(0.2,0.37,0.2),0.001,LeftArmLower,"LeftWrist",CFrame.new(0, -0.369605988, 0, 1, 0, 0, 0, -1, 0, 0, 0, -1),CFrame.new(0, -0.184802994, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"http://www.roblox.com/asset/?id=366187331")
                        local RightArmUpper = CreateLimb("RightArmUpper",BrickColor.new("Bright yellow"),Vector3.new(0.2,0.536,0.2),0.001,TorsoUpper,"RightShoulder",CFrame.new(-1.50049305, 0.219521001, 0, 0, 0.999041975, -0.0437709987, -1, 0, 0, 0, 0.0437709987, 0.999041975),CFrame.new(0, 0.335705996, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"http://www.roblox.com/asset/?id=366188623")
                        local RightArmLower = CreateLimb("RightArmLower",BrickColor.new("Bright yellow"),Vector3.new(0.2,0.739,0.2),0.001,RightArmUpper,"RightElbow",CFrame.new(0, -0.296110988, 0, 1, 0, 0, 0, 0.998767972, 0.0496239997, 0, -0.0496239997, 0.998767972),CFrame.new(0, 0.337754011, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"http://www.roblox.com/asset/?id=366188798")
                        local RightHand = CreateLimb("RightHand",BrickColor.new("Bright yellow"),Vector3.new(),0.001,RightArmLower,"RightWrist",CFrame.new(0, -0.337754011, 0, 1, 0, 0, 0, -1, 0, 0, 0, -1),CFrame.new(0, -0.168877006, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"http://www.roblox.com/asset/?id=366189081")
                        local LeftLegUpper = CreateLimb("LeftLegUpper",BrickColor.new("Br. yellowish green"),Vector3.new(0.2,0.784,0.2),0.001,TorsoLower,"LeftHip",CFrame.new(0.457044005, -0.495086014, 0, 1, 0, 0, 0, 1, -0.000100999998, 0, 0.000100999998, 1),CFrame.new(0, 0.388933986, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"http://www.roblox.com/asset/?id=366187724")
                        local LeftLegLower = CreateLimb("LeftLegLower",BrickColor.new("Br. yellowish green"),Vector3.new(0.2,0.803,0.2),0.001,LeftLegUpper,"LeftKnee",CFrame.new(0, -0.388933986, 0, 1, 9.99999997e-007, 0, -9.99999997e-007, 0.991840005, -0.127486005, 0, 0.127486005, 0.991840005),CFrame.new(0, 0.401580006, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"http://www.roblox.com/asset/?id=366188102")
                        local LeftFoot = CreateLimb("LeftFoot",BrickColor.new("Br. yellowish green"),Vector3.new(0.2,0.402,0.2),0.001,LeftLegLower,"LeftAnkle",CFrame.new(0, -0.401578993, 0, 1, 0, 0, 0, -1, 0, 0, 0, -1),CFrame.new(0, -0.200790003, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"http://www.roblox.com/asset/?id=366188387")
                        local RightLegUpper = CreateLimb("RightLegUpper",BrickColor.new("Br. yellowish green"),Vector3.new(0.2,0.784,0.2),0.001,TorsoLower,"RightHip",CFrame.new(-0.451141, -0.498115987, 0, 1, 0, 0, 0, 0.999954998, 0.0095180003, 0, -0.0095180003, 0.999954998),CFrame.new(0, 0.391921997, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"http://www.roblox.com/asset/?id=366189770")
                        local RightLegLower = CreateLimb("RightLegLower",BrickColor.new("Br. yellowish green"),Vector3.new(0.2,0.796,0.2),0.001,RightLegUpper,"RightKnee",CFrame.new(0, -0.391921997, 0, 1, 0, 0, 0, 0.992762029, -0.120096996, 0, 0.120096996, 0.992762029),CFrame.new(0, 0.39814499, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"http://www.roblox.com/asset/?id=366189509")
                        local RightFoot = CreateLimb("RightFoot",BrickColor.new("Br. yellowish green"),Vector3.new(0.2, 0.398, 0.2),0.001,RightLegLower,"RightAnkle",CFrame.new(0, -0.39814499, 0, 1, 0, 0, 0, -1, 0, 0, 0, -1),CFrame.new(0, -0.199073002, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"http://www.roblox.com/asset/?id=366189977")
                        
                        --if Character:WaitForChild("Head"):WaitForChild("Mesh").MeshId ~= "" then
                        --        Head.MeshId = Character.Head.Mesh.MeshId
                        --end
                        
                        spawn(function() Character:WaitForChild("Animate").Disabled = false end)
                        
                        
                        local function Clear(Name,Alternative,ColorParts)
                                local Part = Character:WaitForChild(Name)
                                Part.Transparency = (Name == "Head" and 0.99 or 1)
                                local function ChildAdded(Ins)
                                        delay(0.05,function()
                                                if Ins.Name == "face" then
                                                        if Alternative:FindFirstChild("face") then Alternative:FindFirstChild("face"):Destroy() end
                                                        Ins.Parent = Alternative
                                                elseif Ins:IsA("Motor6D") and string.sub(Ins.Name,1,5) ~= "Fake_" then
                                                        Ins.Name = "Fake_"..Ins.Name
                                                elseif Ins.Name == "HeadWeld" then
                                                        delay(0.05,function()
                                                                Ins.Parent = Head
                                                                Ins.Part0 = Head
                                                                Ins.C1 = CFrame.new(0,-0.15,0.125) * Ins.C1 * CFrame.Angles(0,math.pi,0)
                                                        end)
                                                elseif not Ins:IsA("Weld") then
                                                        Ins:Destroy()
                                                end
                                        end)
                                end
                                for _,Sub in pairs(Part:GetChildren()) do
                                        ChildAdded(Sub)
                                end
                                Part.ChildAdded:connect(ChildAdded)
                                
                                local function Color()
                                        for _,Sub in pairs(ColorParts) do
                                                Sub.BrickColor = Part.BrickColor
                                                local TexturePart = Sub:FindFirstChild("ShirtTexturePart")
                                                if TexturePart then
                                                        TexturePart.BrickColor = Part.BrickColor
                                                end
                                        end
                                end
                                Color()
                                Part.Changed:connect(Color)
                        end
                        
                        Clear("HumanoidRootPart",HumanoidRootPart,{HumanoidRootPart})
                        Clear("Head",Head,{Head})
                        Clear("Torso",nil,{TorsoLower,TorsoUpper})
                        Clear("Left Arm",nil,{LeftArmLower,LeftArmUpper,LeftHand})
                        Clear("Right Arm",nil,{RightArmLower,RightArmUpper,RightHand})
                        Clear("Left Leg",nil,{LeftLegLower,LeftLegUpper,LeftFoot})
                        Clear("Right Leg",nil,{RightLegLower,RightLegUpper,RightFoot})
                        
                        local ShirtUsed = false
                        local function ChildAdded(Ins)
                                if Ins:IsA("Hat") and string.sub(Ins.Name,1,7) ~= "Scaled_" then
                                        delay(0.05,function()
                                                local Mesh = Ins:WaitForChild("Handle"):WaitForChild("Mesh")
                                                Ins.AttachmentPos = Ins.AttachmentPos 
                                                Mesh.Scale = Mesh.Scale
                                                Ins.Name = "Scaled_"..Ins.Name
                                        end)
                                elseif Ins:IsA("Shirt") then
                                        ShirtUsed = true
                                        TorsoLower.ShirtTexturePart.Mesh.TextureId = Ins.ShirtTemplate
                                        TorsoUpper.ShirtTexturePart.Mesh.TextureId = Ins.ShirtTemplate
                                        LeftArmLower.ShirtTexturePart.Mesh.TextureId = Ins.ShirtTemplate
                                        LeftArmUpper.ShirtTexturePart.Mesh.TextureId = Ins.ShirtTemplate
                                        LeftHand.ShirtTexturePart.Mesh.TextureId = Ins.ShirtTemplate
                                        RightArmLower.ShirtTexturePart.Mesh.TextureId = Ins.ShirtTemplate
                                        RightArmUpper.ShirtTexturePart.Mesh.TextureId = Ins.ShirtTemplate
                                        RightHand.ShirtTexturePart.Mesh.TextureId = Ins.ShirtTemplate
                                elseif Ins:IsA("Pants") then
                                        LeftLegUpper.ShirtTexturePart.Mesh.TextureId = Ins.PantsTemplate
                                        LeftLegLower.ShirtTexturePart.Mesh.TextureId = Ins.PantsTemplate
                                        LeftFoot.ShirtTexturePart.Mesh.TextureId = Ins.PantsTemplate
                                        RightLegUpper.ShirtTexturePart.Mesh.TextureId = Ins.PantsTemplate
                                        RightLegLower.ShirtTexturePart.Mesh.TextureId = Ins.PantsTemplate
                                        RightFoot.ShirtTexturePart.Mesh.TextureId = Ins.PantsTemplate
                                        if ShirtUsed ~= true then
                                                TorsoLower.ShirtTexturePart.Mesh.TextureId = Ins.PantsTemplate
                                                TorsoUpper.ShirtTexturePart.Mesh.TextureId = Ins.PantsTemplate
                                        end
                                end
                        end
                        
                        for _,Sub in pairs(Character:GetChildren()) do
                                ChildAdded(Sub)
                        end
                        Character.ChildAdded:connect(ChildAdded)
                end
        end
        
        CharacterAdded(Player.Character)
        Player.CharacterAdded:connect(CharacterAdded)

script.Parent = game.Players.LocalPlayer.Character
function   waitForChild(parent, childName)
        local child = parent:findFirstChild(childName)
        if child then return child end
        while true do
                child = parent.ChildAdded:wait()
                if child.Name==childName then return child end
        end
end

local Figure = script.Parent
local Humanoid = waitForChild(Figure, "Humanoid")
local pose = "Standing"

local currentAnim = ""
local currentAnimInstance = nil
local currentAnimTrack = nil
local currentAnimKeyframeHandler = nil
local currentAnimSpeed = 1.0
local animTable = {}
local animNames = { 
        idle =         {        
                                { id = "http://www.roblox.com/asset/?id=361250879", weight = 1 },
                                { id = "http://www.roblox.com/asset/?id=361250964", weight = 1 },
                                { id = "http://www.roblox.com/asset/?id=361250801", weight = 9 }
                        },
        walk =         {         
                                { id = "http://www.roblox.com/asset/?id=361250532", weight = 10 } 
                        }, 
        run =         {
                                { id = "http://www.roblox.com/asset/?id=361250532", weight = 10 } 
                        }, 
        jump =         {
                                { id = "http://www.roblox.com/asset/?id=361251250", weight = 10 } 
                        }, 
        fall =         {
                                { id = "http://www.roblox.com/asset/?id=361259102", weight = 10 } 
                        }, 
        climb = {
                                { id = "http://www.roblox.com/asset/?id=361251073", weight = 10 } 
                        }, 
        sit =         {
                                { id = "http://www.roblox.com/asset/?id=178130996", weight = 10 } 
                        },        
        toolnone = {
                                { id = "http://www.roblox.com/asset/?id=182393478", weight = 10 } 
                        },
        toolslash = {
                                { id = "http://www.roblox.com/asset/?id=129967390", weight = 10 } 
--                                { id = "slash.xml", weight = 10 } 
                        },
        toollunge = {
                                { id = "http://www.roblox.com/asset/?id=129967478", weight = 10 } 
                        },
        wave = {
                                { id = "http://www.roblox.com/asset/?id=128777973", weight = 10 } 
                        },
        point = {
                                { id = "http://www.roblox.com/asset/?id=128853357", weight = 10 } 
                        },
        dance = {
                                { id = "http://www.roblox.com/asset/?id=182435998", weight = 10 }, 
                                { id = "http://www.roblox.com/asset/?id=182491037", weight = 10 }, 
                                { id = "http://www.roblox.com/asset/?id=182491065", weight = 10 } 
                        },
        dance2 = {
                                { id = "http://www.roblox.com/asset/?id=182436842", weight = 10 }, 
                                { id = "http://www.roblox.com/asset/?id=182491248", weight = 10 }, 
                                { id = "http://www.roblox.com/asset/?id=182491277", weight = 10 } 
                        },
        dance3 = {
                                { id = "http://www.roblox.com/asset/?id=182436935", weight = 10 }, 
                                { id = "http://www.roblox.com/asset/?id=182491368", weight = 10 }, 
                                { id = "http://www.roblox.com/asset/?id=182491423", weight = 10 } 
                        },
        laugh = {
                                { id = "http://www.roblox.com/asset/?id=129423131", weight = 10 } 
                        },
        cheer = {
                                { id = "http://www.roblox.com/asset/?id=129423030", weight = 10 } 
                        },
}

-- Existance in this list signifies that it is an emote, the value indicates if it is a looping emote
local emoteNames = { wave = false, point = false, dance = true, dance2 = true, dance3 = true, laugh = false, cheer = false}

math.randomseed(tick())

function configureAnimationSet(name, fileList)
        if (animTable[name] ~= nil) then
                for _, connection in pairs(animTable[name].connections) do
                        connection:disconnect()
                end
        end
        animTable[name] = {}
        animTable[name].count = 0
        animTable[name].totalWeight = 0        
        animTable[name].connections = {}

        -- check for config values
        local config = script:FindFirstChild(name)
        if (config ~= nil) then
--                print("Loading anims " .. name)
                table.insert(animTable[name].connections, config.ChildAdded:connect(function(child) configureAnimationSet(name, fileList) end))
                table.insert(animTable[name].connections, config.ChildRemoved:connect(function(child) configureAnimationSet(name, fileList) end))
                local idx = 1
                for _, childPart in pairs(config:GetChildren()) do
                        if (childPart:IsA("Animation")) then
                                table.insert(animTable[name].connections, childPart.Changed:connect(function(property) configureAnimationSet(name, fileList) end))
                                animTable[name][idx] = {}
                                animTable[name][idx].anim = childPart
                                local weightObject = childPart:FindFirstChild("Weight")
                                if (weightObject == nil) then
                                        animTable[name][idx].weight = 1
                                else
                                        animTable[name][idx].weight = weightObject.Value
                                end
                                animTable[name].count = animTable[name].count + 1
                                animTable[name].totalWeight = animTable[name].totalWeight + animTable[name][idx].weight
        --                        print(name .. " [" .. idx .. "] " .. animTable[name][idx].anim.AnimationId .. " (" .. animTable[name][idx].weight .. ")")
                                idx = idx + 1
                        end
                end
        end

        -- fallback to defaults
        if (animTable[name].count <= 0) then
                for idx, anim in pairs(fileList) do
                        animTable[name][idx] = {}
                        animTable[name][idx].anim = Instance.new("Animation")
                        animTable[name][idx].anim.Name = name
                        animTable[name][idx].anim.AnimationId = anim.id
                        animTable[name][idx].weight = anim.weight
                        animTable[name].count = animTable[name].count + 1
                        animTable[name].totalWeight = animTable[name].totalWeight + anim.weight
--                        print(name .. " [" .. idx .. "] " .. anim.id .. " (" .. anim.weight .. ")")
                end
        end
end

-- Setup animation objects
function scriptChildModified(child)
        local fileList = animNames[child.Name]
        if (fileList ~= nil) then
                configureAnimationSet(child.Name, fileList)
        end        
end

script.ChildAdded:connect(scriptChildModified)
script.ChildRemoved:connect(scriptChildModified)


for name, fileList in pairs(animNames) do 
        configureAnimationSet(name, fileList)
end        

-- ANIMATION

-- declarations
local toolAnim = "None"
local toolAnimTime = 0

local jumpAnimTime = 0
local jumpAnimDuration = 0.3

local toolTransitionTime = 0.1
local fallTransitionTime = 0.0

-- functions

function stopAllAnimations()
        local oldAnim = currentAnim

        -- return to idle if finishing an emote
        if (emoteNames[oldAnim] ~= nil and emoteNames[oldAnim] == false) then
                oldAnim = "idle"
        end

        currentAnim = ""
        currentAnimInstance = nil
        if (currentAnimKeyframeHandler ~= nil) then
                currentAnimKeyframeHandler:disconnect()
        end

        if (currentAnimTrack ~= nil) then
                currentAnimTrack:Stop()
                currentAnimTrack:Destroy()
                currentAnimTrack = nil
        end
        return oldAnim
end

function setAnimationSpeed(speed)
        if speed ~= currentAnimSpeed then
                currentAnimSpeed = speed
                currentAnimTrack:AdjustSpeed(currentAnimSpeed)
        end
end

function keyFrameReachedFunc(frameName)
        if (frameName == "End") then
--                print("Keyframe : ".. frameName)

                local repeatAnim = currentAnim
                -- return to idle if finishing an emote
                if (emoteNames[repeatAnim] ~= nil and emoteNames[repeatAnim] == false) then
                        repeatAnim = "idle"
                end
                
                local animSpeed = currentAnimSpeed
                playAnimation(repeatAnim, 0.05, Humanoid)
                setAnimationSpeed(animSpeed)
        end
end

-- Preload animations
function playAnimation(animName, transitionTime, humanoid) 
                
        local roll = math.random(1, animTable[animName].totalWeight) 
        local origRoll = roll
        local idx = 1
        while (roll > animTable[animName][idx].weight) do
                roll = roll - animTable[animName][idx].weight
                idx = idx + 1
        end
        
--        print(animName .. " " .. idx .. " [" .. origRoll .. "]")
        
        local anim = animTable[animName][idx].anim

        -- switch animation                
        if (anim ~= currentAnimInstance) then
                
                if (currentAnimTrack ~= nil) then
                        currentAnimTrack:Stop(transitionTime)
                        currentAnimTrack:Destroy()
                end

                currentAnimSpeed = 1.0
        
                -- load it to the humanoid; get AnimationTrack
                currentAnimTrack = humanoid:LoadAnimation(anim)
                 
                -- play the animation
                currentAnimTrack:Play(transitionTime)
                currentAnim = animName
                currentAnimInstance = anim

                -- set up keyframe name triggers
                if (currentAnimKeyframeHandler ~= nil) then
                        currentAnimKeyframeHandler:disconnect()
                end
                currentAnimKeyframeHandler = currentAnimTrack.KeyframeReached:connect(keyFrameReachedFunc)
                
        end

end

-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------

local toolAnimName = ""
local toolAnimTrack = nil
local toolAnimInstance = nil
local currentToolAnimKeyframeHandler = nil

function toolKeyFrameReachedFunc(frameName)
        if (frameName == "End") then
--                print("Keyframe : ".. frameName)        
                playToolAnimation(toolAnimName, 0.0, Humanoid)
        end
end


function playToolAnimation(animName, transitionTime, humanoid)         
                
                local roll = math.random(1, animTable[animName].totalWeight) 
                local origRoll = roll
                local idx = 1
                while (roll > animTable[animName][idx].weight) do
                        roll = roll - animTable[animName][idx].weight
                        idx = idx + 1
                end
--                print(animName .. " * " .. idx .. " [" .. origRoll .. "]")
                local anim = animTable[animName][idx].anim

                if (toolAnimInstance ~= anim) then
                        
                        if (toolAnimTrack ~= nil) then
                                toolAnimTrack:Stop()
                                toolAnimTrack:Destroy()
                                transitionTime = 0
                        end
                                        
                        -- load it to the humanoid; get AnimationTrack
                        toolAnimTrack = humanoid:LoadAnimation(anim)
                         
                        -- play the animation
                        toolAnimTrack:Play(transitionTime)
                        toolAnimName = animName
                        toolAnimInstance = anim

                        currentToolAnimKeyframeHandler = toolAnimTrack.KeyframeReached:connect(toolKeyFrameReachedFunc)
                end
end

function stopToolAnimations()
        local oldAnim = toolAnimName

        if (currentToolAnimKeyframeHandler ~= nil) then
                currentToolAnimKeyframeHandler:disconnect()
        end

        toolAnimName = ""
        toolAnimInstance = nil
        if (toolAnimTrack ~= nil) then
                toolAnimTrack:Stop()
                toolAnimTrack:Destroy()
                toolAnimTrack = nil
        end


        return oldAnim
end

-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------


function onRunning(speed)
        if speed > 0.01 then
                playAnimation("walk", 0.1, Humanoid)
                if currentAnimInstance and currentAnimInstance.AnimationId == "http://www.roblox.com/asset/?id=361250532" then
                        setAnimationSpeed(speed / 14.5)
                end
                pose = "Running"
        else
                playAnimation("idle", 0.1, Humanoid)
                pose = "Standing"
        end
end

function onDied()
        pose = "Dead"
end

function onJumping()
        playAnimation("jump", 0.1, Humanoid)
        jumpAnimTime = jumpAnimDuration
        pose = "Jumping"
end

function onClimbing(speed)
        local scale = 2.0
        playAnimation("climb", 0.1, Humanoid)
        setAnimationSpeed(speed / scale)
        pose = "Climbing"
end

function onGettingUp()
        pose = "GettingUp"
end

function onFreeFall()
        if (jumpAnimTime <= 0) then
                playAnimation("fall", fallTransitionTime, Humanoid)
        end
        pose = "FreeFall"
end

function onFallingDown()
        pose = "FallingDown"
end

function onSeated()
        pose = "Seated"
end

function onPlatformStanding()
        pose = "PlatformStanding"
end

function onSwimming(speed)
        if speed>0 then
                pose = "Running"
        else
                pose = "Standing"
        end
end

function getTool()        
        for _, kid in ipairs(Figure:GetChildren()) do
                if kid.className == "Tool" then return kid end
        end
        return nil
end

function getToolAnim(tool)
        for _, c in ipairs(tool:GetChildren()) do
                if c.Name == "toolanim" and c.className == "StringValue" then
                        return c
                end
        end
        return nil
end

function animateTool()
        
        if (toolAnim == "None") then
                playToolAnimation("toolnone", toolTransitionTime, Humanoid)
                return
        end

        if (toolAnim == "Slash") then
                playToolAnimation("toolslash", 0, Humanoid)
                return
        end

        if (toolAnim == "Lunge") then
                playToolAnimation("toollunge", 0, Humanoid)
                return
        end
end

function moveSit()
        RightShoulder.MaxVelocity = 0.15
        LeftShoulder.MaxVelocity = 0.15
        RightShoulder:SetDesiredAngle(3.14 /2)
        LeftShoulder:SetDesiredAngle(-3.14 /2)
        RightHip:SetDesiredAngle(3.14 /2)
        LeftHip:SetDesiredAngle(-3.14 /2)
end

local lastTick = 0

function move(time)
        local amplitude = 1
        local frequency = 1
          local deltaTime = time - lastTick
          lastTick = time

        local climbFudge = 0
        local setAngles = false

          if (jumpAnimTime > 0) then
                  jumpAnimTime = jumpAnimTime - deltaTime
          end

        if (pose == "FreeFall" and jumpAnimTime <= 0) then
                playAnimation("fall", fallTransitionTime, Humanoid)
        elseif (pose == "Seated") then
                playAnimation("sit", 0.5, Humanoid)
                return
        elseif (pose == "Running") then
                playAnimation("walk", 0.1, Humanoid)
        elseif (pose == "Dead" or pose == "GettingUp" or pose == "FallingDown" or pose == "Seated" or pose == "PlatformStanding") then
--                print("Wha " .. pose)
                stopAllAnimations()
                amplitude = 0.1
                frequency = 1
                setAngles = true
        end

--        if (setAngles) then
        if (false) then
                desiredAngle = amplitude * math.sin(time * frequency)

                RightShoulder:SetDesiredAngle(desiredAngle + climbFudge)
                LeftShoulder:SetDesiredAngle(desiredAngle - climbFudge)
                RightHip:SetDesiredAngle(-desiredAngle)
                LeftHip:SetDesiredAngle(-desiredAngle)
        end

        -- Tool Animation handling
        local tool = getTool()
        if tool then
        
                animStringValueObject = getToolAnim(tool)

                if animStringValueObject then
                        toolAnim = animStringValueObject.Value
                        -- message recieved, delete StringValue
                        animStringValueObject.Parent = nil
                        toolAnimTime = time + .3
                end

                if time > toolAnimTime then
                        toolAnimTime = 0
                        toolAnim = "None"
                end

                animateTool()                
        else
                stopToolAnimations()
                toolAnim = "None"
                toolAnimInstance = nil
                toolAnimTime = 0
        end
end

-- connect events
Humanoid.Died:connect(onDied)
Humanoid.Running:connect(onRunning)
Humanoid.Jumping:connect(onJumping)
Humanoid.Climbing:connect(onClimbing)
Humanoid.GettingUp:connect(onGettingUp)
Humanoid.FreeFalling:connect(onFreeFall)
Humanoid.FallingDown:connect(onFallingDown)
Humanoid.Seated:connect(onSeated)
Humanoid.PlatformStanding:connect(onPlatformStanding)
Humanoid.Swimming:connect(onSwimming)

-- setup emote chat hook
Game.Players.LocalPlayer.Chatted:connect(function(msg)
        local emote = ""
        if (string.sub(msg, 1, 3) == "/e ") then
                emote = string.sub(msg, 4)
        elseif (string.sub(msg, 1, 7) == "/emote ") then
                emote = string.sub(msg, 8)
        end
        
        if (pose == "Standing" and emoteNames[emote] ~= nil) then
                playAnimation(emote, 0.1, Humanoid)
        end
--        print("===> " .. string.sub(msg, 1, 3) .. "(" .. emote .. ")")
end)


-- main program

local runService = game:service("RunService");

-- print("bottom")

-- initialize to idle
playAnimation("idle", 0.1, Humanoid)
pose = "Standing"

while Figure.Parent~=nil do
        local _, time = wait(0.1)
        move(time)
end
			else
				if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
					game.StarterGui:SetCore("SendNotification", {
						Title = "Your already r15 silly!";
						Text = "";
						Duration = 5;
					})
				end
		
			end
		else
			game.StarterGui:SetCore("SendNotification", {
				Title = "You are not a...";
				Text = "Premium User :(";
				Duration = 5;
			})
		end
	end

end)

Player.Chatted:connect(function(cht)
	if cht:match("/naked") then
		if _PuS then
			if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
				game.StarterGui:SetCore("SendNotification", {
					Title = "R6 not supported!";
					Text = "rejoin a R15 game!";
					Duration = 5;
				})
			else
				if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
					game.StarterGui:SetCore("SendNotification", {
						Title = "naked loaded!";
						Text = "Client-side / only you see you are naked";
						Duration = 5;
					})
					while wait() do
						pcall(function()
							if game.Players.LocalPlayer.Character:FindFirstChild("Shirt") then
								game.Players.LocalPlayer.Character.Shirt:Destroy()
							elseif game.Players.LocalPlayer.Character:FindFirstChild("Pants") then
								game.Players.LocalPlayer.Character.Pants:Destroy()
							end
						end)
					end
				end
		
			end
		else
			game.StarterGui:SetCore("SendNotification", {
				Title = "You are not a...";
				Text = "Premium User :(";
				Duration = 5;
			})
		end
	end

end)

Player.Chatted:connect(function(cht)
	if cht:match("/sword") then
		if _PuS then
			game.StarterGui:SetCore("SendNotification", {
				Title = "Epic Sword!";
				Text = "Cleint-Side / If sword disappers reset";
				Duration = 5;
			})
			if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
				loadstring(game:HttpGet("https://raw.githubusercontent.com/Topcoldgaming/--T0P--Admin-command-scripts/main/roblox%20sword%20script.txt"))()
				loader()
			else
				if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
					game.StarterGui:SetCore("SendNotification", {
						Title = "R15 not supported!";
						Text = "Join a R6 game to use command";
						Duration = 5;
					})
				end
		
			end
		else
			game.StarterGui:SetCore("SendNotification", {
				Title = "You are not a...";
				Text = "Premium User :(";
				Duration = 5;
			})
		end
	end

end)

Player.Chatted:connect(function(cht)
	if cht:match("/hitman") then
		if _PuS then
			game.StarterGui:SetCore("SendNotification", {
				Title = "Hitman loaded!";
				Text = "Cleint-Side / R for music / T to one punch";
				Duration = 5;
			})
			if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
				loadstring(game:HttpGet("https://raw.githubusercontent.com/Topcoldgaming/--T0P--Admin-command-scripts/main/Roblox%20Hitman"))()
				loader()
			else
				if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
					game.StarterGui:SetCore("SendNotification", {
						Title = "R15 not supported!";
						Text = "Join a R6 game to use command";
						Duration = 5;
					})
				end
		
			end
		else
			game.StarterGui:SetCore("SendNotification", {
				Title = "You are not a...";
				Text = "Premium User :(";
				Duration = 5;
			})
		end
	end

end)

Player.Chatted:connect(function(cht)
	if cht:match("/invisible") then
		if _PuS then
			if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
				game.StarterGui:SetCore("SendNotification", {
					Title = "R6 invis is:";
					Text = "Cleint-Side / to others you will be visible";
					Duration = 5;
				})
				local char = game.Players.LocalPlayer.Character
				char.Head.Transparency = 1
				char['Right Arm'].Transparency = 1
				char['Left Arm'].Transparency = 1
				char.Torso.Transparency = 1
				char['Right Leg'].Transparency = 1
				char['Left Leg'].Transparency = 1
				loader()
			else
				if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
					game.StarterGui:SetCore("SendNotification", {
						Title = "R15 invis is:";
						Text = "Server-Side / to others you will be invisible";
						Duration = 5;
					})
					local player = game.Players.LocalPlayer

					local OldInvisCFrame = player.Character.HumanoidRootPart.CFrame
					player.Character.HumanoidRootPart.CFrame = CFrame.new(0, 9999999, 0)
					wait(0.1)
					player.Character:BreakJoints()
					wait(0.1)
					player.Character.HumanoidRootPart.CFrame = OldInvisCFrame
				end
		
			end
		else
			game.StarterGui:SetCore("SendNotification", {
				Title = "You are not a...";
				Text = "Premium User :(";
				Duration = 5;
			})
		end
	end

end)

Player.Chatted:connect(function(cht)
	if cht:match("/sit") then
		game.Players.LocalPlayer.Character.Humanoid.Sit = true
		loader()
	end

end)

Player.Chatted:connect(function(cht)
if cht:match("/hitbox") then
--Hitbox Extender
--Change 20 to your desired size
--Change the white to your desired color (I recommend white)
_G.HeadSize = 70
_G.Disabled = true

game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.999
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really white")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)
end
end
end
end)
loader()
end

end)

Player.Chatted:connect(function(cht)
	if cht:match("/noclip") then
		local noclip = true -- Gets if you want the noclip
		char = game.Players.LocalPlayer.Character -- Gets your player
		while true do -- Make sure someone is in game
		if noclip == true then
		for _,v in pairs(char:children()) do
		pcall(function()
		if v.className == "Part" then
		v.CanCollide = false
		end
		end)
		end
		end
		game:service("RunService").Stepped:wait()
		end
		loader()
	end

end)

Player.Chatted:connect(function(cht)
	if cht:match("/unfling") then
		game.Players.LocalPlayer.Character.Head:Destroy()
		loader()
	end

end)

Player.Chatted:connect(function(cht)
if cht:match("/fly2") then
_G.FLYING = false
local LP = game:service('Players').LocalPlayer
local T = LP.Character.UpperTorso
local CONTROL = {F = 0, B = 0, L = 0, R = 0}
local lCONTROL = {F = 0, B = 0, L = 0, R = 0}
local SPEED = 5
local MOUSE = LP:GetMouse()


local function FLY()
_G.FLYING = true
local BG = Instance.new('BodyGyro', T)
local BV = Instance.new('BodyVelocity', T)
BG.P = 9e4
BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
BG.cframe = T.CFrame
BV.velocity = Vector3.new(0, 0.1, 0)
BV.maxForce = Vector3.new(9e9, 9e9, 9e9)


spawn(function()
repeat wait()
LP.Character.Humanoid.PlatformStand = true
if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 then
SPEED = 50
elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0) and SPEED ~= 0 then
SPEED = 0
end
if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 then
BV.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B) * 0.2, 0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and SPEED ~= 0 then
BV.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B) * 0.2, 0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
else
BV.velocity = Vector3.new(0, 0.1, 0)
end
BG.cframe = game.Workspace.CurrentCamera.CoordinateFrame
until not _G.FLYING
CONTROL = {F = 0, B = 0, L = 0, R = 0}
lCONTROL = {F = 0, B = 0, L = 0, R = 0}
SPEED = 0
BG:destroy()
BV:destroy()
LP.Character.Humanoid.PlatformStand = false
end)
end
  
MOUSE.KeyDown:connect(function(KEY)
if KEY:lower() == 'w' then
CONTROL.F = 1
elseif KEY:lower() == 's' then
CONTROL.B = -1
elseif KEY:lower() == 'a' then
CONTROL.L = -1 
elseif KEY:lower() == 'd' then
CONTROL.R = 1
end
end)
  
MOUSE.KeyUp:connect(function(KEY)
if KEY:lower() == 'w' then
CONTROL.F = 0
elseif KEY:lower() == 's' then
CONTROL.B = 0
elseif KEY:lower() == 'a' then
CONTROL.L = 0
elseif KEY:lower() == 'd' then
CONTROL.R = 0
end
end)




FLY()
loader()
game:GetService("StarterGui"):SetCore("SendNotification",{
    	Title = "Fly2 enabled";
	Text = "(x) to fly/unfly";
})
end

end)

Player.Chatted:connect(function(cht)
if cht:match("/fly1") then
repeat wait() 
	until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid") 
local mouse = game.Players.LocalPlayer:GetMouse() 
repeat wait() until mouse
local plr = game.Players.LocalPlayer 
local torso = plr.Character.Torso 
local flying = true
local deb = true 
local ctrl = {f = 0, b = 0, l = 0, r = 0} 
local lastctrl = {f = 0, b = 0, l = 0, r = 0} 
local maxspeed = 50 
local speed = 0 

function Fly() 
local bg = Instance.new("BodyGyro", torso) 
bg.P = 9e4 
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
bg.cframe = torso.CFrame 
local bv = Instance.new("BodyVelocity", torso) 
bv.velocity = Vector3.new(0,0.1,0) 
bv.maxForce = Vector3.new(9e9, 9e9, 9e9) 
repeat wait() 
plr.Character.Humanoid.PlatformStand = true 
if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then 
speed = speed+.5+(speed/maxspeed) 
if speed > maxspeed then 
speed = maxspeed 
end 
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then 
speed = speed-1 
if speed < 0 then 
speed = 0 
end 
end 
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then 
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r} 
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then 
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
else 
bv.velocity = Vector3.new(0,0.1,0) 
end 
bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0) 
until not flying 
ctrl = {f = 0, b = 0, l = 0, r = 0} 
lastctrl = {f = 0, b = 0, l = 0, r = 0} 
speed = 0 
bg:Destroy() 
bv:Destroy() 
plr.Character.Humanoid.PlatformStand = false 
end 
mouse.KeyDown:connect(function(key) 
if key:lower() == "x" then 
if flying then flying = false 
else 
flying = true 
Fly() 
end 
elseif key:lower() == "w" then 
ctrl.f = 1 
elseif key:lower() == "s" then 
ctrl.b = -1 
elseif key:lower() == "a" then 
ctrl.l = -1 
elseif key:lower() == "d" then 
ctrl.r = 1 
end 
end) 
mouse.KeyUp:connect(function(key) 
if key:lower() == "w" then 
ctrl.f = 0 
elseif key:lower() == "s" then 
ctrl.b = 0 
elseif key:lower() == "a" then 
ctrl.l = 0 
elseif key:lower() == "d" then 
ctrl.r = 0 
end 
end)
Fly()
game:GetService("StarterGui"):SetCore("SendNotification",{
    	Title = "Fly1 enabled";
	Text = "(x) to fly/unfly";
})
loader()
end

end)

Player.Chatted:connect(function(cht)
	if cht:match("/heal") then
		game.Players.LocalPlayer.Character.Humanoid.Health = 100
		loader()
		wait(2)
		if game.Players.LocalPlayer.Character.Humanoid.Health ~= 100 then
			game.StarterGui:SetCore("SendNotification", {
				Title = ":(";
				Text = "A anti-cheat may be blocking the healer";
				Duration = 3;
			})
		else
			if game.Players.LocalPlayer.Character.Humanoid.Health == 100 then
				game.StarterGui:SetCore("SendNotification", {
					Title = "healed";
					Text = ":)";
					Duration = 3;
				})
			end
		end
	end

end)

Player.Chatted:connect(function(cht)
	if cht:match("/reset") then
		game.Players.LocalPlayer.Character:Destroy()
		loader()
	end

end)

Player.Chatted:connect(function(cht)
	if cht:match("/godmode") then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Topcoldgaming/Roblox-godmode/main/roblox%20god.txt"))()
		loader()
	end

end)

Player.Chatted:connect(function(cht)
	if cht:match("/ungodmode") then
		game.Players.LocalPlayer:kick("rejoin the game")
		loader()
	end

end)

Player.Chatted:connect(function(cht)
	if cht:match("/reset") then
		game.Players.LocalPlayer.Character.Humanoid.Health = 0
		loader()
	end

end)

Player.Chatted:connect(function(cht)
	if cht:match("/superman") then
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = 120
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 250
		loader()
	end

end)

Player.Chatted:connect(function(cht)
	if cht:match("/unsuperman") then
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = 16
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
		loader()
	end

end)

Player.Chatted:connect(function(cht)
	if cht:match("/antiafk") then
		local vu = game:GetService("VirtualUser") -- AntiAfk
		game:GetService("Players").LocalPlayer.Idled:connect(function()
			vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
			wait(1)
			vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end)
		loader()
	end

end)

Player.Chatted:connect(function(cht)
	if cht:match("/noseat") then
		--SEAT DESTRUCTIONNNNN
		for i,v in pairs(game.Workspace:GetDescendants()) do
			if v:IsA("Seat") then
				v:Destroy()
			end
		end
		loader()
	end

end)

Player.Chatted:connect(function(cht)
	if cht:match("/unfly") then
		if flying then 
			flying = false
		end
		loader()
	end

end)

Player.Chatted:connect(function(cht)
	if cht:match("/savepos") then
		local player = game.Players.LocalPlayer
		OldposCFrame = player.Character.HumanoidRootPart.CFrame
		loader()
	end

end)

Player.Chatted:connect(function(cht)
	if cht:match("/loadpos") then
		local player = game.Players.LocalPlayer
		player.Character.HumanoidRootPart.CFrame = OldposCFrame
		loader()
	end

end)

Player.Chatted:connect(function(cht)
	if cht:match("/fling") then
		-- Spin script
 
		power = 1000 -- change this to make it more or less powerful
 
		game:GetService('RunService').Stepped:connect(function()
		game.Players.LocalPlayer.Character.Head.CanCollide = false
		game.Players.LocalPlayer.Character.UpperTorso.CanCollide = false
		game.Players.LocalPlayer.Character.LowerTorso.CanCollide = false
		game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
		end)
		wait(.1)
		local bambam = Instance.new("BodyThrust")
		bambam.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
		bambam.Force = Vector3.new(power,0,power)
		bambam.Location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
 
		-- Noclip Script
 
		local noclip = true -- Gets if you want the noclip
		char = game.Players.LocalPlayer.Character -- Gets your player
		while true do -- Make sure someone is in game
		if noclip == true then
		for _,v in pairs(char:children()) do
		pcall(function()
		if v.className == "Part" then
		v.CanCollide = false
		end
		end)
		end
		end
		game:service("RunService").Stepped:wait()
		end
		loader()
	end

end)

Player.Chatted:connect(function(cht)
	if cht:match("/superfling") then
		-- Spin script
 
		power = 2000 -- change this to make it more or less powerful
 
		game:GetService('RunService').Stepped:connect(function()
		game.Players.LocalPlayer.Character.Head.CanCollide = false
		game.Players.LocalPlayer.Character.UpperTorso.CanCollide = false
		game.Players.LocalPlayer.Character.LowerTorso.CanCollide = false
		game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
		end)
		wait(.1)
		local bambam = Instance.new("BodyThrust")
		bambam.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
		bambam.Force = Vector3.new(power,0,power)
		bambam.Location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
 
		-- Noclip Script
 
		local noclip = true -- Gets if you want the noclip
		char = game.Players.LocalPlayer.Character -- Gets your player
		while true do -- Make sure someone is in game
		if noclip == true then
		for _,v in pairs(char:children()) do
		pcall(function()
		if v.className == "Part" then
		v.CanCollide = false
		end
		end)
		end
		end
		game:service("RunService").Stepped:wait()
		end
		loader()
	end

end)

game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Loaded $-T0P-$ Admin commands v2.2";
	Text = "Say /cmds for a list of commands";
	Time = 20;
	Icon = "rbxassetid://505845268";
	Button1 = "Okay";
})
local notifSound = Instance.new("Sound",workspace)
notifSound.PlaybackSpeed = 1.5
notifSound.Volume = 0.15
notifSound.SoundId = "rbxassetid://170765130"
notifSound.PlayOnRemove = true
notifSound:Destroy()
