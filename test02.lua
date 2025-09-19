COREGUI = game:GetService("CoreGui")
Players = game:GetService("Players")
workspace = game:GetService("Workspace")
Input = game:GetService("UserInputService")

local zgui = Instance.new("ScreenGui")
local zframe = Instance.new("Frame")
local zImg = Instance.new("ImageLabel")
local zImg1 = Instance.new("ImageLabel")
local zcn = Instance.new("UICorner")
local zlb = Instance.new("TextLabel")
local zbtn = Instance.new("TextButton")
local zddn = Instance.new("Frame")
local zip = Instance.new("TextBox")

local py1 = game.Players.Pseudonym101

local Noclip = nil
local Clip = nil

local vsb = true
local cclip = 1
local cfog = 1
local cdex = 0
local ciy = 0

Players.LocalPlayer.CameraMaxZoomDistance = 500
zgui.Parent = COREGUI
----------------------------------------------------------------------------------------------------
--define model
----------------------------------------------------------------------------------------------------
local clnedg = "rbxassetid://74613691135549"
local oldegd = "rbxassetid://95093821888161"
local newedg = "rbxassetid://94099317021623"

zframe.Visible = true
zframe.BackgroundColor3 = Color3.fromRGB(0, 50, 50)
zframe.BorderSizePixel = 0
--zframe.AnchorPoint = Vector2.new(0.5, 0.5)
zframe.ClipsDescendants = true
zframe.BackgroundTransparency = 0.9

zImg.Size = UDim2.new(1, 0, 1, 0) -- adjust size
zImg.Position = UDim2.new(0, 0, 0, 0)
zImg.BackgroundTransparency = 1
zImg.Image = "rbxassetid://94099317021623" -- your uploaded PNG decal ID
zImg.ScaleType = Enum.ScaleType.Stretch

zImg1.Size = UDim2.new(1, 0, 1, 0) -- adjust size
zImg1.Position = UDim2.new(0, 0, 0, 0)
zImg1.BackgroundTransparency = 1
zImg1.Image = "rbxassetid://74613691135549" -- your uploaded PNG decal ID
zImg1.ScaleType = Enum.ScaleType.Stretch

zbtn.TextColor3 = Color3.fromRGB(0, 255, 255)
zbtn.Font = Enum.Font.Gotham
zbtn.TextScaled = true
zbtn.BackgroundColor3 = Color3.fromRGB(0, 100, 100)
zbtn.BackgroundTransparency = 0.1
zbtn.AutoButtonColor = false -- Prevent Roblox hover highlight
zbtn.TextXAlignment = Enum.TextXAlignment.Center

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
----------------------------------------------------------------------------------------------------
--main frame
----------------------------------------------------------------------------------------------------
local zframe1 = zframe:Clone()
zframe1.Name = "menu"
zframe1.Position = UDim2.new(0,100,0,100)
zframe1.Size = UDim2.new(0,700,0,440)
zframe1.Visible = true
zframe1.Parent = zgui

local zimg1 = zImg:Clone()
zimg1.Name = "edge"
zimg1.Parent = zframe1

----------------------------------------------------------------------------------------------------
--main menu
----------------------------------------------------------------------------------------------------
local zbtn1 = zbtn:Clone()
zbtn1.Name = "button1"
zbtn1.Parent = zframe1
zbtn1.Position = UDim2.new(0,50,0,50)
zbtn1.Size = UDim2.new(0,70,0,20)
zbtn1.Text = "Main"
local cn1 = zcn:Clone()
cn1.Parent = zbtn1

local zbtn2 = zbtn:Clone()
zbtn2.Name = "button2"
zbtn2.Parent = zframe1
zbtn2.Position = UDim2.new(0,102,0,50)
zbtn2.Size = UDim2.new(0,70,0,20)
zbtn2.Text = "Input"
local cn2 = zcn:Clone()
cn2.Parent = zbtn2

local zbtn3 = zbtn:Clone()
zbtn3.Name = "button3"
zbtn3.Parent = zframe1
zbtn3.Position = UDim2.new(0,154,0,50)
zbtn3.Size = UDim2.new(0,70,0,20)
zbtn3.Text = "Game Control"
local cn3 = zcn:Clone()
cn3.Parent = zbtn3

local zframe2 = zframe:Clone()
zframe2.Name = "menu1"
zframe2.Position = UDim2.new(0,50,0,75)
zframe2.Size = UDim2.new(0,600,0,350)
zframe2.Visible = false
zframe2.Parent = zframe1

