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

local function createwarning(title, text, delay)
	pcall(function()
		local frame = GuiLibrary["CreateNotification"](title, text, delay, "vapeprivate/assets/WarningNotification.png")
		frame.Frame.BackgroundColor3 = Color3.fromRGB(236, 129, 44)
		frame.Frame.Frame.BackgroundColor3 = Color3.fromRGB(236, 129, 44)
	end)
end

local function friendCheck(plr, recolor)
	return (recolor and GuiLibrary["ObjectsThatCanBeSaved"]["Recolor visualsToggle"]["Api"]["Enabled"] or (not recolor)) and GuiLibrary["ObjectsThatCanBeSaved"]["Use FriendsToggle"]["Api"]["Enabled"] and table.find(GuiLibrary["ObjectsThatCanBeSaved"]["FriendsListTextList"]["Api"]["ObjectList"], plr.Name)
end

local function getPlayerColor(plr)
	return (friendCheck(plr, true) and Color3.fromHSV(GuiLibrary["ObjectsThatCanBeSaved"]["Friends ColorSliderColor"]["Api"]["Value"], 1, 1) or tostring(plr.TeamColor) ~= "White" and plr.TeamColor.Color)
end

local function getcustomassetfunc(path)
	if not isfile(path) then
		spawn(function()
			local textlabel = Instance.new("TextLabel")
			textlabel.Size = UDim2.new(1, 0, 0, 36)
			textlabel.Text = "Downloading "..path
			textlabel.BackgroundTransparency = 1
			textlabel.TextStrokeTransparency = 0
			textlabel.TextSize = 30
			textlabel.Font = Enum.Font.SourceSans
			textlabel.TextColor3 = Color3.new(1, 1, 1)
			textlabel.Position = UDim2.new(0, 0, 0, -36)
			textlabel.Parent = GuiLibrary["MainGui"]
			repeat wait() until isfile(path)
			textlabel:Remove()
		end)
		local req = requestfunc({
			Url = "https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/"..path:gsub("vape/assets", "assets"),
			--Url = "https://raw.githubusercontent.com/InkognitoCurry/Vape-v4/main"..path:gsub("vape/assets", "assets"),
			Method = "GET"
		})
		writefile(path, req.Body)
	end
	return getasset(path) 
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

local radarcam = Instance.new("Camera")
radarcam.FieldOfView = 45
local Radar = GuiLibrary.CreateCustomWindow({
	["Name"] = "Radar", 
	["Icon"] = "vape/assets/RadarIcon1.png",
	["IconSize"] = 16
})
local RadarColor = Radar.CreateColorSlider({
	["Name"] = "Player Color", 
	["Function"] = function(val) end
})
local RadarFrame = Instance.new("Frame")
RadarFrame.BackgroundColor3 = Color3.new(0, 0, 0)
RadarFrame.BorderSizePixel = 0
RadarFrame.BackgroundTransparency = 0.5
RadarFrame.Size = UDim2.new(0, 250, 0, 250)
RadarFrame.Parent = Radar.GetCustomChildren()
local RadarBorder1 = RadarFrame:Clone()
RadarBorder1.Size = UDim2.new(0, 6, 0, 250)
RadarBorder1.Parent = RadarFrame
local RadarBorder2 = RadarBorder1:Clone()
RadarBorder2.Position = UDim2.new(0, 6, 0, 0)
RadarBorder2.Size = UDim2.new(0, 238, 0, 6)
RadarBorder2.Parent = RadarFrame
local RadarBorder3 = RadarBorder1:Clone()
RadarBorder3.Position = UDim2.new(1, -6, 0, 0)
RadarBorder3.Size = UDim2.new(0, 6, 0, 250)
RadarBorder3.Parent = RadarFrame
local RadarBorder4 = RadarBorder1:Clone()
RadarBorder4.Position = UDim2.new(0, 6, 1, -6)
RadarBorder4.Size = UDim2.new(0, 238, 0, 6)
RadarBorder4.Parent = RadarFrame
local RadarBorder5 = RadarBorder1:Clone()
RadarBorder5.Position = UDim2.new(0, 0, 0.5, -1)
RadarBorder5.BackgroundColor3 = Color3.new(1, 1, 1)
RadarBorder5.Size = UDim2.new(0, 250, 0, 2)
RadarBorder5.Parent = RadarFrame
local RadarBorder6 = RadarBorder1:Clone()
RadarBorder6.Position = UDim2.new(0.5, -1, 0, 0)
RadarBorder6.BackgroundColor3 = Color3.new(1, 1, 1)
RadarBorder6.Size = UDim2.new(0, 2, 0, 124)
RadarBorder6.Parent = RadarFrame
local RadarBorder7 = RadarBorder1:Clone()
RadarBorder7.Position = UDim2.new(0.5, -1, 0, 126)
RadarBorder7.BackgroundColor3 = Color3.new(1, 1, 1)
RadarBorder7.Size = UDim2.new(0, 2, 0, 124)
RadarBorder7.Parent = RadarFrame
local RadarMainFrame = Instance.new("Frame")
RadarMainFrame.BackgroundTransparency = 1
RadarMainFrame.Size = UDim2.new(0, 250, 0, 250)
RadarMainFrame.Parent = RadarFrame
Radar.GetCustomChildren().Parent:GetPropertyChangedSignal("Size"):connect(function()
	RadarFrame.Position = UDim2.new(0, 0, 0, (Radar.GetCustomChildren().Parent.Size.Y.Offset == 0 and 45 or 0))
end)
players.PlayerRemoving:connect(function(plr)
	if RadarMainFrame:FindFirstChild(plr.Name) then
		RadarMainFrame[plr.Name]:Remove()
	end
end)
GuiLibrary["ObjectsThatCanBeSaved"]["GUIWindow"]["Api"].CreateCustomToggle({
	["Name"] = "Radar", 
	["Icon"] = "vape/assets/RadarIcon2.png", 
	["Function"] = function(callback)
		Radar.SetVisible(callback) 
		if callback then
			BindToRenderStep("Radar", 1, function() 
				local v278 = (CFrame.new(0, 0, 0):inverse() * cam.CFrame).p * 0.2 * Vector3.new(1, 1, 1);
				local v279, v280, v281 = cam.CFrame:ToOrientation();
				local u90 = v280 * 180 / math.pi;
				local v277 = 0 - u90;
				local v276 = v278 + Vector3.new(0, 0, 0);
				radarcam.CFrame = CFrame.new(v276 + Vector3.new(0, 50, 0)) * CFrame.Angles(0, -v277 * (math.pi / 180), 0) * CFrame.Angles(-90 * (math.pi / 180), 0, 0)
				for i,plr in pairs(players:GetChildren()) do
					local thing
					if RadarMainFrame:FindFirstChild(plr.Name) then
						thing = RadarMainFrame[plr.Name]
						if thing.Visible then
							thing.Visible = false
						end
					else
						thing = Instance.new("Frame")
						thing.BackgroundTransparency = 0
						thing.Size = UDim2.new(0, 4, 0, 4)
						thing.BorderSizePixel = 1
						thing.BorderColor3 = Color3.new(0, 0, 0)
						thing.BackgroundColor3 = Color3.new(0, 0, 0)
						thing.Visible = false
						thing.Name = plr.Name
						thing.Parent = RadarMainFrame
					end
					
					if isPlayerTargetable(plr, false, false) then
						local v238, v239 = radarcam:WorldToViewportPoint((CFrame.new(0, 0, 0):inverse() * plr.Character.HumanoidRootPart.CFrame).p * 0.2)
						thing.Visible = true
						thing.BackgroundColor3 = getPlayerColor(plr) or Color3.fromHSV(RadarColor["Value"], 1, 1)
						thing.Position = UDim2.new(math.clamp(v238.X, 0.03, 0.97), -2, math.clamp(v238.Y, 0.03, 0.97), -2)
					end
				end
			end)
		else
			UnbindFromRenderStep("Radar")
			RadarMainFrame:ClearAllChildren()
		end
	end, 
	["Priority"] = 1
})

local aimfov = {["Value"] = 1}
local aimvischeck = {["Enabled"] = false}
local aimheadshotchance = {["Value"] = 1}
local aimhitchance = {["Value"] = 1}
local aimmethod = {["Value"] = "FindPartOnRayWithIgnoreList"}
local kek = function() end
local kek2 = function() end
local tar = nil
local meta = getrawmetatable(game)
setreadonly(meta, false)
local old = meta.__namecall
local old2 = meta.__index
local hook

