COREGUI = game:GetService("CoreGui")
Players = game:GetService("Players")
Workspc = game:GetService("Workspace")
Input = game:GetService("UserInputService")

local zgui = Instance.new("ScreenGui")
local zframe = Instance.new("Frame")
local zscfrm = Instance.new("ScrollingFrame")
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
local cauto = false
local plta = py1.Data.OwnedPlot.Value
local plt = tostring(plta)
 
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
zframe.BackgroundTransparency = 0
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
zbtn5.Text = "Cancel"
local cn5 = zcn:Clone()
cn5.Parent = zbtn5

local zbtn6 = zbtn:Clone()
zbtn6.Name = "button6"
zbtn6.Parent = zframe
zbtn6.Position = UDim2.new(0,2,0,112)
zbtn6.Size = UDim2.new(0,70,0,20)
zbtn6.Text = "Buy"
local cn6 = zcn:Clone()
cn6.Parent = zbtn6
addBorder(zbtn6, 3)

local zbtn7 = zbtn:Clone()
zbtn7.Name = "button7"
zbtn7.Parent = zframe
zbtn7.Position = UDim2.new(0,2,0,134)
zbtn7.Size = UDim2.new(0,70,0,20)
zbtn7.Text = "Sell"
local cn7 = zcn:Clone()
cn7.Parent = zbtn7
addBorder(zbtn7, 3)

local zbtn8 = zbtn:Clone()
zbtn8.Name = "button8"
zbtn8.Parent = zframe
zbtn8.Position = UDim2.new(0,2,0,156)
zbtn8.Size = UDim2.new(0,70,0,20)
zbtn8.Text = "Crate"
local cn8 = zcn:Clone()
cn8.Parent = zbtn8
addBorder(zbtn8, 3)

local zbtn9 = zbtn:Clone()
zbtn9.Name = "button9"
zbtn9.Parent = zframe
zbtn9.Position = UDim2.new(0, 100, 0, 2)
zbtn9.Size = UDim2.new(0,70,0,20)
zbtn9.Text = "Body"
local cn9 = zcn:Clone()
cn9.Parent = zbtn9
addBorder(zbtn9, 2)

local zbtn10 = zbtn:Clone()
zbtn10.Name = "button10"
zbtn10.Parent = zframe
zbtn10.Position = UDim2.new(0, 100, 0, 24)
zbtn10.Size = UDim2.new(0,70,0,20)
zbtn10.Text = "Mirror"
local cn10 = zcn:Clone()
cn10.Parent = zbtn10
addBorder(zbtn10, 2)

local zbtn11 = zbtn:Clone()
zbtn11.Name = "button11"
zbtn11.Parent = zframe
zbtn11.Position = UDim2.new(0, 100, 0, 46)
zbtn11.Size = UDim2.new(0,70,0,20)
zbtn11.Text = "Tire"
local cn11 = zcn:Clone()
cn11.Parent = zbtn11
addBorder(zbtn11, 2)

local zbtn12 = zbtn:Clone()
zbtn12.Name = "button12"
zbtn12.Parent = zframe
zbtn12.Position = UDim2.new(0, 100, 0, 68)
zbtn12.Size = UDim2.new(0,70,0,20)
zbtn12.Text = "Exhuast"
local cn12 = zcn:Clone()
cn12.Parent = zbtn12
addBorder(zbtn12, 2)

local zbtn13 = zbtn:Clone()
zbtn13.Name = "button13"
zbtn13.Parent = zframe
zbtn13.Position = UDim2.new(0, 100, 0, 90)
zbtn13.Size = UDim2.new(0,70,0,20)
zbtn13.Text = "Spoiler"
local cn13 = zcn:Clone()
cn13.Parent = zbtn13
addBorder(zbtn13, 2)

local zbtn14 = zbtn:Clone()
zbtn14.Name = "button14"
zbtn14.Parent = zframe
zbtn14.Position = UDim2.new(0, 100, 0, 112)
zbtn14.Size = UDim2.new(0,70,0,20)
zbtn14.Text = "Oornament"
local cn14 = zcn:Clone()
cn14.Parent = zbtn14
addBorder(zbtn14, 2)

local zbtn15 = zbtn:Clone()
zbtn15.Name = "button15"
zbtn15.Parent = zframe
zbtn15.Position = UDim2.new(0, 100, 0, 134)
zbtn15.Size = UDim2.new(0,70,0,20)
zbtn15.Text = "Splitter"
local cn15 = zcn:Clone()
cn15.Parent = zbtn15
addBorder(zbtn15, 2)


