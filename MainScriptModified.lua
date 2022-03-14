--
-- Full Credits to 7GrandDadPGN. I just modified this script for myself.
--




--[[
if shared.VapeExecuted then
	return
else
	shared.VapeExecuted = true
end

local function GetURL(scripturl)
    return game:HttpGet("https://github.com/7GrandDadPGN/VapeV4ForRoblox/67b00fcff6b14ba1cbdeed00fa58fee13af7677d" .. scripturl, true)
end
]]--
--local GuiLibrary = loadstring(GetURL("https://github.com/7GrandDadPGN/VapeV4ForRoblox/blob/67b00fcff6b14ba1cbdeed00fa58fee13af7677d/OldGuiLibrary.lua"))()

--local GuiLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/67b00fcff6b14ba1cbdeed00fa58fee13af7677d/OldGuiLibrary.lua", true))()
--local GuiLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/InkognoitoCurry/Swift-V4/06d608d99be1a04f1243b1ff64b26b7e64ba6a36/OldGuiLibrary.lua", true))()
local GuiLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/InkognitoCurry/Swift-V4/OldScript/OldGuiLibrary.lua", true))()
shared.GuiLibrary = GuiLibrary
local workspace = game:GetService("Workspace")
local cam = workspace.CurrentCamera
local selfdestruct = false
local GUI = GuiLibrary.CreateWindow("GUI", "🖥", UDim2.new(0, 6, 0, 6), true)
local Combat = GuiLibrary.CreateWindow("Combat", "⚔", UDim2.new(0, 50, 0, 6), true)
local Blatant = GuiLibrary.CreateWindow("Blatant", "⚠", UDim2.new(0, 75, 0, 6), true)
local Render = GuiLibrary.CreateWindow("Render", "👁", UDim2.new(0, 100, 0, 6), true)
local Utility = GuiLibrary.CreateWindow("Utility", "🛠", UDim2.new(0, 125, 0, 6), true)
local World = GuiLibrary.CreateWindow("World", "🌎", UDim2.new(0, 150, 0, 6), true)
local Other = GuiLibrary.CreateWindow("Other", "❔", UDim2.new(0, 175, 0, 6), true)
local Settings = GuiLibrary.CreateWindow("Settings", "⚙", UDim2.new(0, 200, 0, 6), true)
local Friends = GuiLibrary.CreateWindow("Friends", "👨‍👦", UDim2.new(0, 225, 0, 6), true)
local Search = GuiLibrary.CreateWindow("Search", "🔍", UDim2.new(0, 250, 0, 6), true)
--local TextGui = GuiLibrary.CreateCustomWindow("Text GUI", "📄", UDim2.new(0, 177, 0, 6), false)
local TextGui = GuiLibrary.CreateCustomWindow("amogus", ":)", UDim2.new(0, 275, 0, 6), true)

local rainbowval = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromHSV(0, 0, 1)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0, 0, 1))})
local rainbowval2 = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromHSV(0, 0, 0.42)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0, 0, 0.42))})
local rainbowval3 = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromHSV(0, 0, 1)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0, 0, 1))})
local guicolorslider = {["RainbowValue"] = false}
spawn(function()
	local counter = 0
	local w = math.pi / 12
	local CS = {}
	local CS2 = {}
	local CS3 = {}
	--4
	local num = 4 
	local frames = 0
	repeat
		wait()
		if guicolorslider["RainbowValue"] then
			if math.fmod(frames, 2) == 0 then
				for i = 0, num do
					local c = Color3.fromRGB(127 * math.sin(w*i + counter) + 128, 127 * math.sin(w*i + 2 * math.pi/3 + counter) + 128, 127*math.sin(w*i + 4*math.pi/3 + counter) + 128)
					table.insert(CS, i+1, ColorSequenceKeypoint.new(i/num, c))
					local h, s, v = c:ToHSV()
					local str = tostring(h + 0.12)
					local newcol = tonumber("0"..string.sub(str, 2, string.len(str)))
					table.insert(CS2, i+1, ColorSequenceKeypoint.new(i/num, Color3.fromHSV(newcol, s, 0.42)))
					table.insert(CS3, i+1, ColorSequenceKeypoint.new(i/num, Color3.fromHSV(newcol, s, v)))
				end
				rainbowval = ColorSequence.new(CS)
				rainbowval2 = ColorSequence.new(CS2)
				rainbowval3 = ColorSequence.new(CS3)
				pcall(function()
					TextGui.GetCustomChildren().Logo.Gradient.Color = rainbowval
					TextGui.GetCustomChildren().Logo.ImageLabel.Gradient.Color = rainbowval
					TextGui.GetCustomChildren().TextLabel.Gradient.Color = rainbowval3
					TextGui.GetCustomChildren().TextLabel.TextLabel.Gradient.Color = rainbowval2
				end)
				CS = {}
				CS2 = {}
				CS3 = {}
				counter = counter + math.pi/40
				if (counter >= math.pi * 2) then
					counter = 0
				end
			end
			if frames >= 1000 then
				frames = 0
			end
			frames = frames + 2
		end
	until selfdestruct
end)

local onething = Instance.new("ImageLabel")
onething.Parent = TextGui.GetCustomChildren()
onething.Name = "Logo"
onething.Size = UDim2.new(0, 77, 0, 32)
onething.Position = UDim2.new(1, -154, 0, 3)
onething.BackgroundColor3 = Color3.new(0, 0, 0)
onething.BorderSizePixel = 0
onething.BackgroundTransparency = 1
onething.Visible = false
--onething.Image = "http://www.roblox.com/asset/?id=5093061259"
onething.Image = "http://www.roblox.com/asset/?id=7006733820"
local onething2 = Instance.new("ImageLabel")
onething2.Parent = onething
onething2.Size = UDim2.new(0, 77, 0, 32)
onething2.Position = UDim2.new(1, 0, 0, 0)
onething2.BorderSizePixel = 0
onething2.BackgroundColor3 = Color3.new(0, 0, 0)
onething2.BackgroundTransparency = 1