local AimAssist = GuiLibrary["ObjectsThatCanBeSaved"]["CombatWindow"]["Api"].CreateOptionsButton({
	["Name"] = "AimAssist", 
	["Function"] = function(callback) 
		if callback then
			kek() 
		else
			UnbindFromRenderStep("AimAssist") 
			meta.__namecall = old
			meta.__index = old2
			tar = nil 
		end
	end,
	["ExtraText"] = function() 
		if aimmethod["Value"]:match("FindPartOnRay") then
			return " Ray"
		else
			return " "..string.gsub(aimmethod["Value"], "PointToRay", "") 
		end
	end
})
local aimassisttarget = AimAssist.CreateTargetWindow({})
aimmethod = AimAssist.CreateDropdown({
	["Name"] = "Method", 
	["List"] = {"FindPartOnRayWithIgnoreList", "FindPartOnRayWithWhitelist", "Raycast", "FindPartOnRay", "ScreenPointToRay", "ViewportPointToRay", "Mouse"},
	["Function"] = function(val) end
})
local aimtable = {["FindPartOnRayWithIgnoreList"] = 1, ["FindPartOnRayWithWhitelist"] = 1, ["Raycast"] = 2, ["FindPartOnRay"] = 1, ["ScreenPointToRay"] = 3, ["ViewportPointToRay"] = 3, ["Mouse"] = 4}
aimfov = AimAssist.CreateSlider({
	["Name"] = "FOV", 
	["Min"] = 1, 
	["Max"] = 1000, 
	["Function"] = function(val) end
})
aimhitchance = AimAssist.CreateSlider({
	["Name"] = "Hit Chance", 
	["Min"] = 1, 
	["Max"] = 100, 
	["Function"] = function(val) end
})
aimheadshotchance = AimAssist.CreateSlider({
	["Name"] = "Headshot Chance", 
	["Min"] = 1,
	["Max"] = 100, 
	["Function"] = function(val) end
})

kek = function()
	local old3
	old3 = hookmetamethod(game, "__namecall", function(...)
		local Namecallaimmethod = getnamecallmethod()
		local Args = {...}
		local scriptname = getcallingscript()

		if tar then
			if not checkcaller() and (scriptname and not scriptname.Name:match("Camera")) and Namecallaimmethod == aimmethod["Value"] then
				if aimtable[aimmethod["Value"]] == 1 then
				   Args[2] = Ray.new(Args[2].Origin, (tar.Position + Vector3.new(0, (Args[2].Origin - tar.Position).magnitude/10000, 0) - Args[2].Origin).unit * 10000)
				   if GuiLibrary["ObjectsThatCanBeSaved"]["Blatant modeToggle"]["Api"]["Enabled"] then
						return tar, tar.Position, (tar.Position + Vector3.new(0, (Args[2].Origin - tar.Position).magnitude/10000, 0) - Args[2].Origin).unit * 10000, tar.Material
				   end
				end
				if aimtable[aimmethod["Value"]] == 2 then
				   Args[3] = (tar.Position + Vector3.new(0, (Args[2] - tar.Position).magnitude/10000, 0) - Args[2]).unit * 10000
				   if GuiLibrary["ObjectsThatCanBeSaved"]["Blatant modeToggle"]["Api"]["Enabled"] then
						local haha = RaycastParams.new()
						haha.FilterType = Enum.RaycastFilterType.Whitelist
						haha.FilterDescendantsInstances = {tar}
						Args[4] = haha
				   end
				end
				if aimtable[aimmethod["Value"]] == 3 then
					return Ray.new(cam.CFrame.p, (tar.Position + Vector3.new(0, (cam.CFrame.p - tar.Position).magnitude/10000, 0) - cam.CFrame.p).unit * 10000)
				end
			end
		end

		return old3(unpack(Args))
	end)
    BindToRenderStep("AimAssist", 1, function() 
		local plr = GetNearestHumanoidToMouse(aimassisttarget["Players"]["Enabled"], aimfov["Value"], GuiLibrary["ObjectsThatCanBeSaved"]["Blatant modeToggle"]["Api"]["Enabled"] == false and aimvischeck["Enabled"])
		local targettable = {}
		local targetsize = 0
		if plr and (math.floor(Random.new().NextNumber(Random.new(), 0, 1) * 100)) <= aimhitchance["Value"] then
			targettable[plr.Name] = {
				["UserId"] = plr.UserId,
				["Health"] = plr.Character.Humanoid.Health,
				["MaxHealth"] = plr.Character.Humanoid.MaxHealth
			}
			targetsize = targetsize + 1
			tar = (math.floor(Random.new().NextNumber(Random.new(), 0, 1) * 100)) <= aimheadshotchance["Value"] and plr.Character.Head or plr.Character.HumanoidRootPart
			targetinfo.UpdateInfo(targettable, targetsize)
		else
			tar = nil
			targetinfo.UpdateInfo({}, 0)
		end
    end)
end

local autoclickercps = {["GetRandomValue"] = function() return 1 end}
local autoclicker = {["Enabled"] = false}
local autoclickertick = tick()
autoclicker = GuiLibrary["ObjectsThatCanBeSaved"]["CombatWindow"]["Api"].CreateOptionsButton({
	["Name"] = "AutoClicker", 
	["Function"] = function(callback)
		if callback then
			BindToRenderStep("AutoClicker", 1, function() 
				local tool = lplr and lplr.Character and lplr.Character:FindFirstChildWhichIsA("Tool")
				if tool and isAlive() and uis:IsMouseButtonPressed(0) and autoclickertick <= tick() then
					tool:Activate()
					autoclickertick = tick() + (1 / autoclickercps["GetRandomValue"]()) * Random.new().NextNumber(Random.new(), 0.75, 1)
				end
			end)
		else
			UnbindFromRenderStep("AutoClicker")
		end
	end
})
autoclickercps = autoclicker.CreateTwoSlider({
	["Name"] = "CPS",
	["Min"] = 1,
	["Max"] = 50, 
	["Default"] = 8,
	["Default2"] = 12
})

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
					createwarning("LongJump", "Wait "..math.round(HighJumpTick - tick()).." before retoggling.", 1)
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


local speedval = {["Value"] = 1}
local speedmethod = {["Value"] = "AntiCheat A"}
local speedjump = {["Enabled"] = false}
local bodyvelo

local speed = GuiLibrary["ObjectsThatCanBeSaved"]["BlatantWindow"]["Api"].CreateOptionsButton({
	["Name"] = "Speed", 
	["Function"] = function(callback)
		if callback then
			BindToRenderStep("Speed", 1, function(delta)
				if isAlive() then
					if speedmethod["Value"] == "AntiCheat A" then
						if (bodyvelo == nil or bodyvelo ~= nil and bodyvelo.Parent ~= lplr.Character.HumanoidRootPart) then
							bodyvelo = Instance.new("BodyVelocity")
							bodyvelo.Parent = lplr.Character.HumanoidRootPart
							bodyvelo.MaxForce = Vector3.new(100000, 0, 100000)
						else
							bodyvelo.Velocity = lplr.Character.Humanoid.MoveDirection * speedval["Value"]
						end
					elseif speedmethod["Value"] == "AntiCheat B" then
						if (bodyvelo ~= nil) then
							bodyvelo:Remove()
						end
						lplr.Character.HumanoidRootPart.CFrame = lplr.Character.HumanoidRootPart.CFrame + (lplr.Character.Humanoid.MoveDirection * (speedval["Value"] * delta))
					end
					if speedjump["Enabled"] then
						if (lplr.Character.Humanoid:GetState() == Enum.HumanoidStateType.Running or lplr.Character.Humanoid:GetState() == Enum.HumanoidStateType.RunningNoPhysics) and lplr.Character.Humanoid.MoveDirection ~= Vector3.new(0, 0, 0) then
							if speedmethod["Value"] == "AntiCheat A" then
								lplr.Character.HumanoidRootPart.Velocity = Vector3.new(lplr.Character.HumanoidRootPart.Velocity.X, 20, lplr.Character.HumanoidRootPart.Velocity.Z)
							elseif speedmethod["Value"] == "AntiCheat B" then
								lplr.Character.HumanoidRootPart.CFrame = lplr.Character.HumanoidRootPart.CFrame + Vector3.new(0, 0.2, 0)
							end
						end
					end
				end
			end)
		else
			if bodyvelo then
				bodyvelo:Remove()
			end
			UnbindFromRenderStep("Speed")
		end
	end,
	["ExtraText"] = function() return " "..speedmethod["Value"] end
})
speedmethod = speed.CreateDropdown({
	["Name"] = "Mode", 
	["List"] = {"AntiCheat A", "AntiCheat B"},
	["Function"] = function(val) end
})
speedval = speed.CreateSlider({
	["Name"] = "Speed", 
	["Min"] = 1,
	["Max"] = 150, 
	["Function"] = function(val) end
})
speedjump = speed.CreateToggle({
	["Name"] = "AutoJump", 
	["Function"] = function() end
})

