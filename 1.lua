COREGUI = game:GetService("CoreGui")
Players = game:GetService("Players")
Input = game:GetService("UserInputService")

local zgui = Instance.new("ScreenGui")
local zframe = Instance.new("Frame")
local zlb = Instance.new("TextLabel")
local zbtn = Instance.new("TextButton")
local zbtn1 = Instance.new("TextButton")
local zbtn2 = Instance.new("TextButton")
local zbtn3 = Instance.new("TextButton")
local zbtn4 = Instance.new("TextButton")


local Noclip = nil
local Clip = nil

local vsb = 1
local cclip = 1
local cfog = 1
local cdex = 0
local ciy = 0
local credz = 0


 
Players.LocalPlayer.CameraMaxZoomDistance = 500

zgui.Parent = COREGUI


zframe.Name = "menu"
zframe.Parent = zgui
zframe.Position = UDim2.new(0,100,0,100)
zframe.Size = UDim2.new(0,50,0,100)
zframe.Visible = true

zbtn.Name = "button"
zbtn.Parent = zframe
zbtn.Position = UDim2.new(0,0,0,0)
zbtn.Size = UDim2.new(0,50,0,20)
zbtn.Text = "No Clip"

zbtn1.Name = "button1"
zbtn1.Parent = zframe
zbtn1.Position = UDim2.new(0,0,0,20)
zbtn1.Size = UDim2.new(0,50,0,20)
zbtn1.Text = "No FOG"

zbtn2.Name = "button2"
zbtn2.Parent = zframe
zbtn2.Position = UDim2.new(0,0,0,40)
zbtn2.Size = UDim2.new(0,50,0,20)
zbtn2.Text = "DEX"

zbtn3.Name = "button3"
zbtn3.Parent = zframe
zbtn3.Position = UDim2.new(0,0,0,60)
zbtn3.Size = UDim2.new(0,50,0,20)
zbtn3.Text = "IY"

zbtn4.Name = "button4"
zbtn4.Parent = zframe
zbtn4.Position = UDim2.new(0,0,0,80)
zbtn4.Size = UDim2.new(0,50,0,20)
zbtn4.Text = "REDZ"


Input.InputBegan:connect(function(key)

	local function onoff()
		if vsb1 == 1 then
			vsb1 = 0
			zframe.Visible = true
		else
			vsb1 = 1
			zframe.Visible = false
		end

	end
	if key.KeyCode == Enum.KeyCode.KeypadPlus then
		onoff()
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
		zbtn.Text = "Nocliped"
	else
		clip()
		cclip = 1
		zbtn.Text = "Cliped"
	end

end


--nofog
local function nofog()

repeat task.wait() until game:IsLoaded()
wait(5) -- extra load to ensure the script is working
for i,v in pairs(game.Lighting:GetChildren()) do
-- if v:IsA("") or v:IsA("Sky") or v:IsA("BlurEffect") or v:IsA("BloomEffect") or v:IsA("SunRaysEffect") then
if v:IsA("") or v:IsA("Sky") or v:IsA("BloomEffect") or v:IsA("SunRaysEffect") then
v:Disconnect()
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
obj:Disconnect()
end
end)

end

local function nfog()
	if cfog == 0 then
		nofog()
		cfog = 1
		zbtn1.Text = "NOFOGED"
	else 
		zfog = 0
		zbtn.Text = "FOG"
end

--dex
local function zdex()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/pseudonym101/RBX/refs/heads/path1/dex.lua"))()
end


local function ndex()
	if cdex == 0 then
		zdex()
		cdex = 1
		zbtn2.Text = "DEXED"
	else
		cdex = 0
		zbtn2.Text = "NODEX"
	end

end

--IY
local function ziy()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/pseudonym101/RBX/refs/heads/path1/IY.lua"))()
end


local function niy()
	if ciy == 0 then
		ziy()
		ciy = 1
		zbtn3.Text = "IYED"
	else
		ciy = 0
		zbtn3.Text = "NOIY"
	end

end


--redz
local function zredz()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/BloxFruits/refs/heads/main/Source.lua"))()
end


local function nredz()
	if credz == 0 then
		zredz()
		credz = 1
		zbtn4.Text = "REDZED"
	else
		credz = o
		zbtn4.Text = "NOREDZ"
	end

end


zbtn.MouseButton1Click:Connect(nclip)
zbtn1.MouseButton1Click:Connect(nfog)
zbtn2.MouseButton1Click:Connect(ndex)
zbtn3.MouseButton1Click:Connect(niy)
zbtn4.MouseButton1Click:Connect(nredz)
