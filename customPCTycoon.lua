COREGUI = game:GetService("CoreGui")
Players = game:GetService("Players")
Workspc = game:GetService("Workspace")
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
zbtn5.Text = "Buy"
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
zbtn6.Text = "Build"
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
zbtn8.Text = "Cancel"
local cn8 = zcn:Clone()
cn8.Parent = zbtn8
addBorder(zbtn8, 3)

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




--gamecode
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local rmtev = ReplicatedStorage:WaitForChild("Resources"):WaitForChild("Remotes"):WaitForChild("RemoteEvents")

if not rmtev then
    warn("Failed to find the RemoteEvents folder!")
end

local function fireRemote(eventName, ...)
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

--build
local pcit = game:GetService("Players").LocalPlayer:WaitForChild("PcItems")
local spc = workspace:WaitForChild("sheds"):WaitForChild("3861411531"):WaitForChild("Pc")

local PCcase = "Plain Case"
local PCbord = "P03"
local PCPSU = "Bronze 200w"
local PCcpu = "3 1500"
local PCram = "Ram 2Gb"
local PCrom = "32Gb"
local PCgpu = ""
local PCfan = ""

--input box

ip1.FocusLost:Connect(function(enterPressed)
	if enterPressed then
		local input = ip1.Text
		if input ~= "" then
			--buy1[1] = input
			PCcase = input
		else

		end
	end
end)

ip2.FocusLost:Connect(function(enterPressed)
	if enterPressed then
		local input = ip2.Text
		if input ~= "" then
			--buy2[1] = input
			PCbord = input
		else

		end
	end
end)

ip3.FocusLost:Connect(function(enterPressed)
	if enterPressed then
		local input = ip3.Text
		if input ~= "" then
			--buy3[1] = input
			PCPSU = input
		else

		end
	end
end)

ip4.FocusLost:Connect(function(enterPressed)
	if enterPressed then
		local input = ip4.Text
		if input ~= "" then
			--buy4[1] = input
			PCcpu = input
		else

		end
	end
end)

ip5.FocusLost:Connect(function(enterPressed)
	if enterPressed then
		local input = ip5.Text
		if input ~= "" then
			--buy5[1] = input
			PCram = input
		else

		end
	end
end)

ip6.FocusLost:Connect(function(enterPressed)
	if enterPressed then
		local input = ip6.Text
		if input ~= "" then
			--buy6[1] = input
			PCrom = input
		else

		end
	end
end)

ip7.FocusLost:Connect(function(enterPressed)
	if enterPressed then
		local input = ip7.Text
		if input ~= "" then
			--buy7[1] = input
			PCgpu = input
		else

		end
	end
end)

--buy

local function PCbuy()

	fireRemote("BuyItem", PCcase, false)
	task.wait(0.1)
	fireRemote("BuyItem", PCbord, false)
	task.wait(0.1)
	fireRemote("BuyItem", PCPSU, false)
	task.wait(0.1)
	fireRemote("BuyItem", PCcpu, false)
	task.wait(0.1)
	fireRemote("BuyItem", PCram, false)	
	task.wait(0.1)		
	fireRemote("BuyItem", PCrom, false)
	task.wait(0.1)

end


--build

local function PCbld()

	fireRemote("OpenPcUi", "New")
	task.wait(0.1)
	fireRemote("PlaceOnPc", pcit:WaitForChild(PCcase), "CaseFolder", "Add")
	task.wait(0.1)
	fireRemote("PlaceOnPc", pcit:WaitForChild(PCbord), spc:WaitForChild("Plain Case"):WaitForChild("MotherboardFolder"), "Add")
	task.wait(0.1)
	fireRemote("PlaceOnPc", pcit:WaitForChild("Bronze 200w"), spc:WaitForChild("Plain Case"):WaitForChild("PowerFolder"), "Add")
	task.wait(0.1)
	fireRemote("PlaceOnPc", pcit:WaitForChild(PCcpu), spc:WaitForChild("Plain Case"):WaitForChild("MotherboardFolder"):WaitForChild("P03"):WaitForChild("CpuFolder"), "Add")
	task.wait(0.1)
	fireRemote("PlaceOnPc", pcit:WaitForChild(PCram), spc:WaitForChild("Plain Case"):WaitForChild("MotherboardFolder"):WaitForChild("P03"):WaitForChild("RamFolder1"), "Add")
	task.wait(0.1)
	fireRemote("PlaceOnPc", pcit:WaitForChild(PCrom), spc:WaitForChild("Plain Case"):WaitForChild("MotherboardFolder"):WaitForChild("P03"):WaitForChild("MemoryFolder1"), "Add")
	task.wait(0.1)

	local pcnb = "PC"..tostring(math.random(0,99))
	fireRemote("OpenPcUi", "Done", pcnb)
	task.wait(1)
	fireRemote("Sell", pcnb)



end

--cancel
local function PCcc()
	--pcit:WaitForChild(PCcase),

end


--btn
zbtn1.MouseButton1Click:Connect(nclip)
zbtn2.MouseButton1Click:Connect(nfog)
zbtn3.MouseButton1Click:Connect(ndex)
zbtn4.MouseButton1Click:Connect(niy)
zbtn5.MouseButton1Click:Connect(PCbuy)
zbtn6.MouseButton1Click:Connect(PCbld)
zbtn7.MouseButton1Click:Connect()
zbtn8.MouseButton1Click:Connect()