runcode(function()
	local bodyspin
	local spinbotspeed = {["Value"] = 1}
	local spinbot = GuiLibrary["ObjectsThatCanBeSaved"]["BlatantWindow"]["Api"].CreateOptionsButton({
		["Name"] = "SpinBot",
		["Function"] = function(callback)
			if callback then
				BindToRenderStep("SpinBot", 1, function()
					if isAlive() then
						if (bodyspin == nil or bodyspin ~= nil and bodyspin.Parent ~= lplr.Character.HumanoidRootPart) then
							bodyspin = Instance.new("BodyAngularVelocity")
							bodyspin.MaxTorque = Vector3.new(0, math.huge, 0)
							bodyspin.AngularVelocity = Vector3.new(0, spinbotspeed["Value"], 0)
							bodyspin.Parent = lplr.Character.HumanoidRootPart
						else
							bodyspin.AngularVelocity = Vector3.new(0, spinbotspeed["Value"], 0)
						end
					end
				end)
			else
				if bodyspin then
					bodyspin:Remove()
				end
				UnbindFromRenderStep("SpinBot")
			end
		end,
		["HoverText"] = "Makes your character spin around in circles (does not work in first person)"
	})
	spinbotspeed = spinbot.CreateSlider({
		["Name"] = "Speed",
		["Min"] = 1,
		["Max"] = 100,
		["Default"] = 40,
		["Function"] = function() end
	})
end)

local healthColorToPosition = {
	[Vector3.new(Color3.fromRGB(255, 28, 0).r,
  Color3.fromRGB(255, 28, 0).g,
  Color3.fromRGB(255, 28, 0).b)] = 0.1;
	[Vector3.new(Color3.fromRGB(250, 235, 0).r,
  Color3.fromRGB(250, 235, 0).g,
  Color3.fromRGB(250, 235, 0).b)] = 0.5;
	[Vector3.new(Color3.fromRGB(27, 252, 107).r,
  Color3.fromRGB(27, 252, 107).g,
  Color3.fromRGB(27, 252, 107).b)] = 0.8;
}
local min = 0.1
local minColor = Color3.fromRGB(255, 28, 0)
local max = 0.8
local maxColor = Color3.fromRGB(27, 252, 107)

local function HealthbarColorTransferFunction(healthPercent)
	if healthPercent < min then
		return minColor
	elseif healthPercent > max then
		return maxColor
	end


	local numeratorSum = Vector3.new(0,0,0)
	local denominatorSum = 0
	for colorSampleValue, samplePoint in pairs(healthColorToPosition) do
		local distance = healthPercent - samplePoint
		if distance == 0 then
			
			return Color3.new(colorSampleValue.x, colorSampleValue.y, colorSampleValue.z)
		else
			local wi = 1 / (distance*distance)
			numeratorSum = numeratorSum + wi * colorSampleValue
			denominatorSum = denominatorSum + wi
		end
	end
	local result = numeratorSum / denominatorSum
	return Color3.new(result.x, result.y, result.z)
end

local ArrowsFolder = Instance.new("Folder")
ArrowsFolder.Name = "ArrowsFolder"
ArrowsFolder.Parent = GuiLibrary["MainGui"]
players.PlayerRemoving:connect(function(plr)
	if ArrowsFolder:FindFirstChild(plr.Name) then
		ArrowsFolder[plr.Name]:Remove()
	end
end)
local ArrowsColor = {["Value"] = 0.44}
local Arrows = GuiLibrary["ObjectsThatCanBeSaved"]["RenderWindow"]["Api"].CreateOptionsButton({
	["Name"] = "Arrows", 
	["Function"] = function(callback) 
		if callback then
			BindToRenderStep("Arrows", 500, function()
				for i,plr in pairs(players:GetChildren()) do
						local thing
						if ArrowsFolder:FindFirstChild(plr.Name) then
							thing = ArrowsFolder[plr.Name]
							thing.Visible = false
							thing.ImageColor3 = getPlayerColor(plr) or Color3.fromHSV(ArrowsColor["Value"], 1, 1)
						else
							thing = Instance.new("ImageLabel")
							thing.BackgroundTransparency = 1
							thing.BorderSizePixel = 0
							thing.Size = UDim2.new(0, 256, 0, 256)
							thing.AnchorPoint = Vector2.new(0.5, 0.5)
							thing.Position = UDim2.new(0.5, 0, 0.5, 0)
							thing.Visible = false
							thing.Image = getcustomassetfunc("vape/assets/ArrowIndicator.png")
							thing.Name = plr.Name
							thing.Parent = ArrowsFolder
						end
						
						if isAlive(plr) and plr ~= lplr then
							local rootPos, rootVis = cam:WorldToViewportPoint(plr.Character.HumanoidRootPart.Position)
							local camcframeflat = CFrame.new(cam.CFrame.p, cam.CFrame.p + cam.CFrame.lookVector * Vector3.new(1, 0, 1))
							local pointRelativeToCamera = camcframeflat:pointToObjectSpace(plr.Character.HumanoidRootPart.Position)
							local unitRelativeVector = (pointRelativeToCamera * Vector3.new(1, 0, 1)).unit
							local rotation = math.atan2(unitRelativeVector.Z, unitRelativeVector.X)
							thing.Visible = not rootVis
							thing.Rotation = math.deg(rotation)
						end
				end
			end)
		else
			UnbindFromRenderStep("Arrows") 
			ArrowsFolder:ClearAllChildren()
		end
	end, 
	["HoverText"] = "Draws arrows on screen when entities\nare out of your field of view."
})
ArrowsColor = Arrows.CreateColorSlider({
	["Name"] = "Player Color", 
	["Function"] = function(val) end
})