local zframe3 = zframe:Clone()
zframe3.Name = "menu2"
zframe3.Position = UDim2.new(0,50,0,75)
zframe3.Size = UDim2.new(0,600,0,350)
zframe3.Visible = false
zframe3.Parent = zframe1

local zframe4 = zframe:Clone()
zframe4.Name = "menu3"
zframe4.Position = UDim2.new(0,50,0,75)
zframe4.Size = UDim2.new(0,600,0,350)
zframe4.Visible = false
zframe4.Parent = zframe1

local zimg2 = zImg1:Clone()
zimg2.Name = "edge2"
zimg2.Parent = zframe2

local zimg3 = zImg1:Clone()
zimg3.Name = "edge3"
zimg3.Parent = zframe3

local zimg4 = zImg1:Clone()
zimg4.Name = "edge4"
zimg4.Parent = zframe4
----------------------------------------------------------------------------------------------------
--tab main
----------------------------------------------------------------------------------------------------
local zbtn4 = zbtn:Clone()
zbtn4.Name = "button4"
zbtn4.Parent = zframe2
zbtn4.Position = UDim2.new(0,2,0,2)
zbtn4.Size = UDim2.new(0,70,0,20)
zbtn4.Text = "No Clip"
local cn4 = zcn:Clone()
cn4.Parent = zbtn4

local zbtn5 = zbtn:Clone()
zbtn5.Name = "button5"
zbtn5.Parent = zframe2
zbtn5.Position = UDim2.new(0,2,0,24)
zbtn5.Size = UDim2.new(0,70,0,20)
zbtn5.Text = "No FOG"
local cn5 = zcn:Clone()
cn5.Parent = zbtn5

local zbtn6 = zbtn:Clone()
zbtn6.Name = "button5"
zbtn6.Parent = zframe2
zbtn6.Position = UDim2.new(0,2,0,46)
zbtn6.Size = UDim2.new(0,70,0,20)
zbtn6.Text = "DEX"
local cn5 = zcn:Clone()
cn5.Parent = zbtn6

local zbtn7 = zbtn:Clone()
zbtn7.Name = "button7"
zbtn7.Parent = zframe2
zbtn7.Position = UDim2.new(0,2,0,68)
zbtn7.Size = UDim2.new(0,70,0,20)
zbtn7.Text = "IY"
local cn7 = zcn:Clone()
cn7.Parent = zbtn7
----------------------------------------------------------------------------------------------------
--tab2 input
----------------------------------------------------------------------------------------------------
local ip1 = zip:Clone()	
ip1.Parent = zframe3
ip1.Position = UDim2.new(0, 100, 0, 2)

local ip2 = zip:Clone()	
ip2.Parent = zframe3
ip2.Position = UDim2.new(0, 100, 0, 24)

local ip3 = zip:Clone()	
ip3.Parent = zframe3
ip3.Position = UDim2.new(0, 100, 0, 46)

local ip4 = zip:Clone()
ip4.Parent = zframe3
ip4.Position = UDim2.new(0, 100, 0, 68)

local ip5 = zip:Clone()	
ip5.Parent = zframe3
ip5.Position = UDim2.new(0, 100, 0, 90)

local ip6 = zip:Clone()	
ip6.Parent = zframe3
ip6.Position = UDim2.new(0, 100, 0, 112)

local ip7 = zip:Clone() 
ip7.Parent = zframe3
ip7.Position = UDim2.new(0, 100, 0, 134)
----------------------------------------------------------------------------------------------------
--tab3 control
----------------------------------------------------------------------------------------------------
local zbtn8 = zbtn:Clone()
zbtn8.Name = "button8"
zbtn8.Parent = zframe4
zbtn8.Position = UDim2.new(0,2,0,90)
zbtn8.Size = UDim2.new(0,70,0,20)
zbtn8.Text = "Cancel"
local cn8 = zcn:Clone()
cn8.Parent = zbtn8

local zbtn9 = zbtn:Clone()
zbtn9.Name = "button9"
zbtn9.Parent = zframe4
zbtn9.Position = UDim2.new(0,2,0,112)
zbtn9.Size = UDim2.new(0,70,0,20)
zbtn9.Text = "Buy"
local cn9 = zcn:Clone()
cn9.Parent = zbtn9

local zbtn10 = zbtn:Clone()
zbtn10.Name = "button10"
zbtn10.Parent = zframe4
zbtn10.Position = UDim2.new(0,2,0,134)
zbtn10.Size = UDim2.new(0,70,0,20)
zbtn10.Text = "Sell"
local cn10 = zcn:Clone()
cn10.Parent = zbtn10

