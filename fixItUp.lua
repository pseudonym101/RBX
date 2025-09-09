COREGUI = game:GetService("CoreGui")
Players = game:GetService("Players")
workspace = game:GetService("Workspace")
Input = game:GetService("UserInputService")

local zgui = Instance.new("ScreenGui")
local zframe = Instance.new("Frame")
local zcn = Instance.new("UICorner")
local zlb = Instance.new("TextLabel")
local zbtn = Instance.new("TextButton")
local zddn = Instance.new("Frame")
local zip = Instance.new("TextBox")

local py1 = game.Players.Pseudonym101

local Noclip = nil
local Clip = nil

local vsb = 1
local cclip = 1
local cfog = 1
local cdex = 0
local ciy = 0

 
Players.LocalPlayer.CameraMaxZoomDistance = 500

zgui.Parent = COREGUI

--border
local function addBorder(uiElement, cornerRadius, padding)
	padding = padding or 1
	local border = Instance.new("Frame")
	border.Size = uiElement.Size + UDim2.new(0, padding * 2, 0, padding * 2)
	border.Position = uiElement.Position - UDim2.new(0, padding, 0, padding)
	border.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	border.BorderSizePixel = 0
	border.ZIndex = uiElement.ZIndex - 1
	border.Parent = uiElement.Parent

	local borderCorner = Instance.new("UICorner")
	borderCorner.CornerRadius = UDim.new(0, cornerRadius)
	borderCorner.Parent = border
end

zframe.Name = "menu"
zframe.Parent = zgui
zframe.Position = UDim2.new(0,100,0,100)
zframe.Size = UDim2.new(0,500,0,500)
zframe.Visible = true
zframe.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
zframe.BorderSizePixel = 0
--zframe.AnchorPoint = Vector2.new(0.5, 0.5)
zframe.ClipsDescendants = true
zframe.BackgroundTransparency = 0.5
zcn.CornerRadius = UDim.new(0, 8)
zcn.Parent = zframe

zbtn.TextColor3 = Color3.fromRGB(150, 150, 150)
zbtn.Font = Enum.Font.Gotham
zbtn.TextSize = 18
zbtn.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
zbtn.BackgroundTransparency = 0
zbtn.TextXAlignment = Enum.TextXAlignment.Left
zbtn.AutoButtonColor = false -- Prevent Roblox hover highlight
zbtn.Parent = zframe
zbtn.TextXAlignment = Enum.TextXAlignment.Center
addBorder(zbtn, 1.5)

zddn.Size = UDim2.new(1, -40, 0, 90)
zddn.Position = UDim2.new(0, 0, 0, -35 + 30)
zddn.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
zddn.Visible = false
local dcn = zcn:Clone()
dcn.CornerRadius = UDim.new(0, 8)
dcn.Parent = zddn


zip.Name = "InputBox"
zip.Size = UDim2.new(0, 150, 0, 20)
zip.PlaceholderText = "Type something..."
zip.Text = ""
zip.TextColor3 = Color3.new(1, 1, 1)
zip.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
zip.BorderSizePixel = 0
zip.Font = Enum.Font.Gotham
zip.TextSize = 16
zip.ZIndex = 2

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 8)
corner.Parent = zip

local zbtn1 = zbtn:Clone()
zbtn1.Name = "button1"
zbtn1.Parent = zframe
zbtn1.Position = UDim2.new(0,2,0,2)
zbtn1.Size = UDim2.new(0,70,0,20)
zbtn1.Text = "No Clip"
local cn1 = zcn:Clone()
cn1.Parent = zbtn1
addBorder(zbtn1, 3)

local zbtn2 = zbtn:Clone()
zbtn2.Name = "button2"
zbtn2.Parent = zframe
zbtn2.Position = UDim2.new(0,2,0,24)
zbtn2.Size = UDim2.new(0,70,0,20)
zbtn2.Text = "No FOG"
local cn2 = zcn:Clone()
cn2.Parent = zbtn2
addBorder(zbtn2, 3)

local zbtn3 = zbtn:Clone()
zbtn3.Name = "button3"
zbtn3.Parent = zframe
zbtn3.Position = UDim2.new(0,2,0,46)
zbtn3.Size = UDim2.new(0,70,0,20)
zbtn3.Text = "DEX"
local cn3 = zcn:Clone()
cn3.Parent = zbtn3
addBorder(zbtn3, 3)