local ESPFolder = Instance.new("Folder")
ESPFolder.Name = "ESPFolder"
ESPFolder.Parent = GuiLibrary["MainGui"]
players.PlayerRemoving:connect(function(plr)
	if ESPFolder:FindFirstChild(plr.Name) then
		ESPFolder[plr.Name]:Remove()
	end
end)
local ESPColor = {["Value"] = 0.44}
local ESPHealthBar = {["Enabled"] = false}
local ESPMethod = {["Value"] = "2D"}
local ESP = GuiLibrary["ObjectsThatCanBeSaved"]["RenderWindow"]["Api"].CreateOptionsButton({
	["Name"] = "ESP", 
	["Function"] = function(callback) 
		if callback then
			BindToRenderStep("ESP", 500, function()
				for i,plr in pairs(players:GetChildren()) do
					if ESPMethod["Value"] == "2D" then
						local thing
						if ESPFolder:FindFirstChild(plr.Name) then
							thing = ESPFolder[plr.Name]
							thing.Visible = false
							thing.Line1.BackgroundColor3 = getPlayerColor(plr) or Color3.fromHSV(ESPColor["Value"], 1, 1)
							thing.Line2.BackgroundColor3 = getPlayerColor(plr) or Color3.fromHSV(ESPColor["Value"], 1, 1)
							thing.Line3.BackgroundColor3 = getPlayerColor(plr) or Color3.fromHSV(ESPColor["Value"], 1, 1)
							thing.Line4.BackgroundColor3 = getPlayerColor(plr) or Color3.fromHSV(ESPColor["Value"], 1, 1)
						else
							thing = Instance.new("Frame")
							thing.BackgroundTransparency = 1
							thing.BorderSizePixel = 0
							thing.Visible = false
							thing.Name = plr.Name
							thing.Parent = ESPFolder
							local line1 = Instance.new("Frame")
							line1.BorderSizePixel = 0
							line1.Name = "Line1"
							line1.ZIndex = 2
							line1.Size = UDim2.new(1, -2, 0, 1)
							line1.Position = UDim2.new(0, 1, 0, 1)
							line1.BackgroundColor3 = getPlayerColor(plr) or Color3.fromHSV(ESPColor["Value"], 1, 1)
							line1.Parent = thing
							local line2 = Instance.new("Frame")
							line2.BorderSizePixel = 0
							line2.Name = "Line2"
							line2.Size = UDim2.new(1, -2, 0, 1)
							line2.ZIndex = 2
							line2.Position = UDim2.new(0, 1, 1, -2)
							line2.BackgroundColor3 = getPlayerColor(plr) or Color3.fromHSV(ESPColor["Value"], 1, 1)
							line2.Parent = thing
							local line3 = Instance.new("Frame")
							line3.BorderSizePixel = 0
							line3.Name = "Line3"
							line3.Size = UDim2.new(0, 1, 1, -2)
							line3.Position = UDim2.new(0, 1, 0, 1)
							line3.ZIndex = 2
							line3.BackgroundColor3 = getPlayerColor(plr) or Color3.fromHSV(ESPColor["Value"], 1, 1)
							line3.Parent = thing
							local line4 = Instance.new("Frame")
							line4.BorderSizePixel = 0
							line4.Name = "Line4"
							line4.Size = UDim2.new(0, 1, 1, -2)
							line4.Position = UDim2.new(1, -2, 0, 1)
							line4.ZIndex = 2
							line4.BackgroundColor3 = getPlayerColor(plr) or Color3.fromHSV(ESPColor["Value"], 1, 1)
							line4.Parent = thing
							local line1clone = line1:Clone()
							line1clone.ZIndex = 1
							line1clone.Size = UDim2.new(1, 0, 0, 3)
							line1clone.Position = UDim2.new(0, 0, 0, 0)
							line1clone.BackgroundColor3 = Color3.new(0, 0, 0)
							line1clone.Parent = thing
							local line2clone = line2:Clone()
							line2clone.ZIndex = 1
							line2clone.Size = UDim2.new(1, 0, 0, 3)
							line2clone.Position = UDim2.new(0, 0, 1, -3)
							line2clone.BackgroundColor3 = Color3.new(0, 0, 0)
							line2clone.Parent = thing
							local line3clone = line3:Clone()
							line3clone.ZIndex = 1
							line3clone.Size = UDim2.new(0, 3, 1, 0)
							line3clone.Position = UDim2.new(0, 0, 0, 0)
							line3clone.BackgroundColor3 = Color3.new(0, 0, 0)
							line3clone.Parent = thing
							local line4clone = line4:Clone()
							line4clone.ZIndex = 1
							line4clone.Size = UDim2.new(0, 3, 1, 0)
							line4clone.Position = UDim2.new(1, -3, 0, 0)
							line4clone.BackgroundColor3 = Color3.new(0, 0, 0)
							line4clone.Parent = thing
							local healthline = Instance.new("Frame")
							healthline.BorderSizePixel = 0
							healthline.Name = "HealthLineMain"
							healthline.ZIndex = 2
							healthline.AnchorPoint = Vector2.new(0, 1)
							healthline.Visible = ESPHealthBar["Enabled"]
							healthline.Size = UDim2.new(0, 1, 1, -2)
							healthline.Position = UDim2.new(0, -4, 1, -1)
							healthline.BackgroundColor3 = Color3.new(0, 1, 0)
							healthline.Parent = thing
							local healthlineclone = healthline:Clone()
							healthlineclone.ZIndex = 1
							healthlineclone.AnchorPoint = Vector2.new(0, 0)
							healthlineclone.Size = UDim2.new(0, 3, 1, 0)
							healthlineclone.Visible = ESPHealthBar["Enabled"]
							healthlineclone.Name = "HealthLineBKG"
							healthlineclone.Position = UDim2.new(0, -5, 0, 0)
							healthlineclone.BackgroundColor3 = Color3.new(0, 0, 0)
							healthlineclone.Parent = thing
						end
						
						if isAlive(plr) and plr ~= lplr then
							local rootPos, rootVis = cam:WorldToViewportPoint(plr.Character.HumanoidRootPart.Position)
							local rootSize = (plr.Character.HumanoidRootPart.Size.X * 1500) * (1 / GuiLibrary["MainRescale"].Scale)
							local headPos, headVis = cam:WorldToViewportPoint(plr.Character.Head.Position + Vector3.new(0, 1, 0))
							local legPos, legVis = cam:WorldToViewportPoint(plr.Character.HumanoidRootPart.Position - Vector3.new(0, 4 + plr.Character.Humanoid.HipHeight, 0))
							rootPos = rootPos * (1 / GuiLibrary["MainRescale"].Scale)
							if rootVis then
								if ESPHealthBar["Enabled"] then
									local color = HealthbarColorTransferFunction(plr.Character.Humanoid.Health / plr.Character.Humanoid.MaxHealth)
									thing.HealthLineMain.BackgroundColor3 = color
									thing.HealthLineMain.Size = UDim2.new(0, 1, (plr.Character.Humanoid.Health / plr.Character.Humanoid.MaxHealth), -2)
								end
								thing.Visible = rootVis
								thing.Size = UDim2.new(0, rootSize / rootPos.Z, 0, headPos.Y - legPos.Y)
								thing.Position = UDim2.new(0, rootPos.X - thing.Size.X.Offset / 2, 0, (rootPos.Y - thing.Size.Y.Offset / 2) - 36)
							end
						end
					end
					if ESPMethod["Value"] == "Skeleton" then
						local thing
						if ESPFolder:FindFirstChild(plr.Name) then
							thing = ESPFolder[plr.Name]
							thing.Visible = false
							for linenum, line in pairs(thing:GetChildren()) do
								line.BackgroundColor3 = getPlayerColor(plr) or Color3.fromHSV(ESPColor["Value"], 1, 1)
							end
						else
							thing = Instance.new("Frame")
							thing.BackgroundTransparency = 1
							thing.BorderSizePixel = 0
							thing.Visible = false
							thing.Name = plr.Name
							thing.Parent = ESPFolder
							local line1 = Instance.new("Frame")
							line1.BorderSizePixel = 0
							line1.Name = "TopTorsoLine"
							line1.AnchorPoint = Vector2.new(0.5, 0.5)
							line1.ZIndex = 2
							line1.Size = UDim2.new(0, 0, 0, 0)
							line1.Position = UDim2.new(0, 0, 0, 0)
							line1.BackgroundColor3 = getPlayerColor(plr) or Color3.fromHSV(ESPColor["Value"], 1, 1)
							line1.Parent = thing
							local line2 = line1:Clone()
							line2.Name = "MiddleTorsoLine"
							line2.Parent = thing
							local line3 = line1:Clone()
							line3.Name = "BottomTorsoLine"
							line3.Parent = thing
							local line4 = line1:Clone()
							line4.Name = "LeftArm"
							line4.Parent = thing
							local line5 = line1:Clone()
							line5.Name = "RightArm"
							line5.Parent = thing
							local line6 = line1:Clone()
							line6.Name = "LeftLeg"
							line6.Parent = thing
							local line7 = line1:Clone()
							line7.Name = "RightLeg"
							line7.Parent = thing
							local line8 = line1:Clone()
							line8.Name = "Head"
							line8.Parent = thing
							local line9 = line1:Clone()
							line9.Name = "HeadForward"
							line9.Parent = thing
						end
						
						if isAlive(plr) and plr ~= lplr and plr.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
							local rootPos, rootVis = cam:WorldToViewportPoint(plr.Character.HumanoidRootPart.Position)
							if rootVis and plr.Character:FindFirstChild("Torso") and plr.Character:FindFirstChild("Left Arm") and plr.Character:FindFirstChild("Right Arm") and plr.Character:FindFirstChild("Left Leg") and plr.Character:FindFirstChild("Right Leg") and plr.Character:FindFirstChild("Head") then
								thing.Visible = true
								local head = CalculateObjectPosition((plr.Character["Head"].CFrame).p)
								local headfront = CalculateObjectPosition((plr.Character["Head"].CFrame * CFrame.new(0, 0, -0.5)).p)
								local toplefttorso = CalculateObjectPosition((plr.Character["Torso"].CFrame * CFrame.new(-1.5, 1, 0)).p)
								local toprighttorso = CalculateObjectPosition((plr.Character["Torso"].CFrame * CFrame.new(1.5, 1, 0)).p)
								local toptorso = CalculateObjectPosition((plr.Character["Torso"].CFrame * CFrame.new(0, 1, 0)).p)
								local bottomtorso = CalculateObjectPosition((plr.Character["Torso"].CFrame * CFrame.new(0, -1, 0)).p)
								local bottomlefttorso = CalculateObjectPosition((plr.Character["Torso"].CFrame * CFrame.new(-0.5, -1, 0)).p)
								local bottomrighttorso = CalculateObjectPosition((plr.Character["Torso"].CFrame * CFrame.new(0.5, -1, 0)).p)
								local leftarm = CalculateObjectPosition((plr.Character["Left Arm"].CFrame * CFrame.new(0, -0.8, 0)).p)
								local rightarm = CalculateObjectPosition((plr.Character["Right Arm"].CFrame * CFrame.new(0, -0.8, 0)).p)
								local leftleg = CalculateObjectPosition((plr.Character["Left Leg"].CFrame * CFrame.new(0, -0.8, 0)).p)
								local rightleg = CalculateObjectPosition((plr.Character["Right Leg"].CFrame * CFrame.new(0, -0.8, 0)).p)
								CalculateLine(toplefttorso, toprighttorso, thing.TopTorsoLine)
								CalculateLine(toptorso, bottomtorso, thing.MiddleTorsoLine)
								CalculateLine(bottomlefttorso, bottomrighttorso, thing.BottomTorsoLine)
								CalculateLine(toplefttorso, leftarm, thing.LeftArm)
								CalculateLine(toprighttorso, rightarm, thing.RightArm)
								CalculateLine(bottomlefttorso, leftleg, thing.LeftLeg)
								CalculateLine(bottomrighttorso, rightleg, thing.RightLeg)
								CalculateLine(toptorso, head, thing.Head)
								CalculateLine(head, headfront, thing.HeadForward)
							end
						end
					end
				end
			end)
		else
			UnbindFromRenderStep("ESP") 
			ESPFolder:ClearAllChildren()
		end
	end
})
ESPColor = ESP.CreateColorSlider({
	["Name"] = "Player Color", 
	["Function"] = function(val) end
})
ESPMethod = ESP.CreateDropdown({
	["Name"] = "Mode",
	["List"] = {"2D", "Skeleton"},
	["Function"] = function(val)
		ESPFolder:ClearAllChildren()
		ESPHealthBar["Object"].Visible = (val == "2D")
	end
})
ESPHealthBar = ESP.CreateToggle({
	["Name"] = "Health Bar", 
	["Function"] = function(callback)
		if callback then 
			for i,v in pairs(ESPFolder:GetChildren()) do
				v.HealthLineMain.Visible = true
				v.HealthLineBKG.Visible = true
			end
		else
			for i,v in pairs(ESPFolder:GetChildren()) do
				v.HealthLineMain.Visible = false
				v.HealthLineBKG.Visible = false
			end
		end
	end
})