--onething2.Image = "http://www.roblox.com/asset/?id=5093114878"
onething2.Image = "http://www.roblox.com/asset/?id=7006733820"
local onetext = Instance.new("TextLabel")
onetext.Parent = TextGui.GetCustomChildren()
onetext.Size = UDim2.new(1, 0, 1, 0)
onetext.Position = UDim2.new(1, -154, 0, 35)
onetext.TextColor3 = Color3.new(1, 1, 1)
onetext.BackgroundTransparency = 1
onetext.TextXAlignment = Enum.TextXAlignment.Left
onetext.TextYAlignment = Enum.TextYAlignment.Top
onetext.BorderSizePixel = 0
onetext.BackgroundColor3 = Color3.new(0, 0, 0)
onetext.Font = Enum.Font.SourceSans
onetext.Text = ""
onetext.TextSize = 20
local onetext2 = Instance.new("TextLabel")
onetext2.Name = "ExtraText"
onetext2.Parent = onetext
onetext2.Size = UDim2.new(1, 0, 1, 0)
onetext2.Position = UDim2.new(0, 1, 0, 1)
onetext2.BorderSizePixel = 0
onetext2.Visible = false
onetext2.ZIndex = 0
onetext2.Text = ""
onetext2.BackgroundTransparency = 1
onetext2.TextTransparency = 0.5
onetext2.TextXAlignment = Enum.TextXAlignment.Left
onetext2.TextYAlignment = Enum.TextYAlignment.Top
onetext2.TextColor3 = Color3.new(0, 0, 0)
onetext2.Font = Enum.Font.SourceSans
onetext:GetPropertyChangedSignal("Text"):connect(function() onetext2.Text = onetext.Text end)
onetext2.TextSize = 20
local onetext3 = onetext:Clone()
onetext3.Name = "ExtraText"
onetext3.Position = UDim2.new(0, 0, 0, 0)
onetext3.TextColor3 = Color3.new(0.65, 0.65, 0.65)
onetext3.Parent = onetext
local onetext4 = onetext3.ExtraText
onetext4.TextColor3 = Color3.new(0, 0, 0)
onetext4.TextTransparency = 0.5
onetext3:GetPropertyChangedSignal("Text"):connect(function() onetext4.Text = onetext3.Text end)
for i2,v2 in pairs(TextGui.GetCustomChildren():GetDescendants()) do
	if v2.Name ~= "ExtraText" then
		local gradient = Instance.new("UIGradient")
		gradient.Rotation = 270
		gradient.Name = "Gradient"
		gradient.Parent = v2
	end
end
TextGui.GetCustomChildren().Parent:GetPropertyChangedSignal("Position"):connect(function()
	if (TextGui.GetCustomChildren().Parent.Position.X.Offset + TextGui.GetCustomChildren().Parent.Size.X.Offset / 2) >= (cam.ViewportSize.X / 2) then
		onetext.TextXAlignment = Enum.TextXAlignment.Right
		onetext2.TextXAlignment = Enum.TextXAlignment.Right
		onetext3.TextXAlignment = Enum.TextXAlignment.Right
		onetext4.TextXAlignment = Enum.TextXAlignment.Right
		onething.Position = UDim2.new(1, -154, 0, 3)
		onetext.Position = UDim2.new(1, -154, 0, (onething.Visible and 35 or 3))
	else
		onetext.TextXAlignment = Enum.TextXAlignment.Left
		onetext2.TextXAlignment = Enum.TextXAlignment.Left
		onetext3.TextXAlignment = Enum.TextXAlignment.Left
		onetext4.TextXAlignment = Enum.TextXAlignment.Left
		onething.Position = UDim2.new(0, 3, 0, 3)
		onetext.Position = UDim2.new(0, 3, 0, (onething.Visible and 35 or 3))
	end
end)

local sortingmethod = "Alphabetical"
local function getSpaces(str)
	local strSize = game:GetService("TextService"):GetTextSize(str, 20, Enum.Font.SourceSans, Vector2.new(10000, 10000))
	return math.ceil(strSize.X / 3)
end
local function UpdateHud()
	local text = ""
	local text2 = ""
	local tableofmodules = {}
	local first = true
	
	for i,v in pairs(GuiLibrary["ObjectsThatCanBeSaved"]) do
		if v["Type"] == "OptionsButton" and v["Api"]["Name"] ~= "Text GUI" then
			if v["Api"]["Enabled"] then
				table.insert(tableofmodules, {["Text"] = v["Api"]["Name"], ["ExtraText"] = v["Api"]["GetExtraText"]})
			end
		end
	end
	if sortingmethod == "Alphabetical" then
		table.sort(tableofmodules, function(a, b) return a["Text"]:lower() < b["Text"]:lower() end)
	end
	for i2,v2 in pairs(tableofmodules) do
		if first then
			text = v2["Text"]..string.rep(" ", getSpaces(v2["ExtraText"]()))
			text2 = string.rep(" ", getSpaces(v2["Text"]))..v2["ExtraText"]()
			first = false
		else
			text = text..'\n'..v2["Text"]..string.rep(" ", getSpaces(v2["ExtraText"]()))
			text2 = text2..'\n'..string.rep(" ", getSpaces(v2["Text"]))..v2["ExtraText"]()
		end
	end
	onetext.Text = text
	onetext3.Text = text2
	local newsize = game:GetService("TextService"):GetTextSize(text, onetext.TextSize, onetext.Font, Vector2.new(1000000, 1000000))
	onetext.Size = UDim2.new(0, 154, 0, newsize.Y)
	onetext3.Size = UDim2.new(0, 154, 0, newsize.Y)
	if (TextGui.GetCustomChildren().Parent.Position.X.Offset + TextGui.GetCustomChildren().Parent.Size.X.Offset / 2) >= (cam.ViewportSize.X / 2) then
		onetext.TextXAlignment = Enum.TextXAlignment.Right
		onetext2.TextXAlignment = Enum.TextXAlignment.Right
		onetext3.TextXAlignment = Enum.TextXAlignment.Right
		onetext4.TextXAlignment = Enum.TextXAlignment.Right
		onething.Position = UDim2.new(1, -154, 0, 3)
		onetext.Position = UDim2.new(1, -154, 0, (onething.Visible and 35 or 3))
	else
		onetext.TextXAlignment = Enum.TextXAlignment.Left
		onetext2.TextXAlignment = Enum.TextXAlignment.Left
		onetext3.TextXAlignment = Enum.TextXAlignment.Left
		onetext4.TextXAlignment = Enum.TextXAlignment.Left
		onething.Position = UDim2.new(0, 3, 0, 3)
		onetext.Position = UDim2.new(0, 3, 0, (onething.Visible and 35 or 3))
	end
end

GuiLibrary["UpdateHudEvent"].Event:connect(UpdateHud)