local zbtn4 = zbtn:Clone()
zbtn4.Name = "button4"
zbtn4.Parent = zframe
zbtn4.Position = UDim2.new(0,2,0,68)
zbtn4.Size = UDim2.new(0,70,0,20)
zbtn4.Text = "IY"
local cn4 = zcn:Clone()
cn4.Parent = zbtn4
addBorder(zbtn4, 3)

local zbtn5 = zbtn:Clone()
zbtn5.Name = "button5"
zbtn5.Parent = zframe
zbtn5.Position = UDim2.new(0,2,0,90)
zbtn5.Size = UDim2.new(0,70,0,20)
zbtn5.Text = "CallCar"
local cn5 = zcn:Clone()
cn5.Parent = zbtn5
local Cdd = zddn:Clone()
Cdd.Parent = zbtn5
addBorder(zbtn5, 3)

local zbtn6 = zbtn:Clone()
zbtn6.Name = "button6"
zbtn6.Parent = zframe
zbtn6.Position = UDim2.new(0,2,0,112)
zbtn6.Size = UDim2.new(0,70,0,20)
zbtn6.Text = "Paint"
local cn6 = zcn:Clone()
cn6.Parent = zbtn6
addBorder(zbtn6, 3)

local zbtn7 = zbtn:Clone()
zbtn7.Name = "button7"
zbtn7.Parent = zframe
zbtn7.Position = UDim2.new(0,2,0,134)
zbtn7.Size = UDim2.new(0,70,0,20)
zbtn7.Text = "TPshop"
local cn7 = zcn:Clone()
cn7.Parent = zbtn7
addBorder(zbtn7, 3)

local zbtn8 = zbtn:Clone()
zbtn8.Name = "button8"
zbtn8.Parent = zframe
zbtn8.Position = UDim2.new(0,2,0,156)
zbtn8.Size = UDim2.new(0,70,0,20)
zbtn8.Text = "Fix"
local cn8 = zcn:Clone()
cn8.Parent = zbtn8
addBorder(zbtn8, 3)

local zbtn9 = zbtn:Clone()
zbtn9.Name = "button9"
zbtn9.Parent = zframe
zbtn9.Position = UDim2.new(0,2,0,178)
zbtn9.Size = UDim2.new(0,70,0,20)
zbtn9.Text = "Buy"
local cn9 = zcn:Clone()
cn9.Parent = zbtn9
addBorder(zbtn9, 3)

local zbtn10 = zbtn:Clone()
zbtn10.Name = "button10"
zbtn10.Parent = zframe
zbtn10.Position = UDim2.new(0,2,0,200)
zbtn10.Size = UDim2.new(0,70,0,20)
zbtn10.Text = "Sell"
local cn10 = zcn:Clone()
cn10.Parent = zbtn10
addBorder(zbtn10, 3)

local zbtn11 = zbtn:Clone()
zbtn11.Name = "button11"
zbtn11.Parent = zframe
zbtn11.Position = UDim2.new(0,2,0,222)
zbtn11.Size = UDim2.new(0,70,0,20)
zbtn11.Text = "Sell"
local cn11 = zcn:Clone()
cn11.Parent = zbtn11
addBorder(zbtn11, 3)


local ip1 = zip:Clone()	
ip1.Parent = zframe
ip1.Position = UDim2.new(0, 100, 0, 2)

local ip2 = zip:Clone()	
ip2.Parent = zframe
ip2.Position = UDim2.new(0, 100, 0, 24)

local ip3 = zip:Clone()	
ip3.Parent = zframe
ip3.Position = UDim2.new(0, 100, 0, 46)

local ip4 = zip:Clone()
ip4.Parent = zframe
ip4.Position = UDim2.new(0, 100, 0, 68)

local ip5 = zip:Clone()	
ip5.Parent = zframe
ip5.Position = UDim2.new(0, 100, 0, 90)

local ip6 = zip:Clone()	
ip6.Parent = zframe
ip6.Position = UDim2.new(0, 100, 0, 112)

local ip7 = zip:Clone() 
ip7.Parent = zframe
ip7.Position = UDim2.new(0, 100, 0, 134)

Input.InputBegan:Connect(function(key)
	local function onoff()
		if not zframe then
			warn("zframe is nil!")
        		return
		end
		if vsb == 1 then
			vsb = 0
			zframe.Visible = true
			task.wait(0.1)
		else
			vsb = 1
			zframe.Visible = false
			task.wait(0.1)
		end
	end
	if key.KeyCode == Enum.KeyCode.KeypadPlus then
		onoff()
		task.wait(0.1)
	end
end)