local ChamsFolder = Instance.new("Folder")
ChamsFolder.Name = "ChamsFolder"
ChamsFolder.Parent = GuiLibrary["MainGui"]
players.PlayerRemoving:connect(function(plr)
	if ChamsFolder:FindFirstChild(plr.Name) then
		ChamsFolder[plr.Name]:Remove()
	end
end)
local ChamsColor = {["Value"] = 0.44}
local ChamsTransparency = {["Value"] = 1}
local ChamsOnTop = {["Enabled"] = true}
local chamobjects = {["Head"] = true, ["Torso"] = true, ["UpperTorso"] = true, ["LowerTorso"] = true, ["Left Arm"] = true, ["Left Leg"] = true, ["Right Arm"] = true, ["Right Leg"] = true, ["LeftLowerLeg"] = true, ["RightLowerLeg"] = true, ["LeftUpperLeg"] = true, ["RightUpperLeg"] = true, ["LeftFoot"] = true, ["RightFoot"] = true, ["LeftLowerArm"] = true, ["RightLowerArm"] = true, ["LeftUpperArm"] = true, ["RightUpperArm"] = true, ["LeftHand"] = true, ["RightHand"] = true}
local Chams = GuiLibrary["ObjectsThatCanBeSaved"]["RenderWindow"]["Api"].CreateOptionsButton({
	["Name"] = "Chams", 
	["Function"] = function(callback) 
		if callback then
			BindToRenderStep("Chams", 500, function()
				for i,plr in pairs(players:GetChildren()) do
						local thing
						if ChamsFolder:FindFirstChild(plr.Name) then
							thing = ChamsFolder[plr.Name]
							for partnumber, part in pairs(thing:GetChildren()) do
								part.Visible = false
								part.Color3 = getPlayerColor(plr) or Color3.fromHSV(ChamsColor["Value"], 1, 1)
							end
						end
						
						if isAlive(plr) and plr ~= lplr then
							if ChamsFolder:FindFirstChild(plr.Name) == nil then
								local chamfolder = Instance.new("Folder")
								chamfolder.Name = plr.Name
								chamfolder.Parent = ChamsFolder
								thing = chamfolder
								for partnumber, part in pairs(plr.Character:GetChildren()) do
									if chamobjects[part.Name] then
										local boxhandle = Instance.new("BoxHandleAdornment")
										boxhandle.Size = (part.Name == "Head" and Vector3.new(1.25, 1.25, 1.25) or part.Size) + Vector3.new(.01, .01, .01)
										boxhandle.AlwaysOnTop = ChamsOnTop["Enabled"]
										boxhandle.ZIndex = 10
										boxhandle.Visible = true
										boxhandle.Color3 = getPlayerColor(plr) or Color3.fromHSV(ChamsColor["Value"], 1, 1)
										boxhandle.Name = part.Name
										boxhandle.Parent = chamfolder
									end
								end
							end
							for partnumber, part in pairs(thing:GetChildren()) do
								part.Visible = true
								if plr.Character:FindFirstChild(part.Name) then
									part.Adornee = plr.Character[part.Name]
									part.AlwaysOnTop = ChamsOnTop["Enabled"]
									part.Transparency = ChamsTransparency["Value"] / 100
								end
							end
						end
				end
			end)
		else
			UnbindFromRenderStep("Chams")
			ChamsFolder:ClearAllChildren()
		end
	end,
	["HoverText"] = "Render players through walls"
})
ChamsColor = Chams.CreateColorSlider({
	["Name"] = "Player Color", 
	["Function"] = function(val) end
})
ChamsTransparency = Chams.CreateSlider({
	["Name"] = "Transparency", 
	["Min"] = 1,
	["Max"] = 100, 
	["Function"] = function(val) end,
	["Default"] = 50
})
ChamsOnTop = Chams.CreateToggle({
	["Name"] = "Bypass Walls", 
	["Function"] = function() end
})
local lightingsettings = {}
local lightingconnection
local lightingchanged = false
GuiLibrary["ObjectsThatCanBeSaved"]["RenderWindow"]["Api"].CreateOptionsButton({
	["Name"] = "Fullbright",
	["Function"] = function(callback)
		if callback then 
			lightingsettings["Brightness"] = lighting.Brightness
			lightingsettings["ClockTime"] = lighting.ClockTime
			lightingsettings["FogEnd"] = lighting.FogEnd
			lightingsettings["GlobalShadows"] = lighting.GlobalShadows
			lightingsettings["OutdoorAmbient"] = lighting.OutdoorAmbient
			lightingchanged = false
			lighting.Brightness = 2
			lighting.ClockTime = 14
			lighting.FogEnd = 100000
			lighting.GlobalShadows = false
			lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
			lightingchanged = true
			lightingconnection = lighting.Changed:connect(function()
				if not lightingchanged then
					lightingsettings["Brightness"] = lighting.Brightness
					lightingsettings["ClockTime"] = lighting.ClockTime
					lightingsettings["FogEnd"] = lighting.FogEnd
					lightingsettings["GlobalShadows"] = lighting.GlobalShadows
					lightingsettings["OutdoorAmbient"] = lighting.OutdoorAmbient
					lightingchanged = true
					lighting.Brightness = 2
					lighting.ClockTime = 14
					lighting.FogEnd = 100000
					lighting.GlobalShadows = false
					lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
					lightingchanged = false
				end
			end)
		else
			for name,thing in pairs(lightingsettings) do 
				lighting[name] = thing 
				lightingconnection:Disconnect()  
			end
		end
	end
})

local HealthText = Instance.new("TextLabel")
HealthText.Font = Enum.Font.SourceSans
HealthText.TextSize = 20
HealthText.Text = "100❤"
HealthText.Position = UDim2.new(0.5, 0, 0.5, 70)
HealthText.BackgroundTransparency = 1
HealthText.TextColor3 = Color3.fromRGB(255, 0, 0)
HealthText.Size = UDim2.new(0, 0, 0, 0)
HealthText.Visible = false
HealthText.Parent = GuiLibrary["MainGui"]
local Health = GuiLibrary["ObjectsThatCanBeSaved"]["RenderWindow"]["Api"].CreateOptionsButton({
	["Name"] = "Health", 
	["Function"] = function(callback) 
		if callback then
			HealthText.Visible = true
			BindToRenderStep("Health", 1, function()
				if isAlive() then
					HealthText.Text = tostring(math.round(lplr.Character.Humanoid.Health)).."❤"
				end
			end)
		else
			HealthText.Visible = false
			UnbindFromRenderStep("Health")
		end
	end,
	["HoverText"] = "Displays your health in the center of your screen."
})