GUI.CreateButton("Combat", function() Combat.SetVisible(true) end, function() Combat.SetVisible(false) end)
GUI.CreateButton("Blatant", function() Blatant.SetVisible(true) end, function() Blatant.SetVisible(false) end)
GUI.CreateButton("Render", function() Render.SetVisible(true) end, function() Render.SetVisible(false) end)
GUI.CreateButton("Utility", function() Utility.SetVisible(true) end, function() Utility.SetVisible(false) end)
GUI.CreateButton("World", function() World.SetVisible(true) end, function() World.SetVisible(false) end)
GUI.CreateButton("Other", function() Other.SetVisible(true) end, function() Other.SetVisible(false) end)
GUI.CreateButton("Settings", function() Settings.SetVisible(true) end, function() Settings.SetVisible(false) end)
GUI.CreateButton("Friends", function() Friends.SetVisible(true) end, function() Friends.SetVisible(false) end)
GUI.CreateButton("Search", function() Search.SetVisible(true) end, function() Search.SetVisible(false) end)
Friends.CreateColorSlider("Friends Color", function(val) GuiLibrary["FriendsObject"]["Color"] = val end)
Friends.CreateToggle("Use color", function() end, function() end)
Friends.CreateToggle("Use Friends", function() end, function() end)	
local FriendsTextList = {["RefreshValues"] = function() end}
FriendsTextList = Friends.CreateTextList("FriendList", "<username>", function(user)
	table.insert(GuiLibrary["FriendsObject"]["Friends"], user)
	FriendsTextList["RefreshValues"](GuiLibrary["FriendsObject"]["Friends"])
	GuiLibrary["SaveFriends"]()
end, function(num) 
	table.remove(GuiLibrary["FriendsObject"]["Friends"], num) 
	FriendsTextList["RefreshValues"](GuiLibrary["FriendsObject"]["Friends"])
	GuiLibrary["SaveFriends"]()
end)
GuiLibrary["FriendsObject"]["MiddleClickFunc"] = function(user)
	if table.find(GuiLibrary["FriendsObject"]["Friends"], user) == nil then
		table.insert(GuiLibrary["FriendsObject"]["Friends"], user)
		FriendsTextList["RefreshValues"](GuiLibrary["FriendsObject"]["Friends"])
		GuiLibrary["SaveFriends"]()
	else
		table.remove(GuiLibrary["FriendsObject"]["Friends"], table.find(GuiLibrary["FriendsObject"]["Friends"], user)) 
		FriendsTextList["RefreshValues"](GuiLibrary["FriendsObject"]["Friends"])
		GuiLibrary["SaveFriends"]()
	end
end
local searchColor = {["Value"] = 0.44}
local searchModule = {["Enabled"] = false}
local searchFolder = Instance.new("Folder")
searchFolder.Name = "SearchFolder"
searchFolder.Parent = GuiLibrary["MainGui"]
local function searchFindBoxHandle(part)
	for i,v in pairs(searchFolder:GetChildren()) do
		if v.Adornee == part then
			return v
		end
	end
	return nil
end
local searchAdd
local searchRemove
local searchRefresh = function()
	searchFolder:ClearAllChildren()
	if searchModule["Enabled"] then
		for i,v in pairs(workspace:GetDescendants()) do
			if v:IsA("BasePart") and table.find(GuiLibrary["Settings"]["SearchObject"]["List"], v.Name) and searchFindBoxHandle(v) == nil then
				local boxhandle = Instance.new("BoxHandleAdornment")
				boxhandle.Name = v.Name
				boxhandle.AlwaysOnTop = true
				boxhandle.Color3 = Color3.fromHSV(searchColor["Value"], 1, 1)
				boxhandle.Adornee = v
				boxhandle.ZIndex = 10
				boxhandle.Size = v.Size
				boxhandle.Transparency = 0.5
				boxhandle.Parent = searchFolder
			end
		end
	end
end
local searchTextList = {["RefreshValues"] = function() end}
searchColor = Search.CreateColorSlider("new part color", function(val)
	for i,v in pairs(searchFolder:GetChildren()) do
		v.Color3 = Color3.fromHSV(val, 1, 1)
	end
end)
searchModule = Search.CreateOptionsButton("Search", function() 
	searchRefresh()
	searchAdd = workspace.DescendantAdded:connect(function(v)
		if v:IsA("BasePart") and table.find(GuiLibrary["Settings"]["SearchObject"]["List"], v.Name) and searchFindBoxHandle(v) == nil then
			local boxhandle = Instance.new("BoxHandleAdornment")
			boxhandle.Name = v.Name
			boxhandle.AlwaysOnTop = true
			boxhandle.Color3 = Color3.fromHSV(searchColor["Value"], 1, 1)
			boxhandle.Adornee = v
			boxhandle.ZIndex = 10
			boxhandle.Size = v.Size
			boxhandle.Transparency = 0.5
			boxhandle.Parent = searchFolder
		end
	end)
	searchRemove = workspace.DescendantRemoving:connect(function(v)
		if v:IsA("BasePart") then
			local boxhandle = searchFindBoxHandle(v)
			if boxhandle then
				boxhandle:Remove()
			end
		end
	end)
end, function() 
	pcall(function()
		searchFolder:ClearAllChildren()
		searchAdd:Disconnect()
		searchRemove:Disconnect()
	end)
end, false)
SearchTextList = Search.CreateTextList("SearchList", "<part name>", function(user)
	table.insert(GuiLibrary["Settings"]["SearchObject"]["List"], user)
	SearchTextList["RefreshValues"](GuiLibrary["Settings"]["SearchObject"]["List"])
	searchRefresh()
end, function(num) 
	table.remove(GuiLibrary["Settings"]["SearchObject"]["List"], num) 
	SearchTextList["RefreshValues"](GuiLibrary["Settings"]["SearchObject"]["List"])
	searchRefresh()
end)
local XrayAdd
local Xray = GuiLibrary["ObjectsThatCanBeSaved"]["WorldWindow"]["Api"].CreateOptionsButton("Xray", function() 
	XrayAdd = workspace.DescendantAdded:connect(function(v)
		if v:IsA("BasePart") and not v.Parent:FindFirstChild("Humanoid") and not v.Parent.Parent:FindFirstChild("Humanoid") then
			v.LocalTransparencyModifier = 0.5
		end
	end)
	for i, v in pairs(workspace:GetDescendants()) do
		if v:IsA("BasePart") and not v.Parent:FindFirstChild("Humanoid") and not v.Parent.Parent:FindFirstChild("Humanoid") then
			v.LocalTransparencyModifier = 0.5
		end
	end
end, function()
	for i, v in pairs(workspace:GetDescendants()) do
		if v:IsA("BasePart") and not v.Parent:FindFirstChild("Humanoid") and not v.Parent.Parent:FindFirstChild("Humanoid") then
			v.LocalTransparencyModifier = 0
		end
	end
	XrayAdd:Disconnect()
end, false)
----
----
local Sprint = {["Enabled"] = false}
Sprint = GuiLibrary["ObjectsThatCanBeSaved"]["CombatWindow"]["Api"].CreateOptionsButton("Sprint", function()
	spawn(function()
		repeat
			wait()
			if bedwars["sprintTable"].sprinting == false then
				getmetatable(bedwars["sprintTable"])["startSprinting"](bedwars["sprintTable"])
			end
		until Sprint["Enabled"] == false
	end)
end, function() end, true, function() return "" end, "Sets your sprinting to true")
---
local TextGUI = GUI.CreateOptionsButton("Text GUI", function() TextGui.SetVisible(true) end, function() TextGui.SetVisible(false) end, true)
TextGUI.CreateDropdown("Mode", {"Alphabetical", "Random"}, function(val) sortingmethod = val UpdateHud() end)
TextGUI.CreateToggle("Watermark", function() onething.Visible = true onetext.Position = UDim2.new(0, 0, 0, 35) end, function() onething.Visible = false onetext.Position = UDim2.new(0, 0, 0, 0) end)
TextGUI.CreateToggle("Shadow", function() onetext2.Visible = true onetext4.Visible = true end, function() onetext2.Visible = false onetext4.Visible = false end)
TextGUI.CreateToggle("Render background", function() 
	onething.BackgroundTransparency = 0.5 
	onething2.BackgroundTransparency = 0.5 
	onetext.BackgroundTransparency = 0.5 
end, function() 
	onething.BackgroundTransparency = 1
	onething2.BackgroundTransparency = 1
	onetext.BackgroundTransparency = 1
end)
local SelfDestructButton = {["ToggleButton"] = function() end}
Other.CreateOptionsButton("Anti-AFK", function()
	local GC = getconnections or get_signal_cons
	if GC then
		for i,v in pairs(GC(game.Players.LocalPlayer.Idled)) do
			if v["Disable"] then
				v["Disable"](v)
			elseif v["Disconnect"] then
				v["Disconnect"](v)
			end
		end
	end
end, function() end, false)
SelfDestructButton = Other.CreateOptionsButton("SelfDestruct", function() 
	selfdestruct = true
	SelfDestructButton["ToggleButton"](false)
	GuiLibrary["SaveSettings"]()
	GuiLibrary["SaveFriends"]()
	for i,v in pairs(GuiLibrary["ObjectsThatCanBeSaved"]) do
		if (v["Type"] == "Button" or v["Type"] == "OptionsButton") and v["Api"]["Enabled"] then
			v["Api"]["ToggleButton"](false)
		end
	end
	shared.VapeExecuted = nil
	GuiLibrary["KeyInputHandler"]:Disconnect()
	GuiLibrary["KeyInputHandler2"]:Disconnect()
	GuiLibrary["MainGui"]:Remove()
	GuiLibrary["MainBlur"]:Remove()
end, function() end, false)
SelfDestructButton["Bindable"] = false