Input.InputBegan:connect(function(key)
	local function onoff()
		if not zframe then
			warn("zframe is nil!")
        		return
		end
		if vsb1 == 1 then
			vsb1 = 0
			zframe.Visible = true
			task.wait(0.1)
		else
			vsb1 = 1
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
				if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
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
if v:IsA("") or v:IsA("Sky") or v:IsA("BloomEffect") or v:IsA("SunRaysEffect") then
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
if obj:IsA("") or obj:IsA("Sky") or obj:IsA("BloomEffect") or obj:IsA("SunRaysEffect") then
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

--[[plot
local isOpen = false

local function ndd()
	isOpen = not isOpen
	cdd.Visible = isOpen
	zbtn5.Text = isOpen and "Plot ▲" or "Plot ▼"
end]]
--cancel part
local ccl = {
	"Base"
}


--Auto Farm
--Buy

local buy1 = {
	"Fancy Car",
	"Item"
}

local buy2 = {
	"Fancy Side Mirror",
	"Item"
}

local buy3 = {
	"Spiky Tire",
	"Item"
}

local buy4 = {
	"Big Exhaust",
	"Item"
}

local buy5 = {
	"Fancy Spoiler",
	"Item"
}

local buy6 = {
	"Monster Hood Ornament",
	"Item"
}

local buy7 = {
	"Classic Splitter",
	"Item"

}


--Build

local bld1 = {
	"Base",
	"Fancy Car"
}

local bld2 = {
	"Tire",
	"Spiky Tire"
}
	
local bld3 = {
	"Exhaust",
	"Big Exhaust"
}

local bld4 = {
	"Side Mirror",
	"Fancy Side Mirror"
}

local bld5 = {
	"Spoiler",
	"Fancy Spoiler"
}

local bld6 = {
	"HoodOrnament",
	"Monster Hood Ornament"
}

local bld7 = {
	"Splitter",
	"Classic Splitter"
}

--color
local clr1 = {
	"Hexagons",
	false
}

local clr2 = {
	workspace:WaitForChild("Plots"):WaitForChild(plt):WaitForChild("CurrentCar"):WaitForChild("Base"),
	"BrightBlue",
	"Secondary"
}

local clr3 = {
	workspace:WaitForChild("Plots"):WaitForChild(plt):WaitForChild("CurrentCar"):WaitForChild("Base"),
	"BrightBlue",
	"Primary"
}

local clr4 = {
	workspace:WaitForChild("Plots"):WaitForChild(plt):WaitForChild("CurrentCar"):WaitForChild("Wheels"),
	"Black",
	"Secondary"
}

local clr5 = {
	workspace:WaitForChild("Plots"):WaitForChild(plt):WaitForChild("CurrentCar"):WaitForChild("Exhausters"),
	"Black",
	"Secondary"
}

local clr6 = {
	workspace:WaitForChild("Plots"):WaitForChild(plt):WaitForChild("CurrentCar"):WaitForChild("SideMirrors"),
	"Black",
	"Secondary"
}

local clr7 = {
	workspace:WaitForChild("Plots"):WaitForChild(plt):WaitForChild("CurrentCar"):WaitForChild("Spoilers"),
	"Black",
	"Secondary"
}

local clr8 = {
	workspace:WaitForChild("Plots"):WaitForChild(plt):WaitForChild("CurrentCar"):WaitForChild("HoodOrnaments"),
	"Black",
	"Secondary"
}

local clr9 = {
	workspace:WaitForChild("Plots"):WaitForChild(plt):WaitForChild("CurrentCar"):WaitForChild("Splitters"),
	"Black",
	"Secondary"
}

--dropdown table
local zscfrm1 = zscfrm:Clone()
zscfrm1.Position = UDim2.new(0, 180, 0, 20)
zscfrm1.Size = UDim2.new(0,150,0,150)
zscfrm1.Parent = zframe


local zlstlo = Instance.new("UIListLayout")
zlstlo.Parent = zscfrm1
zlstlo.Padding = UDim.new(0, 5) 

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local folder = ReplicatedStorage:WaitForChild("Modules")
local list = require(folder:WaitForChild("ListModule"))

local isDDopen = false

zscfrm1.Visible = false
zbtn9.Text = "Car"

local function caopt1(carName)
	local optbtn = Instance.new("TextButton")
	optbtn.Parent = zscfrm1
	optbtn.Text = carName
	optbtn.Size = UDim2.new(1, 0, 0, 20)
	optbtn.BackgroundColor3 = Color3.new(59, 59, 59)
	optbtn.TextColor3 = Color3.new(233, 233, 233)
	TextScaled = true
	local cn10 = zcn:Clone()
	cn10.Parent = optbtn
	addBorder(optbtn, 2)
	
	
	optbtn.MouseButton1Click:Connect(function()
		zbtn9.Text = carName
		zscfrm1.Visible = false
		isDDopen = false
		
		buy1[1] = carName
		bld1[2] = carName

	end)
end

for carName, _ in pairs(list.ItemsStats) do
	caopt1(carName)
end

local function caopt2(mrrName)
	local optbtn = Instance.new("TextButton")
	optbtn.Parent = zscfrm1
	optbtn.Text = mrrName
	optbtn.Size = UDim2.new(1, 0, 0, 20)
	optbtn.BackgroundColor3 = Color3.new(59, 59, 59)
	optbtn.TextColor3 = Color3.new(233, 233, 233)
	TextScaled = true
	local cn10 = zcn:Clone()
	cn10.Parent = optbtn
	addBorder(optbtn, 2)
	
	
	optbtn.MouseButton1Click:Connect(function()
		zbtn10.Text = mrrName
		zscfrm1.Visible = false
		isDDopen = false
		
		buy1[2] = mrrName
		bld1[4] = mrrName

	end)
end

for mrrName, _ in pairs(list.ItemsStats) do
	caopt2(mrrName)
end

local function ndd()
	isDDopen = not isDDopen 
	zscfrm1.Visible = isDDopen 
end



local function by1()
		game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("PlayerEvents"):WaitForChild("BuyItem"):FireServer(unpack(buy1))
		task.wait(0.1)
		game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("PlayerEvents"):WaitForChild("BuyItem"):FireServer(unpack(buy2))
		task.wait(0.1)
		game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("PlayerEvents"):WaitForChild("BuyItem"):FireServer(unpack(buy3))
		task.wait(0.1)
		game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("PlayerEvents"):WaitForChild("BuyItem"):FireServer(unpack(buy4))
		task.wait(0.1)
		game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("PlayerEvents"):WaitForChild("BuyItem"):FireServer(unpack(buy5))
		task.wait(0.1)
		game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("PlayerEvents"):WaitForChild("BuyItem"):FireServer(unpack(buy6))
		task.wait(0.1)

	game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("PlayerEvents"):WaitForChild("BuyItem"):FireServer(unpack(buy7))
		task.wait(0.1)


end

local function bd1()

	game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("Customize"):WaitForChild("ChangePart"):FireServer(unpack(bld1))
	task.wait(0.1)
	game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("Customize"):WaitForChild("ChangePart"):FireServer(unpack(bld2))
	task.wait(0.1)
	game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("Customize"):WaitForChild("ChangePart"):FireServer(unpack(bld3))
	task.wait(0.1)
	game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("Customize"):WaitForChild("ChangePart"):FireServer(unpack(bld4))
	task.wait(0.1)
	game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("Customize"):WaitForChild("ChangePart"):FireServer(unpack(bld5))
	task.wait(0.1)
	game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("Customize"):WaitForChild("ChangePart"):FireServer(unpack(bld6))
	task.wait(0.1)
	game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("Customize"):WaitForChild("ChangePart"):FireServer(unpack(bld7))
	task.wait(0.1)
	game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("Customize"):WaitForChild("PlacePattern"):FireServer(unpack(clr1))
	task.wait(0.1)
	game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("Customize"):WaitForChild("Recolor"):FireServer(unpack(clr2))
	task.wait(0.1)
	game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("Customize"):WaitForChild("Recolor"):FireServer(unpack(clr3))
	task.wait(0.1)
	game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("Customize"):WaitForChild("Recolor"):FireServer(unpack(clr4))
	task.wait(0.1)
	game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("Customize"):WaitForChild("Recolor"):FireServer(unpack(clr5))
	task.wait(0.1)
	game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("Customize"):WaitForChild("Recolor"):FireServer(unpack(clr6))
	task.wait(0.1)
	game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("Customize"):WaitForChild("Recolor"):FireServer(unpack(clr7))
	task.wait(0.1)
	game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("Customize"):WaitForChild("Recolor"):FireServer(unpack(clr8))
	task.wait(0.1)
	game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("Customize"):WaitForChild("Recolor"):FireServer(unpack(clr9))
	task.wait(0.1)

	local rdm = math.random(0, 99)
	local fin = {"Car"..tostring(rdm)}
	game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("Customize"):WaitForChild("Finish"):FireServer(unpack(fin))
	
	local sell = {
	workspace:WaitForChild("Plots"):WaitForChild(plt):WaitForChild("SpawnedFacility"):WaitForChild("Facility"):WaitForChild("Garage"):WaitForChild("CarSpawns"):WaitForChild("1")
}
	task.wait(0.5)
	game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("Customize"):WaitForChild("SellCar"):FireServer(unpack(sell))

end
local function ncc()
	game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("Customize"):WaitForChild("ChangePart"):FireServer(unpack(ccl))

end

local function nby()
		by1()
		task.wait(0.1)

end

local function nbl()
		bd1()
		task.wait(0.1)

end

local function nct()
--Claim Crate

	local OPcrate = game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("PlayerEvents"):WaitForChild("OpenCrate"):FireServer()

end

zbtn1.MouseButton1Click:Connect(nclip)
zbtn2.MouseButton1Click:Connect(nfog)
zbtn3.MouseButton1Click:Connect(ndex)
zbtn4.MouseButton1Click:Connect(niy)
zbtn5.MouseButton1Click:Connect(ncc)
zbtn6.MouseButton1Click:Connect(nby)
zbtn7.MouseButton1Click:Connect(nbl)
zbtn8.MouseButton1Click:Connect(nct)
zbtn9.MouseButton1Click:Connect(ndd)
zbtn10.MouseButton1Click:Connect(ndd)