--drag ui

local dragging = false
local dragInput, mousePos, framePos

zframe.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = true
		mousePos = input.Position
		framePos = zframe.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

zframe.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement then
		dragInput = input
	end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		local delta = input.Position - mousePos
		zframe.Position = UDim2.new(
			framePos.X.Scale, framePos.X.Offset + delta.X,
			framePos.Y.Scale, framePos.Y.Offset + delta.Y
		)
	end
end)


--noclip

local function noclip()
	Clip = false
	local function Nocl()
		if Clip == false and game.Players.LocalPlayer.Character ~= nil then
			for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
				if v:IsA('BasePart') and v.CanCollide then
					v.CanCollide = false

				end
			end
		end
		wait(0.21) -- basic optimization
	end
	Noclip = game:GetService('RunService').Stepped:Connect(Nocl)
end

local function clip()
	if Noclip then Noclip:Disconnect() end
	Clip = true

end

local function nclip()
	if cclip == 1 then
		noclip()
		cclip = 0
		zbtn1.Text = "Nocliped"
	else
		clip()
		cclip = 1
		zbtn1.Text = "Cliped"
	end

end


--nofog
local function nofog()

repeat task.wait() until game:IsLoaded()
wait(5) -- extra load to ensure the script is working
for i,v in pairs(game.Lighting:GetChildren()) do
-- if v:IsA("") or v:IsA("Sky") or v:IsA("BlurEffect") or v:IsA("BloomEffect") or v:IsA("SunRaysEffect") then
if v:IsA("Sky") or v:IsA("BloomEffect") or v:IsA("SunRaysEffect") then
v:Destroy()
end
end

game.Lighting.Ambient = Color3.fromRGB(255, 255, 255)
game.Lighting.Brightness = 1
game.Lighting.ClockTime = 14
game.Lighting.ColorShift_Bottom = Color3.fromRGB(255, 255, 255)
game.Lighting.ColorShift_Top = Color3.fromRGB(255, 255, 255)
game.Lighting.ExposureCompensation = 0
game.Lighting.FogColor = Color3.fromRGB(255, 255, 255)
game.Lighting.FogEnd = 999999999
game.Lighting.GeographicLatitude = 41.733
game.Lighting.OutdoorAmbient = Color3.fromRGB(255, 255, 255)
game.Lighting.GlobalShadows = true
game.Lighting.Changed:Connect(function()
game.Lighting.Ambient = Color3.fromRGB(255, 255, 255)
game.Lighting.Brightness = 1
game.Lighting.ClockTime = 14
game.Lighting.ColorShift_Bottom = Color3.fromRGB(255, 255, 255)
game.Lighting.ColorShift_Top = Color3.fromRGB(255, 255, 255)
game.Lighting.ExposureCompensation = 0
game.Lighting.FogColor = Color3.fromRGB(255, 255, 255)
game.Lighting.FogEnd = 999999999
game.Lighting.GeographicLatitude = 41.733
game.Lighting.OutdoorAmbient = Color3.fromRGB(255, 255, 255)
game.Lighting.GlobalShadows = true
end)
game.Lighting.DescendantAdded:Connect(function(obj)
-- if obj:IsA("") or obj:IsA("Sky") or obj:IsA("BlurEffect") or obj:IsA("BloomEffect") or obj:IsA("SunRaysEffect") then
if obj:IsA("Sky") or obj:IsA("BloomEffect") or obj:IsA("SunRaysEffect") then
obj:Destroy()
end
end)

end

local function nfog()
	if cfog == 1 then
		nofog()
		cfog = 0
		zbtn2.Text = "NOFOGED"
	else 
		zfog = 1
		zbtn2.Text = "FOG"
	end
end

--dex
local function zdex()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/pseudonym101/RBX/path1/Dex.lua"))()
end


local function ndex()
	if cdex == 0 then
		zdex()
		cdex = 1
		zbtn3.Text = "DEXED"
	else
		cdex = 0
		zbtn3.Text = "NODEX"
	end

end

--IY
local function ziy()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/pseudonym101/RBX/path1/IY.lua"))()
end


local function niy()
	if ciy == 0 then
		ziy()
		ciy = 1
		zbtn4.Text = "IYED"
	else
		ciy = 0
		zbtn4.Text = "NOIY"
	end