guicolorslider = Settings.CreateColorSlider("Gui Color", function(val) GuiLibrary["Settings"]["GUIObject"]["Color"] = val GuiLibrary["UpdateUI"]() end)
GuiLibrary["UpdateUI"] = function()
	--pcall(function()
		if not guicolorslider["RainbowValue"] then
			onething.Gradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromHSV(GuiLibrary["Settings"]["GUIObject"]["Color"], 1, 1)), ColorSequenceKeypoint.new(1, Color3.fromHSV(GuiLibrary["Settings"]["GUIObject"]["Color"], 1, 1))})
			onething2.Gradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromHSV(GuiLibrary["Settings"]["GUIObject"]["Color"], 1, 1)), ColorSequenceKeypoint.new(1, Color3.fromHSV(GuiLibrary["Settings"]["GUIObject"]["Color"], 1, 1))})
			onetext.Gradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromHSV(GuiLibrary["Settings"]["GUIObject"]["Color"], 1, 1)), ColorSequenceKeypoint.new(1, Color3.fromHSV(GuiLibrary["Settings"]["GUIObject"]["Color"], 1, 1))})
		--	onetext2.Gradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromHSV(GuiLibrary["Settings"]["GUIObject"]["Color"], 1, 0.42)), ColorSequenceKeypoint.new(1, Color3.fromHSV(GuiLibrary["Settings"]["GUIObject"]["Color"], 1, 0.42))})
		end
		for i,v in pairs(GuiLibrary["ObjectsThatCanBeSaved"]) do
			if v["Type"] == "Button" and v["Api"]["Enabled"] then
				if guicolorslider["RainbowValue"] then
					local rainbowsub = 2
					local rainbowcolor = GuiLibrary["Settings"]["GUIObject"]["Color"] + (-0.015 * v["Object"].LayoutOrder)
					if rainbowcolor < 0 then rainbowsub = 3 rainbowcolor = rainbowcolor * 0.25 end
					local str = tostring(rainbowcolor)
					local newcol = tonumber("0"..string.sub(str, rainbowsub, string.len(str)))
					v["Object"].BackgroundColor3 = Color3.fromHSV(newcol, 1, 1)
				else
					v["Object"].BackgroundColor3 = Color3.fromHSV(GuiLibrary["Settings"]["GUIObject"]["Color"], 1, 1)
				end
				v["Object"].TextColor3 = Color3.new(0, 0, 0)
			end
			if v["Type"] == "OptionsButton" then
				if v["Api"]["Enabled"] then
					if guicolorslider["RainbowValue"] then
						local rainbowsub = 2
						local rainbowcolor = GuiLibrary["Settings"]["GUIObject"]["Color"] + (-0.015 * v["Object"].LayoutOrder)
						if rainbowcolor < 0 then rainbowsub = 3 rainbowcolor = rainbowcolor * 0.25 end
						local str = tostring(rainbowcolor)
						local newcol = tonumber("0"..string.sub(str, rainbowsub, string.len(str)))
						v["Object"].BackgroundColor3 = Color3.fromHSV(newcol, 1, 1)
					else
						v["Object"].BackgroundColor3 = Color3.fromHSV(GuiLibrary["Settings"]["GUIObject"]["Color"], 1, 1)
					end
					v["Object"].TextColor3 = Color3.new(0, 0, 0)
				end
			end
			if (v["Type"] == "Toggle" or v["Type"] == "NewToggle") and v["Api"]["Enabled"] then
				v["Object"].BackgroundColor3 = Color3.fromHSV(GuiLibrary["Settings"]["GUIObject"]["Color"], 1, 1)
			end
			if v["Type"] == "Slider" then
				v["Object"].Slider.FillSlider.BackgroundColor3 = Color3.fromHSV(GuiLibrary["Settings"]["GUIObject"]["Color"], 1, 1)
			end
		end