local zbtn11 = zbtn:Clone()
zbtn11.Name = "button11"
zbtn11.Parent = zframe4
zbtn11.Position = UDim2.new(0,2,0,156)
zbtn11.Size = UDim2.new(0,70,0,20)
zbtn11.Text = "Crate"
local cn11 = zcn:Clone()
cn11.Parent = zbtn11
----------------------------------------------------------------------------------------------------
--toggle open UI
----------------------------------------------------------------------------------------------------
Input.InputBegan:Connect(function(key)
	if key.KeyCode == Enum.KeyCode.KeypadPlus then
		if not zframe1 then
			warn("zframe1 is nil!")
        		return
		end
		vsb = not vsb
		zframe1.Visible = not zframe1.Visible
	end
end)
----------------------------------------------------------------------------------------------------
--drag ui
----------------------------------------------------------------------------------------------------
local dragging = false
local dragInput, mousePos, framePos

zframe1.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = true
		mousePos = input.Position
		framePos = zframe1.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

zframe1.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement then
		dragInput = input
	end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		local delta = input.Position - mousePos
		zframe1.Position = UDim2.new(
			framePos.X.Scale, framePos.X.Offset + delta.X,
			framePos.Y.Scale, framePos.Y.Offset + delta.Y
		)
	end
end)
----------------------------------------------------------------------------------------------------
--noclip
----------------------------------------------------------------------------------------------------
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
		task.wait(0.21) -- basic optimization
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
----------------------------------------------------------------------------------------------------
--nofog
----------------------------------------------------------------------------------------------------
local function nofog()

repeat task.wait() until game:IsLoaded()
task.wait(5) -- extra load to ensure the script is working
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
		cfog = 1
		zbtn2.Text = "FOG"
	end
end
----------------------------------------------------------------------------------------------------
--dex
----------------------------------------------------------------------------------------------------
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
----------------------------------------------------------------------------------------------------
--IY
----------------------------------------------------------------------------------------------------
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
----------------------------------------------------------------------------------------------------
--input box
----------------------------------------------------------------------------------------------------
ip1.FocusLost:Connect(function(enterPressed)
	if enterPressed then
		local input = ip1.Text
		if input ~= "" then
			--buy1[1] = input
			--bld1[2] = input
		else

		end
	end
end)

ip2.FocusLost:Connect(function(enterPressed)
	if enterPressed then
		local input = ip2.Text
		if input ~= "" then
			--buy2[1] = input
			--bld4[2] = input
		else

		end
	end
end)

ip3.FocusLost:Connect(function(enterPressed)
	if enterPressed then
		local input = ip3.Text
		if input ~= "" then
			--buy3[1] = input
			--bld2[2] = input
		else

		end
	end
end)

ip4.FocusLost:Connect(function(enterPressed)
	if enterPressed then
		local input = ip4.Text
		if input ~= "" then
			--buy4[1] = input
			--bld3[2] = input
		else

		end
	end
end)

ip5.FocusLost:Connect(function(enterPressed)
	if enterPressed then
		local input = ip5.Text
		if input ~= "" then
			--buy5[1] = input
			--bld5[2] = input
		else

		end
	end
end)

ip6.FocusLost:Connect(function(enterPressed)
	if enterPressed then
		local input = ip6.Text
		if input ~= "" then
			--buy6[1] = input
			--bld6[2] = input
		else

		end
	end
end)

ip7.FocusLost:Connect(function(enterPressed)
	if enterPressed then
		local input = ip7.Text
		if input ~= "" then
			--buy7[1] = input
			--bld7[2] = input
		else

		end
	end
end)
----------------------------------------------------------------------------------------------------
--gamecode
----------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------
--btn
----------------------------------------------------------------------------------------------------
--main btn
zbtn1.MouseButton1Click:Connect(function() zframe2.Visible = not zframe2.Visible end)
zbtn2.MouseButton1Click:Connect(function() zframe3.Visible = not zframe3.Visible end)
zbtn3.MouseButton1Click:Connect(function() zframe4.Visible = not zframe4.Visible end)
--tab1 btn
zbtn4.MouseButton1Click:Connect(niy)
zbtn5.MouseButton1Click:Connect(nclip)
zbtn6.MouseButton1Click:Connect(nfog)
zbtn7.MouseButton1Click:Connect(ndex)
--zbtn8.MouseButton1Click:Connect()
--tab3 btn
--zbtn9.MouseButton1Click:Connect()
--zbtn10.MouseButton1Click:Connect()
--zbtn11.MouseButton1Click:Connect()