end

local buy1 = {
	"Holde Ciwiq"
}

--input box

ip1.FocusLost:Connect(function(enterPressed)
	if enterPressed then
		local input = ip1.Text
		if input ~= "" then
			buy1[1] = input
		else

		end
	end
end)

--gamecode
local py = workspace.Characters.Pseudonym101

local cars = workspace.Vehicles
local car = nil
local ownerName = "Pseudonym101"

local function findCar()
	for _, i in pairs(cars:GetChildren()) do
		if i:GetAttribute("Owner") == ownerName then
			car = i
			print(car)
		end
	end
end

findCar()
cars.ChildAdded:Connect(findCar)
cars.ChildRemoved:Connect(findCar)

local function fireRemote(eventName, ...)
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local rmtev = workspace:WaitForChild("Vehicles"):WaitForChild(tostring(car))
	if rmtev then
		local remoteEvent = rmtev:WaitForChild(eventName)
			if remoteEvent then
			remoteEvent:FireServer(...)
			else
			warn("Failed to find RemoteEvent named: " .. eventName)
			end
	else
		warn("RemoteEvents folder is missing. Cannot fire remote event.")
	end
end

local shppos = CFrame.new(-353.395691, 6.00390816, -1492.6355,
	0.398979902, 0, 0.916959643, 
	0, 1, 0, 
	-0.916959643, 0, 0.398979902)
local frontshp = CFrame.new(-385.656433, 4.00488472, -1507.73218, 
	0.495980561, 0, 0.868333578, 
	0, 1, 0, 
	-0.868333578, 0, 0.495980561)
local synpos1 = CFrame.new(-337.420074, 5.67578411, -1471.84644, 
	-0.50211525, 0, 0.864800692, 
	0, 1, 0, 
	-0.864800692, 0, -0.50211525)
local synpos2 = CFrame.new(-306.383942, 5.66406536, -1505.08179, 
	0.534310162, -0, -0.845288455, 
	0, 1, -0, 
	0.845288455, 0, 0.534310162)
local grnpos1 = CFrame.new(-341.223785, 6.39062786, -1473.15894, 
	0.434222102, 0, 0.900805831, 
	0, 1, 0, 
	-0.900805831, 0, 0.434222102)
local grnpos2 = CFrame.new(-346.687653, 6.39062786, -1474.81616, 
	0.298262715, 0, 0.954483807, 
	0, 1, 0, 
	-0.954483807, 0, 0.298262715)
local grnpos3 = CFrame.new(-307.746246, 6.39062786, -1501.46069, 
	-0.981155157, 0, 0.193221405, 
	0, 1, 0, 
	-0.193221405, 0, -0.981155157)
local crgpos = CFrame.new(-354.698425, 5.14062738, -1476.35425, 
	-0.970013142, 0, 0.243052706, 
	0, 1, 0, 
	-0.243052706, 0, -0.970013142)
local seller = CFrame.new(-1905.19128, 4.57715082, -782.614624, 
	0.214174926, 0, 0.976795495, 
	0, 1, 0, 
	-0.976795495, 0, 0.214174926)

local function move()
	local mp = workspace.MoveableParts
	for _,i in pairs(mp:GetChildren()) do
		if i:GetAttribute("Owner") == "Pseudonym101" then
			if i:GetAttribute("RepairMachine") == "PartsWasher" and i.Name == "Radiator" then
				i:SetPrimaryPartCFrame(synpos1)
			elseif i:GetAttribute("RepairMachine") == "PartsWasher" and i.Name == "AirIntake" then
				i:SetPrimaryPartCFrame(synpos2)
			elseif i:GetAttribute("RepairMachine") == "GrindingMachine" and i.Name == "ExhaustManifold" then
				i:SetPrimaryPartCFrame(grnpos1)
			elseif i:GetAttribute("RepairMachine") == "GrindingMachine" and i.Name == "CylinderHead" then
				i:SetPrimaryPartCFrame(grnpos2)
			elseif i:GetAttribute("RepairMachine") == "GrindingMachine" and i.Name == "EngineBlock" then
				i:SetPrimaryPartCFrame(grnpos3)
			elseif i:GetAttribute("RepairMachine") == "BatteryCharger" then
				i:SetPrimaryPartCFrame(crgpos)		
			end
		end
	end
end