--	end)
end

local playertoggle = Settings.CreateToggle("Players", function() end, function() end)
local npctoggle = Settings.CreateToggle("NPCs", function() end, function() end)
local nakedtoggle = Settings.CreateToggle("Ignore naked", function() end, function() end)
local teamsbyservertoggle = Settings.CreateToggle("Teams by server", function() end, function() end)
local teamsbycolortoggle = Settings.CreateToggle("Teams by color", function() end, function() end)
local middleclickfriendstoggle = Settings.CreateToggle("MiddleClick friends", function() GuiLibrary["FriendsObject"]["MiddleClickFriends"] = true end, function() GuiLibrary["FriendsObject"]["MiddleClickFriends"] = false end)
local blatanttoggle = Settings.CreateToggle("Blatant mode", function()
	GuiLibrary["Settings"]["GUIObject"]["BlatantMode"] = true
	for i,v in pairs(GuiLibrary["ObjectsThatCanBeSaved"]) do
		if v["Type"] == "OptionsButton" and v["Api"]["Blatant"] then
			v["Object"].TextColor3 = Color3.fromRGB(255, 255, 255)
		end
	end
end, function()
	GuiLibrary["Settings"]["GUIObject"]["BlatantMode"] = false
	for i,v in pairs(GuiLibrary["ObjectsThatCanBeSaved"]) do
		if v["Type"] == "OptionsButton" and v["Api"]["Blatant"] then
			if v["Api"]["Enabled"] then
				v["Api"]["ToggleButton"](false, true)
			end
			v["Object"].TextColor3 = Color3.fromRGB(128, 128, 128)
		end
	end
end)