local NameTagsFolder = Instance.new("Folder")
NameTagsFolder.Name = "NameTagsFolder"
NameTagsFolder.Parent = GuiLibrary["MainGui"]
players.PlayerRemoving:connect(function(plr)
	if NameTagsFolder:FindFirstChild(plr.Name) then
		NameTagsFolder[plr.Name]:Remove()
	end
end)
local NameTagsColor = {["Value"] = 0.44}
local NameTagsDisplayName = {["Enabled"] = false}
local NameTagsHealth = {["Enabled"] = false}
local NameTagsDistance = {["Enabled"] = false}
local NameTags = GuiLibrary["ObjectsThatCanBeSaved"]["RenderWindow"]["Api"].CreateOptionsButton({
	["Name"] = "NameTags", 
	["Function"] = function(callback) 
		if callback then
			BindToRenderStep("NameTags", 500, function()
				for i,plr in pairs(players:GetChildren()) do
					local thing
					if NameTagsFolder:FindFirstChild(plr.Name) then
						thing = NameTagsFolder[plr.Name]
						thing.Visible = false
					else
						thing = Instance.new("TextLabel")
						thing.BackgroundTransparency = 0.5
						thing.BackgroundColor3 = Color3.new(0, 0, 0)
						thing.BorderSizePixel = 0
						thing.Visible = false
						thing.RichText = true
						thing.Name = plr.Name
						thing.Font = Enum.Font.SourceSans
						thing.TextSize = 14
						if plr.Character and plr.Character:FindFirstChild("Humanoid") and plr.Character:FindFirstChild("HumanoidRootPart") then
							local rawText = (NameTagsDisplayName["Enabled"] and plr.DisplayName ~= nil and plr.DisplayName or plr.Name)
							if NameTagsHealth["Enabled"] then
								rawText = (NameTagsDisplayName["Enabled"] and plr.DisplayName ~= nil and plr.DisplayName or plr.Name).." "..math.floor(plr.Character.Humanoid.Health)
							end
							local color = HealthbarColorTransferFunction(plr.Character.Humanoid.Health / plr.Character.Humanoid.MaxHealth)
							local modifiedText = (NameTagsDistance["Enabled"] and isAlive() and '<font color="rgb(85, 255, 85)">[</font>'..math.floor((lplr.Character.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).magnitude)..'<font color="rgb(85, 255, 85)">]</font> ' or '')..(NameTagsDisplayName["Enabled"] and plr.DisplayName ~= nil and plr.DisplayName or plr.Name)..(NameTagsHealth["Enabled"] and ' <font color="rgb('..tostring(math.floor(color.R * 255))..','..tostring(math.floor(color.G * 255))..','..tostring(math.floor(color.B * 255))..')">'..math.floor(plr.Character.Humanoid.Health).."</font>" or '')
							local nametagSize = game:GetService("TextService"):GetTextSize(rawText, thing.TextSize, thing.Font, Vector2.new(100000, 100000))
							thing.Size = UDim2.new(0, nametagSize.X + 4, 0, nametagSize.Y)
							thing.Text = modifiedText
						else
							local nametagSize = game:GetService("TextService"):GetTextSize(plr.Name, thing.TextSize, thing.Font, Vector2.new(100000, 100000))
							thing.Size = UDim2.new(0, nametagSize.X + 4, 0, nametagSize.Y)
							thing.Text = plr.Name
						end
						thing.TextColor3 = getPlayerColor(plr) or Color3.fromHSV(NameTagsColor["Value"], 1, 1)
						thing.Parent = NameTagsFolder
					end
					
					if isAlive(plr) and plr ~= lplr then
						local headPos, headVis = cam:WorldToViewportPoint((plr.Character.HumanoidRootPart:GetRenderCFrame() * CFrame.new(0, plr.Character.Head.Size.Y + plr.Character.HumanoidRootPart.Size.Y, 0)).Position)
						headPos = headPos * (1 / GuiLibrary["MainRescale"].Scale)
						
						if headVis then
							local rawText = (NameTagsDistance["Enabled"] and isAlive() and "["..math.floor((lplr.Character.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).magnitude).."] " or "")..(NameTagsDisplayName["Enabled"] and plr.DisplayName ~= nil and plr.DisplayName or plr.Name)..(NameTagsHealth["Enabled"] and " "..math.floor(plr.Character.Humanoid.Health) or "")
							local color = HealthbarColorTransferFunction(plr.Character.Humanoid.Health / plr.Character.Humanoid.MaxHealth)
							local modifiedText = (NameTagsDistance["Enabled"] and isAlive() and '<font color="rgb(85, 255, 85)">[</font><font color="rgb(255, 255, 255)">'..math.floor((lplr.Character.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).magnitude)..'</font><font color="rgb(85, 255, 85)">]</font> ' or '')..(NameTagsDisplayName["Enabled"] and plr.DisplayName ~= nil and plr.DisplayName or plr.Name)..(NameTagsHealth["Enabled"] and ' <font color="rgb('..tostring(math.floor(color.R * 255))..','..tostring(math.floor(color.G * 255))..','..tostring(math.floor(color.B * 255))..')">'..math.floor(plr.Character.Humanoid.Health).."</font>" or '')
							local nametagSize = game:GetService("TextService"):GetTextSize(rawText, thing.TextSize, thing.Font, Vector2.new(100000, 100000))
							thing.Size = UDim2.new(0, nametagSize.X + 4, 0, nametagSize.Y)
							thing.Text = modifiedText
							thing.TextColor3 = getPlayerColor(plr) or Color3.fromHSV(NameTagsColor["Value"], 1, 1)
							thing.Visible = headVis
							thing.Position = UDim2.new(0, headPos.X - thing.Size.X.Offset / 2, 0, (headPos.Y - thing.Size.Y.Offset) - 36)
						end
					end
				end
			end)
		else
			UnbindFromRenderStep("NameTags")
			NameTagsFolder:ClearAllChildren()
		end
	end
})
NameTagsColor = NameTags.CreateColorSlider({
	["Name"] = "Player Color", 
	["Function"] = function(val) end
})
NameTagsDisplayName = NameTags.CreateToggle({
	["Name"] = "Use Display Name", 
	["Function"] = function() end
})
NameTagsHealth = NameTags.CreateToggle({
	["Name"] = "Health", 
	["Function"] = function() end
})
NameTagsDistance = NameTags.CreateToggle({
	["Name"] = "Distance", 
	["Function"] = function() end
})

runcode(function()
	local NickHider = {["Enabled"] = false}
	local NickHiderBox = {["Value"] = ""}
	local newname
	local newid
	local newdisplayname
	local nickeduser = {}
	local nickconnections = {}
	local nickhiderdescendantsadded
	local OldNameCall = nil

	local function plrthing(obj, property, revert)
		if (NickHider["Enabled"] or revert) and nickeduser ~= {} and nickeduser ~= nil then
			obj[property] = obj[property]:gsub((revert and newname or lplr.Name), (revert and lplr.Name or nickeduser["Username"]))
			obj[property] = obj[property]:gsub((revert and newdisplayname or lplr.DisplayName), (revert and lplr.DisplayName or nickeduser["DisplayName"]))
			obj[property] = obj[property]:gsub((revert and newid or lplr.UserId), (revert and lplr.UserId or nickeduser["Id"]))
		end
	end

	local function newobj(v, revert)
		if v:IsA("TextLabel") or v:IsA("TextButton") then
			plrthing(v, "Text", revert)
			if (not revert) then
				table.insert(nickconnections, v:GetPropertyChangedSignal("Text"):connect(function()
					plrthing(v, "Text", revert)
				end))
			end
		end
		if v:IsA("ImageLabel") then
			plrthing(v, "Image", revert)
			if (not revert) then
				table.insert(nickconnections, v:GetPropertyChangedSignal("Image"):connect(function()
					plrthing(v, "Image", revert)
				end))
			end
		end
	end

	NickHider = GuiLibrary["ObjectsThatCanBeSaved"]["RenderWindow"]["Api"].CreateOptionsButton({
		["Name"] = "NickHider",
		["Function"] = function(callback)
			if callback and nickeduser ~= {} and nickeduser ~= nil then
				if not OldNameCall then
					OldNameCall = hookmetamethod(game, "__namecall", function(...)
						local Args = {...}
						local Self = Args[1]
						local NamecallMethod = getnamecallmethod()
					
						if not checkcaller() and Self == textservice and NamecallMethod == "GetTextSize" and NickHider["Enabled"] and nickeduser ~= {} and nickeduser ~= nil then
							Args[2] = Args[2]:gsub(lplr.Name, nickeduser["Username"])
							Args[2] = Args[2]:gsub(lplr.DisplayName, nickeduser["DisplayName"])
						end
					
						return OldNameCall(unpack(Args))
					end)
				end
				newname = nickeduser["Username"]
				newdisplayname = nickeduser["DisplayName"]
				newid = nickeduser["Id"]
				for i,v in pairs(game:GetDescendants()) do
					newobj(v)
				end
				nickhiderdescendantsadded = game.DescendantAdded:connect(newobj)
			else
				if nickhiderdescendantsadded then
					nickhiderdescendantsadded:Disconnect()
				end
				if nickeduser == {} or nickeduser == nil then
					createwarning("NickHider", "No User or Invalid User Id", 4)
				end
				for i2,v2 in pairs(nickconnections) do
					v2:Disconnect()
				end
				for i,v in pairs(game:GetDescendants()) do
					newobj(v, true)
				end
			end
		end,
		["HoverText"] = "Disguises as the UserId in the text box (Client Side)"
	})
	NickHiderBox = NickHider.CreateTextBox({
		["Name"] = "UserBox",
		["TempText"] = "User (userid)",
		["FocusLost"] = function()
			local success, result = pcall(function()
				return game:GetService("UserService"):GetUserInfosByUserIdsAsync({ tonumber(NickHiderBox["Value"]) })
			end)
			 
			if success and #result > 0 then
				nickeduser = result[1]
				if NickHider["Enabled"] then
					NickHider["ToggleButton"](false)
					NickHider["ToggleButton"](true)
				end
			else
				if NickHider["Enabled"] then
					createwarning("NickHider", "Invalid User Id", 4)
				end
			end
		end
	})
end)