local btn1, btn2, btn3, btn4, btn5, btn6 = workspace.Map["PitStop Repair"]:GetChildren()[6].Faucet.ClickDetector,
	workspace.Map["PitStop Repair"].PartsWasher.Faucet.ClickDetector,
	workspace.Map["PitStop Repair"]:GetChildren()[7].Button.ClickDetector,
	workspace.Map["PitStop Repair"]:GetChildren()[4].Button.ClickDetector,
	workspace.Map["PitStop Repair"].GrindingMachine.Button.ClickDetector,
	workspace.Map["PitStop Repair"].BatteryCharger.Button.ClickDetector

local function repair()
		fireclickdetector(btn1)
		fireclickdetector(btn2)
		fireclickdetector(btn3)
		fireclickdetector(btn4)
		fireclickdetector(btn5)
		fireclickdetector(btn6)	
end

local function fix()			
	--remove part
	fireRemote("PartsEvent", "RemovePart", "Battery")
	task.wait(0.1)
	fireRemote("PartsEvent", "RemovePart", "Radiator")
	task.wait(0.1)
	fireRemote("PartsEvent", "RemovePart", "AirIntake")
	task.wait(0.1)
	fireRemote("PartsEvent", "RemovePart", "ExhaustManifold")
	task.wait(0.1)
	fireRemote("PartsEvent", "RemovePart", "CylinderHead")
	task.wait(0.1)
	fireRemote("PartsEvent", "RemovePart", "EngineBlock")
	task.wait(0.1)
	move()
	task.wait(0.1)
	repair()
	task.wait(10)
	--Reapply Part
	fireRemote("PartsEvent", "ReapplyPart", "Battery")
	task.wait(0.1)
	fireRemote("PartsEvent", "ReapplyPart", "Radiator")
	task.wait(0.1)
	fireRemote("PartsEvent", "ReapplyPart", "EngineBlock")
	task.wait(0.1)
	fireRemote("PartsEvent", "ReapplyPart", "CylinderHead")
	task.wait(0.1)
	fireRemote("PartsEvent", "ReapplyPart", "AirIntake")		
	task.wait(0.1)
	fireRemote("PartsEvent", "ReapplyPart", "ExhaustManifold")
end


local to = {
	"TakeOut",
	"EnginePart_3abddd9d-cae8-4aa2-ab59-7d8406e89fb2"
}
--game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("PartsEvent"):FireServer(unpack(to))

local sell = workspace.Map.SellCar.Prompt.ProximityPrompt

--btn
zbtn1.MouseButton1Click:Connect(nclip)
zbtn2.MouseButton1Click:Connect(nfog)
zbtn3.MouseButton1Click:Connect(ndex)
zbtn4.MouseButton1Click:Connect(niy)

zbtn5.MouseButton1Click:Connect(function()
	local player = game.Players.LocalPlayer
	local char = player.Character or player.CharacterAdded:Wait()
	local root = char:WaitForChild("HumanoidRootPart")
	local distance = 10 -- how many studs in front
	local frontPosition = root.CFrame * CFrame.new(0, 0, -distance)
	local callCar = {
		game:GetService("Players").LocalPlayer:WaitForChild("PlayerData"):WaitForChild("Garage"):GetChildren()[2], frontPosition
	}
	game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Vehicles"):WaitForChild("RemoteLoad"):InvokeServer(unpack(callCar))
end)

zbtn6.MouseButton1Click:Connect(function()
	local paint = {
		workspace:WaitForChild("Vehicles"):WaitForChild(tostring(car)),
		Color3.new(0, 0, 0)
	}
	game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Vehicles"):WaitForChild("SetPaint"):FireServer(unpack(paint))
end)

zbtn7.MouseButton1Click:Connect(function()
	py:MoveTo(frontshp.Position)
end)

zbtn8.MouseButton1Click:Connect(fix)

zbtn9.MouseButton1Click:Connect(function()
	game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Vehicles"):WaitForChild("GetModel"):InvokeServer(unpack(buy1))
end)

zbtn10.MouseButton1Click:Connect(function()
	py:MoveTo(seller.Position)
	fireproximityprompt(sell)
end)

zbtn11.MouseButton1Click:Connect(function()
	local player = game.Players.LocalPlayer
	local char = player.Character or player.CharacterAdded:Wait()
	local root = char:WaitForChild("HumanoidRootPart")
	local distance = 10 -- how many studs in front
	local frontPosition = root.CFrame * CFrame.new(0, 0, -distance)
	car:Moveto(frontPosition)
end)