warn('check 1 passed')
--[[
-- Full Credits to 7GrandDadPGN 
local GuiLibrary = shared.GuiLibrary
local players = game:GetService("Players")
local textservice = game:GetService("TextService")
local lplr = players.LocalPlayer
local workspace = game:GetService("Workspace")
local lighting = game:GetService("Lighting")
local cam = workspace.CurrentCamera
local targetinfo = shared.VapeTargetInfo
local uis = game:GetService("UserInputService")
local localmouse = lplr:GetMouse()
local requestfunc = syn and syn.request or http and http.request or http_request or fluxus and fluxus.request or getgenv().request or request
local getasset = getsynasset or getcustomasset

local RenderStepTable = {}
local function BindToRenderStep(name, num, func)
	if RenderStepTable[name] == nil then
		RenderStepTable[name] = game:GetService("RunService").RenderStepped:connect(func)
	end
end
local function UnbindFromRenderStep(name)
	if RenderStepTable[name] then
		RenderStepTable[name]:Disconnect()
		RenderStepTable[name] = nil
	end
end


local function friendCheck(plr, recolor)
	return (recolor and GuiLibrary["ObjectsThatCanBeSaved"]["Recolor visualsToggle"]["Api"]["Enabled"] or (not recolor)) and GuiLibrary["ObjectsThatCanBeSaved"]["Use FriendsToggle"]["Api"]["Enabled"] and table.find(GuiLibrary["ObjectsThatCanBeSaved"]["FriendsListTextList"]["Api"]["ObjectList"], plr.Name)
end

local function getPlayerColor(plr)
	return (friendCheck(plr, true) and Color3.fromHSV(GuiLibrary["ObjectsThatCanBeSaved"]["Friends ColorSliderColor"]["Api"]["Value"], 1, 1) or tostring(plr.TeamColor) ~= "White" and plr.TeamColor.Color)
end


shared.vapeteamcheck = function(plr)
	return (GuiLibrary["ObjectsThatCanBeSaved"]["Teams by colorToggle"]["Api"]["Enabled"] and (plr.Team ~= lplr.Team or (lplr.Team == nil or #lplr.Team:GetPlayers() == #game:GetService("Players"):GetChildren())) or GuiLibrary["ObjectsThatCanBeSaved"]["Teams by colorToggle"]["Api"]["Enabled"] == false)
end

local function targetCheck(plr, check)
	return (check and plr.Character.Humanoid.Health > 0 and plr.Character:FindFirstChild("ForceField") == nil or check == false)
end

local function isAlive(plr)
	if plr then
		return plr and plr.Character and plr.Character.Parent ~= nil and plr.Character:FindFirstChild("HumanoidRootPart") and plr.Character:FindFirstChild("Head") and plr.Character:FindFirstChild("Humanoid")
	end
	return lplr and lplr.Character and lplr.Character.Parent ~= nil and lplr.Character:FindFirstChild("HumanoidRootPart") and lplr.Character:FindFirstChild("Head") and lplr.Character:FindFirstChild("Humanoid")
end

local function isPlayerTargetable(plr, target, friend)
    return plr ~= lplr and plr and (friend and friendCheck(plr) == nil or (not friend)) and isAlive(plr) and targetCheck(plr, target) and shared.vapeteamcheck(plr)
end

local function vischeck(char, part)
	return not unpack(cam:GetPartsObscuringTarget({lplr.Character[part].Position, char[part].Position}, {lplr.Character, char}))
end

local function runcode(func)
	func()
end

local function GetAllNearestHumanoidToPosition(player, distance, amount)
	local returnedplayer = {}
	local currentamount = 0
    if isAlive() then
        for i, v in pairs(players:GetChildren()) do
            if isPlayerTargetable((player and v or nil), true, true) and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Head") and currentamount < amount then
                local mag = (lplr.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).magnitude
                if mag <= distance then
                    table.insert(returnedplayer, v)
					currentamount = currentamount + 1
                end
            end
        end
	end
	return returnedplayer
end

local function GetNearestHumanoidToPosition(player, distance)
	local closest, returnedplayer = distance, nil
    if isAlive() then
        for i, v in pairs(players:GetChildren()) do
            if isPlayerTargetable((player and v or nil), true, true) and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Head") then
                local mag = (lplr.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).magnitude
                if mag <= closest then
                    closest = mag
                    returnedplayer = v
                end
            end
        end
	end
	return returnedplayer
end

local function GetNearestHumanoidToMouse(player, distance, checkvis)
    local closest, returnedplayer = distance, nil
    if isAlive() then
        for i, v in pairs(players:GetChildren()) do
            if isPlayerTargetable((player and v or nil), true, true) and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Head") and (checkvis == false or checkvis and (vischeck(v.Character, "Head") or vischeck(v.Character, "HumanoidRootPart"))) then
                local vec, vis = cam:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)
                if vis then
                    local mag = (uis:GetMouseLocation() - Vector2.new(vec.X, vec.Y)).magnitude
                    if mag <= closest then
                        closest = mag
                        returnedplayer = v
                    end
                end
            end
        end
    end
    return returnedplayer
end

local function CalculateObjectPosition(pos)
	local newpos = cam:WorldToViewportPoint(cam.CFrame:pointToWorldSpace(cam.CFrame:pointToObjectSpace(pos)))
	return Vector2.new(newpos.X, newpos.Y)
end

local function CalculateLine(startVector, endVector, obj)
	local Distance = (startVector - endVector).Magnitude
	obj.Size = UDim2.new(0, Distance, 0, 2)
	obj.Position = UDim2.new(0, (startVector.X + endVector.X) / 2, 0, ((startVector.Y + endVector.Y) / 2) - 36)
	obj.Rotation = math.atan2(endVector.Y - startVector.Y, endVector.X - startVector.X) * (180 / math.pi)
end

local function findTouchInterest(tool)
	for i,v in pairs(tool:GetDescendants()) do
		if v:IsA("TouchTransmitter") then
			return v
		end
	end
	return nil
end


local reachrange = {["Value"] = 1}
local oldsize = {}
local Reach = GuiLibrary["ObjectsThatCanBeSaved"]["CombatWindow"]["Api"].CreateOptionsButton({
	["Name"] = "Reach", 
	["Function"] = function(callback)
		if callback then
			BindToRenderStep("Reach", 1, function() 
				local tool = lplr and lplr.Character and lplr.Character:FindFirstChildWhichIsA("Tool")
				if tool and isAlive() then
					local touch = findTouchInterest(tool)
					if touch then
						local size = rawget(oldsize, tool.Name)
						if size then
							touch.Parent.Size = Vector3.new(size.X + reachrange["Value"], size.Y, size.Z + reachrange["Value"])
							touch.Parent.Massless = true
						else
							oldsize[tool.Name] = touch.Parent.Size
						end
					end
				end
			end)
		else
			UnbindFromRenderStep("Reach")
			for i2,v2 in pairs(lplr.Character:GetChildren()) do
				if v2:IsA("Tool") and rawget(oldsize, v2.Name) then
					local touch = findTouchInterest(v2)
					if touch then
						touch.Parent.Size = rawget(oldsize, v2.Name)
						touch.Parent.Massless = false
					end
				end
			end
			for i2,v2 in pairs(lplr.Backpack:GetChildren()) do
				if v2:IsA("Tool") and rawget(oldsize, v2.Name) then
					local touch = findTouchInterest(v2)
					if touch then
						touch.Parent.Size = rawget(oldsize, v2.Name)
						touch.Parent.Massless = false
					end
				end
			end
			oldsize = {}
		end
	end
})
reachrange = Reach.CreateSlider({
	["Name"] = "Range", 
	["Min"] = 1,
	["Max"] = 50, 
	["Function"] = function(val) end
})

local Blink = GuiLibrary["ObjectsThatCanBeSaved"]["BlatantWindow"]["Api"].CreateOptionsButton({
	["Name"] = "DISABLED TO LOWER BAN RISK. //Blink", 
	["Function"] = function(callback) 
		--settings():GetService("NetworkSettings").IncomingReplicationLag = (callback and 99999 or 0)
    warn("DISABLED TO LOWER BAN RISK.")
	end, 
	["HoverText"] = "DISABLED TO LOWER BAN RISK. //Chokes all incoming packets"
})

local ClickTP = {["Enabled"] = false}
ClickTP = GuiLibrary["ObjectsThatCanBeSaved"]["BlatantWindow"]["Api"].CreateOptionsButton({
	["Name"] = "DISABLED TO LOWER BAN RISK. //MouseTP", 
	["Function"] = function(callback) 
		--if callback and isAlive() then
			--lplr.Character.HumanoidRootPart.CFrame = CFrame.new(localmouse.Hit.p)
      warn("DISABLED TO LOWER BAN RISK.")
			ClickTP["ToggleButton"](false)
		end
	end, 
	["HoverText"] = "DISABLED TO LOWER BAN RISK. //Chokes all incoming packets"
})

local flyspeed = {["Value"] = 1}
local flyverticalspeed = {["Value"] = 1}
local flyupanddown = {["Enabled"] = false}
local flymethod = {["Value"] = "Normal"}
local flyposy = 0
local flyup = false
local flydown = false
local flypress
local flyendpress
local bodyvelofly
local fly = GuiLibrary["ObjectsThatCanBeSaved"]["BlatantWindow"]["Api"].CreateOptionsButton({
	["Name"] = "Fly", 
	["Function"] = function(callback)
		if callback then
			if isAlive() then
				flyposy = lplr.Character.HumanoidRootPart.CFrame.p.Y
			end
			flypress = game:GetService("UserInputService").InputBegan:connect(function(input1)
				if flyupanddown["Enabled"] and game:GetService("UserInputService"):GetFocusedTextBox() == nil then
					if input1.KeyCode == Enum.KeyCode.Space then
						flyup = true
					end
					if input1.KeyCode == Enum.KeyCode.LeftControl then
						flydown = true
					end
				end
			end)
			flyendpress = game:GetService("UserInputService").InputEnded:connect(function(input1)
				if input1.KeyCode == Enum.KeyCode.Space then
					flyup = false
				end
				if input1.KeyCode == Enum.KeyCode.LeftControl then
					flydown = false
				end
			end)
			BindToRenderStep("Fly", 1, function(delta) 
				if isAlive() then
					if flymethod["Value"] == "Normal" then
						if (bodyvelofly == nil or bodyvelofly ~= nil and bodyvelofly.Parent ~= lplr.Character.HumanoidRootPart) then
							bodyvelofly = Instance.new("BodyVelocity")
							bodyvelofly.Parent = lplr.Character.HumanoidRootPart
							bodyvelofly.MaxForce = Vector3.new(100000, 100000, 100000)
						else
							bodyvelofly.Velocity = (lplr.Character.Humanoid.MoveDirection * flyspeed["Value"]) + Vector3.new(0, (flyup and flyverticalspeed["Value"] or 0) + (flydown and -flyverticalspeed["Value"] or 0), 0)
						end
					elseif flymethod["Value"] == "AntiCheat" then
						if (bodyvelofly ~= nil) then
							bodyvelofly:Remove()
						end
						if flyup then
							flyposy = flyposy + (1 * (math.clamp(flyverticalspeed["Value"] - 16, 1, 150) * delta))
						end
						if flydown then
							flyposy = flyposy - (1 * (math.clamp(flyverticalspeed["Value"] - 16, 1, 150) * delta))
						end
						local flypos = (lplr.Character.Humanoid.MoveDirection * (math.clamp(flyspeed["Value"] - 16, 1, 150) * delta))
						lplr.Character.HumanoidRootPart.CFrame = lplr.Character.HumanoidRootPart.CFrame + Vector3.new(flypos.X, (flyposy - lplr.Character.HumanoidRootPart.CFrame.p.Y), flypos.Z)
						lplr.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
					end
				end
			end)
		else
			if bodyvelofly then
				bodyvelofly:Remove()
			end
			flyup = false
			flydown = false
			flypress:Disconnect()
			flyendpress:Disconnect()
			UnbindFromRenderStep("Fly")
		end
	end,
	["ExtraText"] = function() return " "..flymethod["Value"] end
})
flymethod = fly.CreateDropdown({
	["Name"] = "Mode", 
	["List"] = {"Normal", "AntiCheat"},
	["Function"] = function(val)
		if isAlive() then
			flyposy = lplr.Character.HumanoidRootPart.CFrame.p.Y
		end
	end
})
flyspeed = fly.CreateSlider({
	["Name"] = "Speed",
	["Min"] = 1,
	["Max"] = 150, 
	["Function"] = function(val) end
})
flyverticalspeed = fly.CreateSlider({
	["Name"] = "Vertical Speed",
	["Min"] = 1,
	["Max"] = 150, 
	["Function"] = function(val) end
})
flyupanddown = fly.CreateToggle({
	["Name"] = "Y Level", 
	["Function"] = function() end
})

local hitboxexpand = {["Value"] = 1}
local Hitbox =  GuiLibrary["ObjectsThatCanBeSaved"]["BlatantWindow"]["Api"].CreateOptionsButton({
	["Name"] = "HitBoxes", 
	["Function"] = function(callback)
		if callback then
			BindToRenderStep("HitBoxes", 1, function() 
				for i,plr in pairs(players:GetChildren()) do
					if isPlayerTargetable(plr, true, true) and isAlive(plr) then
						plr.Character.HumanoidRootPart.Size = Vector3.new(2 + (hitboxexpand["Value"] * 0.6), 2 + (hitboxexpand["Value"] * 0.6), 1 + (hitboxexpand["Value"] * 0.6))
					end
				end
			end)
		else
			UnbindFromRenderStep("HitBoxes") 
			for i,plr in pairs(players:GetChildren()) do
				if isAlive(plr) then
					plr.Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
				end
			end
		end
	end
})
hitboxexpand = Hitbox.CreateSlider({
	["Name"] = "Expand amount",
	["Min"] = 1,
	["Max"] = 60,
	["Function"] = function(val) end
})






local bednukerrange = {["Value"] = 1}
local BedNuker = {["Enabled"] = false}
BedNuker = GuiLibrary["ObjectsThatCanBeSaved"]["BlatantWindow"]["Api"].CreateOptionsButton("BedNuker", function()
	spawn(function()
		repeat
			wait(0.2)
			local tab = game.Workspace.Map.Blocks:GetChildren()
			for i = 1, #tab do
				local obj = tab[i]
				pcall(function()
					if obj.Name == "bed" and (obj.Name:match(lplr.Team.Name:lower()) == nil) and (lplr.Character.HumanoidRootPart.Position - obj.Position).magnitude <= 20 then
						bedwars["breakBlock"](obj.Position)
					end
				end)
			end
		until BedNuker["Enabled"] == false
	end)
end, function() end, true)
bednukerrange = BedNuker.CreateSlider("Break range", 1, 20, function(val) end)






local killauraaps = {["GetRandomValue"] = function() return 1 end}
local killaurarange = {["Value"] = 1}
local killauraangle = {["Value"] = 90}
local killauratarget = {["Value"] = 1}
local killauramouse = {["Enabled"] = false}
local killauratargetframe = {["Players"] = {["Enabled"] = false}}
local killauracframe = {["Enabled"] = false}
local Killaura = {["Enabled"] = false}
local killauratick = tick()
Killaura = GuiLibrary["ObjectsThatCanBeSaved"]["BlatantWindow"]["Api"].CreateOptionsButton({
	["Name"] = "Killaura", 
	["Function"] = function(callback)
		if callback then
			BindToRenderStep("Killaura", 1, function() 
				local tool = lplr and lplr.Character and lplr.Character:FindFirstChildWhichIsA("Tool")
				local plr = GetAllNearestHumanoidToPosition(killauratargetframe["Players"]["Enabled"], killaurarange["Value"], 100)
				if tool and isAlive() and (killauramouse["Enabled"] and uis:IsMouseButtonPressed(0) or (not killauramouse["Enabled"])) then
					local touch = findTouchInterest(tool)
					if touch then
						local targettable = {}
						local targetsize = 0
						for i,v in pairs(plr) do
							local localfacing = lplr.Character.HumanoidRootPart.CFrame.lookVector
							local vec = (v.Character.HumanoidRootPart.Position - lplr.Character.HumanoidRootPart.Position).unit
							local angle = math.acos(localfacing:Dot(vec))
							if angle <= (killauraangle["Value"] / 115) then
								targettable[v.Name] = {
									["UserId"] = v.UserId,
									["Health"] = v.Character.Humanoid.Health,
									["MaxHealth"] = v.Character.Humanoid.MaxHealth
								}
								targetsize = targetsize + 1
								if killauracframe["Enabled"] then
									lplr.Character:SetPrimaryPartCFrame(CFrame.new(lplr.Character.PrimaryPart.Position, Vector3.new(v.Character:FindFirstChild("HumanoidRootPart").Position.X, lplr.Character.PrimaryPart.Position.Y, v.Character:FindFirstChild("HumanoidRootPart").Position.Z)))
								end
								if killauratick <= tick() then
									tool:Activate()
									killauratick = tick() + (1 / killauraaps["GetRandomValue"]())
								end
								firetouchinterest(touch.Parent, v.Character.HumanoidRootPart, 1)
								firetouchinterest(touch.Parent, v.Character.HumanoidRootPart, 0)
							end
						end
						targetinfo.UpdateInfo(targettable, targetsize)
					end
				end
			end)
		else
			UnbindFromRenderStep("Killaura")
		end
	end
})
killauratargetframe = Killaura.CreateTargetWindow({})
killauraaps = Killaura.CreateTwoSlider({
	["Name"] = "attacks per second. 2 or 3 will seem legit for an enemy. !! 20 is script default, 50 is highest possible !!",
	["Min"] = 1,
	["Max"] = 50,
	["Default"] = 50,
	["Default2"] = 12
})
killaurarange = Killaura.CreateSlider({
	["Name"] = "attack range. 20 or 30 will seem legit for an enemy. !! 150 is script default, only use 150+ in a worst case szenario!!",
	["Min"] = 1,
	["Max"] = 300, 
	["Function"] = function(val) end
})
killauraangle = Killaura.CreateSlider({
	["Name"] = "Max angle",
	["Min"] = 1,
	["Max"] = 360, 
	["Function"] = function(val) end,
	["Default"] = 360
})
killauramouse = Killaura.CreateToggle({
	["Name"] = "Require mouse down", 
	["Function"] = function() end
})
killauracframe = Killaura.CreateToggle({
	["Name"] = "Face target", 
	["Function"] = function() end
})

local longjumpboost = {["Value"] = 1}
local longjump = GuiLibrary["ObjectsThatCanBeSaved"]["BlatantWindow"]["Api"].CreateOptionsButton({
	["Name"] = "LongJump", 
	["Function"] = function(callback)
		if callback then
			BindToRenderStep("LongJump", 1, function() 
				if isAlive() then
					if (lplr.Character.Humanoid:GetState() == Enum.HumanoidStateType.Freefall or lplr.Character.Humanoid:GetState() == Enum.HumanoidStateType.Jumping) and lplr.Character.Humanoid.MoveDirection ~= Vector3.new(0, 0, 0) then
						lplr.Character.HumanoidRootPart.Velocity = lplr.Character.HumanoidRootPart.Velocity + lplr.Character.Humanoid.MoveDirection * (longjumpboost["Value"] / 50)
					end
				end
			end)
		else
			UnbindFromRenderStep("LongJump")
		end
	end
})
longjumpboost = longjump.CreateSlider({
	["Name"] = "Boost",
	["Min"] = 1,
	["Max"] = 150, 
	["Function"] = function(val) end
})

local HighJumpMethod = {["Value"] = "Toggle"}
local HighJumpBoost = {["Value"] = 1}
local HighJumpDelay = {["Value"] = 20}
local HighJumpTick = tick()
local highjumpbound = true
local HighJump = {["Enabled"] = false}
HighJump = GuiLibrary["ObjectsThatCanBeSaved"]["BlatantWindow"]["Api"].CreateOptionsButton({
	["Name"] = "HighJump", 
	["Function"] = function(callback)
		if callback then
			highjumpbound = false
			if HighJumpMethod["Value"] == "Toggle" then
				if HighJumpTick <= tick() and isAlive() and (lplr.Character.Humanoid:GetState() == Enum.HumanoidStateType.Running or lplr.Character.Humanoid:GetState() == Enum.HumanoidStateType.RunningNoPhysics) then
					HighJumpTick = tick() + (HighJumpDelay["Value"] / 10)
					lplr.Character.HumanoidRootPart.Velocity = Vector3.new(0, HighJumpBoost["Value"], 0)
				else
					warn('wait a second')
				end
				HighJump["ToggleButton"](false)
			else
				highjumpbound = true
				BindToRenderStep("HighJump", 1, function()
					if HighJumpTick <= tick() and isAlive() and (lplr.Character.Humanoid:GetState() == Enum.HumanoidStateType.Running or lplr.Character.Humanoid:GetState() == Enum.HumanoidStateType.RunningNoPhysics) and uis:IsKeyDown(Enum.KeyCode.Space) then
						HighJumpTick = tick() + (HighJumpDelay["Value"] / 10)
						lplr.Character.HumanoidRootPart.Velocity = Vector3.new(0, HighJumpBoost["Value"], 0)
					end
				end)
			end
		else
			if highjumpbound then
				UnbindFromRenderStep("HighJump")
			end
		end
	end,
	["HoverText"] = "Lets you jump higher"
})
HighJumpMethod = HighJump.CreateDropdown({
	["Name"] = "Mode", 
	["List"] = {"Toggle", "Normal"},
	["Function"] = function(val) end
})
HighJumpBoost = HighJump.CreateSlider({
	["Name"] = "Boost",
	["Min"] = 1,
	["Max"] = 150, 
	["Function"] = function(val) end,
	["Default"] = 100
})
HighJumpDelay = HighJump.CreateSlider({
	["Name"] = "Delay",
	["Min"] = 0,
	["Max"] = 50, 
	["Function"] = function(val) end,
})

local phase
GuiLibrary["ObjectsThatCanBeSaved"]["BlatantWindow"]["Api"].CreateOptionsButton({
	["Name"] = "Phase", 
	["Function"] = function(callback)
		if callback then
			phase = game:GetService('RunService').Stepped:Connect(function()
				if isAlive() then
					for i, part in pairs(lplr.Character:GetDescendants()) do
						if part:IsA("BasePart") and part.CanCollide == true then
							part.CanCollide = false
						end
					end
				end
			end)
		else
			phase:Disconnect()
		end
	end,
	["HoverText"] = "Lets you phase/clip through walls"
})



warn('check 2 passed')
--[[
if isfolder("vape") == false then
	makefolder("vape")
end
if isfolder("vape/CustomModules") == false then
	makefolder("vape/CustomModules")
end
if isfolder("vape/Profiles") == false then
	makefolder("vape/Profiles")
end

if pcall(function() readfile("vape/CustomModules/"..game.PlaceId..".vape") end) then
	loadstring(readfile("vape/CustomModules/"..game.PlaceId..".vape"))()
else
	--loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/67b00fcff6b14ba1cbdeed00fa58fee13af7677d/AnyGame.vape", true))()
  	--loadstring(game:HttpGet("https://raw.githubusercontent.com/InkognoitoCurry/Swift-V4/06d608d99be1a04f1243b1ff64b26b7e64ba6a36/AnyGame.vape", true))()
	----loadstring(game:HttpGet("https://raw.githubusercontent.com/InkognitoCurry/SwiftV4/main/AnyGame.vape", true))()
end

GuiLibrary["LoadSettings"]()
SearchTextList["RefreshValues"](GuiLibrary["Settings"]["SearchObject"]["List"])
GuiLibrary["LoadFriends"]()
FriendsTextList["RefreshValues"](GuiLibrary["FriendsObject"]["Friends"])
GuiLibrary["UpdateUI"]()
GuiLibrary["LoadedAnimation"]()

spawn(function()
	while wait(10) do
		if not selfdestruct then
			GuiLibrary["SaveSettings"]()
		end
	end
end)
]]--
]]--
warn('Loaded')