local SearchTextList = {["RefreshValues"] = function() end, ["ObjectList"] = {}}
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
			if (v:IsA("BasePart") or v:IsA("Model")) and table.find(SearchTextList["ObjectList"], v.Name) and searchFindBoxHandle(v) == nil then
				local oldparent = v.Parent
				local boxhandle = Instance.new("BoxHandleAdornment")
				boxhandle.Name = v.Name
				boxhandle.AlwaysOnTop = true
				boxhandle.Color3 = Color3.fromHSV(searchColor["Value"], 1, 1)
				boxhandle.Adornee = v
				boxhandle.ZIndex = 10
				local modelpos, modelsize
				spawn(function()
					repeat
						wait(0.2)
						if v.ClassName == "Model" then
							modelpos, modelsize = v:GetBoundingBox()
						end
						boxhandle.Size = (v.ClassName == "Model" and modelsize or v.Size)
					until boxhandle == nil or v.Parent ~= oldparent
				end)
				boxhandle.Transparency = 0.5
				boxhandle.Parent = searchFolder
			end
		end
	end
end
searchModule = GuiLibrary["ObjectsThatCanBeSaved"]["RenderWindow"]["Api"].CreateOptionsButton({
	["Name"] = "Search", 
	["Function"] = function(callback) 
		if callback then
			searchRefresh()
			searchAdd = workspace.DescendantAdded:connect(function(v)
				if (v:IsA("BasePart") or v:IsA("Model")) and table.find(SearchTextList["ObjectList"], v.Name) and searchFindBoxHandle(v) == nil then
					local oldparent = v.Parent
					local boxhandle = Instance.new("BoxHandleAdornment")
					boxhandle.Name = v.Name
					boxhandle.AlwaysOnTop = true
					boxhandle.Color3 = Color3.fromHSV(searchColor["Value"], 1, 1)
					boxhandle.Adornee = v
					boxhandle.ZIndex = 10
					local modelpos, modelsize
					spawn(function()
						repeat
							wait(0.2)
							if v.ClassName == "Model" then
								modelpos, modelsize = v:GetBoundingBox()
							end
							boxhandle.Size = (v.ClassName == "Model" and modelsize or v.Size)
						until boxhandle == nil or v.Parent ~= oldparent
					end)
					boxhandle.Transparency = 0.5
					boxhandle.Parent = searchFolder
				end
			end)
			searchRemove = workspace.DescendantRemoving:connect(function(v)
				if v:IsA("BasePart") or v:IsA("Model") then
					local boxhandle = searchFindBoxHandle(v)
					if boxhandle then
						boxhandle:Remove()
					end
				end
			end)
		else
			pcall(function()
				searchFolder:ClearAllChildren()
				searchAdd:Disconnect()
				searchRemove:Disconnect()
			end)
		end
	end
})
searchColor = searchModule.CreateColorSlider({
	["Name"] = "new part color", 
	["Function"] = function(val)
		for i,v in pairs(searchFolder:GetChildren()) do
			v.Color3 = Color3.fromHSV(val, 1, 1)
		end
	end
})
SearchTextList = searchModule.CreateTextList({
	["Name"] = "SearchList",
	["TempText"] = "part name", 
	["AddFunction"] = function(user)
		searchRefresh()
	end, 
	["RemoveFunction"] = function(num) 
		searchRefresh()
	end
})

local XrayAdd
local Xray = GuiLibrary["ObjectsThatCanBeSaved"]["WorldWindow"]["Api"].CreateOptionsButton({
	["Name"] = "Xray", 
	["Function"] = function(callback) 
		if callback then
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
		else
			for i, v in pairs(workspace:GetDescendants()) do
				if v:IsA("BasePart") and not v.Parent:FindFirstChild("Humanoid") and not v.Parent.Parent:FindFirstChild("Humanoid") then
					v.LocalTransparencyModifier = 0
				end
			end
			XrayAdd:Disconnect()
		end
	end
})

local TracersFolder = Instance.new("Folder")
TracersFolder.Name = "TracersFolder"
TracersFolder.Parent = GuiLibrary["MainGui"]
players.PlayerRemoving:connect(function(plr)
	if TracersFolder:FindFirstChild(plr.Name) then
		TracersFolder[plr.Name]:Remove()
	end
end)
local TracersColor = {["Value"] = 0.44}
local TracersTransparency = {["Value"] = 1}
local Tracers = GuiLibrary["ObjectsThatCanBeSaved"]["RenderWindow"]["Api"].CreateOptionsButton({
	["Name"] = "Tracers", 
	["Function"] = function(callback) 
		if callback then
			BindToRenderStep("Tracers", 500, function()
				for i,plr in pairs(players:GetChildren()) do
						local thing
						if TracersFolder:FindFirstChild(plr.Name) then
							thing = TracersFolder[plr.Name]
							if thing.Visible then
								thing.Visible = false
							end
						else
							thing = Instance.new("Frame")
							thing.BackgroundTransparency = 0
							thing.AnchorPoint = Vector2.new(0.5, 0.5)
							thing.BackgroundColor3 = Color3.new(0, 0, 0)
							thing.BorderSizePixel = 0
							thing.Visible = false
							thing.Name = plr.Name
							thing.Parent = TracersFolder
						end
						
						if isAlive(plr) and plr ~= lplr then
							local rootScrPos = cam:WorldToViewportPoint(plr.Character.Head.Position)
							local tempPos = cam.CFrame:pointToObjectSpace(plr.Character.Head.Position)
							if rootScrPos.Z < 0 then
								tempPos = CFrame.Angles(0, 0, (math.atan2(tempPos.Y, tempPos.X) + math.pi)):vectorToWorldSpace((CFrame.Angles(0, math.rad(89.9), 0):vectorToWorldSpace(Vector3.new(0, 0, -1))));
							end
							local tracerPos = cam:WorldToViewportPoint(cam.CFrame:pointToWorldSpace(tempPos))
							local screensize = cam.ViewportSize
							local startVector = Vector2.new(screensize.X / 2, screensize.Y / 2)
							local endVector = Vector2.new(tracerPos.X, tracerPos.Y)
							local Distance = (startVector - endVector).Magnitude
							startVector = startVector * (1 / GuiLibrary["MainRescale"].Scale)
							endVector = endVector * (1 / GuiLibrary["MainRescale"].Scale)
							thing.Visible = true
							thing.BackgroundTransparency = TracersTransparency["Value"] / 100
							thing.BackgroundColor3 = tostring(plr.TeamColor) ~= "White" and plr.TeamColor.Color or (GuiLibrary["ObjectsThatCanBeSaved"]["Use colorToggle"]["Api"]["Enabled"] and table.find(GuiLibrary["FriendsObject"]["Friends"], plr.Name) and Color3.fromHSV(GuiLibrary["ObjectsThatCanBeSaved"]["Friends ColorSliderColor"]["Api"]["Value"], 1, 1)) or Color3.fromHSV(TracersColor["Value"], 1, 1)
							thing.Size = UDim2.new(0, Distance, 0, 2)
							thing.Position = UDim2.new(0, (startVector.X + endVector.X) / 2, 0, ((startVector.Y + endVector.Y) / 2) - 36)
							thing.Rotation = math.atan2(endVector.Y - startVector.Y, endVector.X - startVector.X) * (180 / math.pi)
						end
					end
			end)
		else
			UnbindFromRenderStep("Tracers") 
			TracersFolder:ClearAllChildren()
		end
	end
})
TracersColor = Tracers.CreateColorSlider({
	["Name"] = "Player Color", 
	["Function"] = function(val) end
})
TracersTransparency = Tracers.CreateSlider({
	["Name"] = "Transparency", 
	["Min"] = 1,
	["Max"] = 100, 
	["Function"] = function(val) end,
	["Default"] = 0
})

Spring = {} do
	Spring.__index = Spring

	function Spring.new(freq, pos)
		local self = setmetatable({}, Spring)
		self.f = freq
		self.p = pos
		self.v = pos*0
		return self
	end

	function Spring:Update(dt, goal)
		local f = self.f*2*math.pi
		local p0 = self.p
		local v0 = self.v

		local offset = goal - p0
		local decay = math.exp(-f*dt)

		local p1 = goal + (v0*dt - offset*(f*dt + 1))*decay
		local v1 = (f*dt*(offset*f - v0) + v0)*decay

		self.p = p1
		self.v = v1

		return p1
	end

	function Spring:Reset(pos)
		self.p = pos
		self.v = pos*0
	end
end

local cameraPos = Vector3.new()
local cameraRot = Vector2.new()
local velSpring = Spring.new(5, Vector3.new())
local panSpring = Spring.new(5, Vector2.new())

Input = {} do

	keyboard = {
		W = 0,
		A = 0,
		S = 0,
		D = 0,
		E = 0,
		Q = 0,
		Up = 0,
		Down = 0,
		LeftShift = 0,
	}

	mouse = {
		Delta = Vector2.new(),
	}

	NAV_KEYBOARD_SPEED = Vector3.new(1, 1, 1)
	PAN_MOUSE_SPEED = Vector2.new(3, 3)*(math.pi/64)
	NAV_ADJ_SPEED = 0.75
	NAV_SHIFT_MUL = 0.25

	navSpeed = 1

	function Input.Vel(dt)
		navSpeed = math.clamp(navSpeed + dt*(keyboard.Up - keyboard.Down)*NAV_ADJ_SPEED, 0.01, 4)

		local kKeyboard = Vector3.new(
			keyboard.D - keyboard.A,
			keyboard.E - keyboard.Q,
			keyboard.S - keyboard.W
		)*NAV_KEYBOARD_SPEED

		local shift = uis:IsKeyDown(Enum.KeyCode.LeftShift)

		return (kKeyboard)*(navSpeed*(shift and NAV_SHIFT_MUL or 1))
	end

	function Input.Pan(dt)
		local kMouse = mouse.Delta*PAN_MOUSE_SPEED
		mouse.Delta = Vector2.new()
		return kMouse
	end

	do
		function Keypress(action, state, input)
			keyboard[input.KeyCode.Name] = state == Enum.UserInputState.Begin and 1 or 0
			return Enum.ContextActionResult.Sink
		end

		function MousePan(action, state, input)
			local delta = input.Delta
			mouse.Delta = Vector2.new(-delta.y, -delta.x)
			return Enum.ContextActionResult.Sink
		end

		function Zero(t)
			for k, v in pairs(t) do
				t[k] = v*0
			end
		end

		function Input.StartCapture()
			game:GetService("ContextActionService"):BindActionAtPriority("FreecamKeyboard",Keypress,false,Enum.ContextActionPriority.High.Value,
			Enum.KeyCode.W,
			Enum.KeyCode.A,
			Enum.KeyCode.S,
			Enum.KeyCode.D,
			Enum.KeyCode.E,
			Enum.KeyCode.Q,
			Enum.KeyCode.Up,
			Enum.KeyCode.Down
			)
			game:GetService("ContextActionService"):BindActionAtPriority("FreecamMousePan",MousePan,false,Enum.ContextActionPriority.High.Value,Enum.UserInputType.MouseMovement)
		end

		function Input.StopCapture()
			navSpeed = 1
			Zero(keyboard)
			Zero(mouse)
			game:GetService("ContextActionService"):UnbindAction("FreecamKeyboard")
			game:GetService("ContextActionService"):UnbindAction("FreecamMousePan")
		end
	end
end

local function GetFocusDistance(cameraFrame)
	local znear = 0.1
	local viewport = cam.ViewportSize
	local projy = 2*math.tan(cameraFov/2)
	local projx = viewport.x/viewport.y*projy
	local fx = cameraFrame.rightVector
	local fy = cameraFrame.upVector
	local fz = cameraFrame.lookVector

	local minVect = Vector3.new()
	local minDist = 512

	for x = 0, 1, 0.5 do
		for y = 0, 1, 0.5 do
			local cx = (x - 0.5)*projx
			local cy = (y - 0.5)*projy
			local offset = fx*cx - fy*cy + fz
			local origin = cameraFrame.p + offset*znear
			local _, hit = workspace:FindPartOnRay(Ray.new(origin, offset.unit*minDist))
			local dist = (hit - origin).magnitude
			if minDist > dist then
				minDist = dist
				minVect = offset.unit
			end
		end
	end

	return fz:Dot(minVect)*minDist
end

local PlayerState = {} do
	mouseBehavior = ""
	mouseIconEnabled = ""
	cameraType = ""
	cameraFocus = ""
	cameraCFrame = ""
	cameraFieldOfView = ""

	function PlayerState.Push()
		cameraFieldOfView = cam.FieldOfView
		cam.FieldOfView = 70

		cameraType = cam.CameraType
		print(cam.CameraType)
		cam.CameraType = Enum.CameraType.Custom

		cameraCFrame = cam.CFrame
		cameraFocus = cam.Focus

		mouseIconEnabled = uis.MouseIconEnabled
		uis.MouseIconEnabled = true

		mouseBehavior = uis.MouseBehavior
		uis.MouseBehavior = Enum.MouseBehavior.Default
	end

	function PlayerState.Pop()
		cam.FieldOfView = cameraFieldOfView
        cameraFieldOfView = nil

		cam.CameraType = cameraType
		cameraType = nil

		cam.CFrame = cameraCFrame
		cameraCFrame = nil

		cam.Focus = cameraFocus
		cameraFocus = nil

		uis.MouseIconEnabled = mouseIconEnabled
		mouseIconEnabled = nil

		uis.MouseBehavior = mouseBehavior
		mouseBehavior = nil
	end
end

local Freecam = GuiLibrary["ObjectsThatCanBeSaved"]["WorldWindow"]["Api"].CreateOptionsButton({
	["Name"] = "Freecam", 
	["Function"] = function(callback)
		if callback then
			local cameraCFrame = cam.CFrame
			if pos then
				cameraCFrame = pos
			end
			cameraRot = Vector2.new()
			cameraPos = cameraCFrame.p
			cameraFov = cam.FieldOfView

			velSpring:Reset(Vector3.new())
			panSpring:Reset(Vector2.new())

			PlayerState.Push()
			BindToRenderStep("Freecam", Enum.RenderPriority.Camera.Value, function(dt)
				local vel = velSpring:Update(dt, Input.Vel(dt))
				local pan = panSpring:Update(dt, Input.Pan(dt))

				local zoomFactor = math.sqrt(math.tan(math.rad(70/2))/math.tan(math.rad(cameraFov/2)))

				cameraRot = cameraRot + pan*Vector2.new(0.75, 1)*8*(dt/zoomFactor)
				cameraRot = Vector2.new(math.clamp(cameraRot.x, -math.rad(90), math.rad(90)), cameraRot.y%(2*math.pi))

				local cameraCFrame = CFrame.new(cameraPos)*CFrame.fromOrientation(cameraRot.x, cameraRot.y, 0)*CFrame.new(vel*Vector3.new(1, 1, 1)*64*dt)
				cameraPos = cameraCFrame.p

				cam.CFrame = cameraCFrame
				cam.Focus = cameraCFrame*CFrame.new(0, 0, -GetFocusDistance(cameraCFrame))
				cam.FieldOfView = cameraFov
			end)
			Input.StartCapture()
		else
			Input.StopCapture()
			UnbindFromRenderStep("Freecam")
			PlayerState.Pop()
		end
	end
})
freecamspeed = Freecam.CreateSlider({
	["Name"] = "Speed",
	["Min"] = 1,
	["Max"] = 150,
	["Function"] = function(val) NAV_KEYBOARD_SPEED = Vector3.new(val / 75,  val / 75, val / 75) end,
	["Default"] = 75
})

local Panic = GuiLibrary["ObjectsThatCanBeSaved"]["UtilityWindow"]["Api"].CreateOptionsButton({
	["Name"] = "Panic", 
	["Function"] = function(callback)
		if callback then
			for i,v in pairs(GuiLibrary["ObjectsThatCanBeSaved"]) do
				if v["Type"] == "Button" or v["Type"] == "OptionsButton" then
					if v["Api"]["Enabled"] then
						v["Api"]["ToggleButton"]()
					end
				end
			end
		end
	end
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
warn('Loaded')
