--hello moron this was not made by me so fuck off
if game.Workspace:FindFirstChild("ExploitChat") == nil then
	local flder = Instance.new('Folder',game.Workspace)
	flder.Name = "ExploitChat"
	local val = Instance.new('StringValue',flder)
	val.Name = "ChatInput"
end

local flderChat = game.Workspace.ExploitChat
local gui = Instance.new('ScreenGui',game.Players.LocalPlayer.PlayerGui)
gui.ResetOnSpawn = false
gui.Enabled = false
local outerfrm = Instance.new('Frame',gui)
outerfrm.Transparency = 1
outerfrm.Size = UDim2.new(0.35,0,0.5,0)
outerfrm.Position = UDim2.new(0.4,0,0.25,0)

local gui2 = Instance.new('ScreenGui',game.Players.LocalPlayer.PlayerGui)
gui2.ResetOnSpawn = false

local Cs = Instance.new('TextButton',gui2)
Cs.BorderSizePixel = 5
Cs.BackgroundTransparency = 0.30
Cs.BackgroundColor3 = Color3.new(0,0,0)
Cs.BorderColor3 = Color3.new(1,1,1)
Cs.Size = UDim2.new(0,50,0,50)
Cs.Position = UDim2.new(0,0,0.8,0)
Cs.TextColor3 = Color3.new(1,1,1)
Cs.TextWrapped = true
Cs.TextSize = 10
Cs.Font = "Highway"
Cs.Text = "Toggle Chat"

local imglbl = Instance.new('ImageLabel',gui2)
imglbl.Size = UDim2.new(0,20,0,20)
imglbl.Position = UDim2.new(0,40,0.8,-10)
imglbl.Image = "http://www.roblox.com/asset/?id=172617011"
imglbl.BackgroundTransparency = 1
imglbl.ImageTransparency = 1

function chatclick()
	if gui.Enabled then
		gui.Enabled = false
		imglbl.ImageTransparency = 1
	else
		gui.Enabled = true
		imglbl.ImageTransparency = 1
	end
end

Cs.MouseButton1Click:connect(chatclick)

local Header = Instance.new('TextLabel',outerfrm)
Header.BorderSizePixel = 5
Header.BackgroundTransparency = 0.30
Header.BackgroundColor3 = Color3.fromRGB(64,64,64)
Header.BorderColor3 = Color3.new(1,1,1)
Header.Text = "Script-Ware"
Header.Font = "Highway"
Header.TextColor3 = Color3.new(1,1,1)
Header.TextScaled = true
Header.Size = UDim2.new(.8,0,0.2,0)

local ChatSpace = Instance.new('ScrollingFrame',outerfrm)
ChatSpace.BorderSizePixel = 5
ChatSpace.BackgroundTransparency = 0.30
ChatSpace.BackgroundColor3 = Color3.fromRGB(64,64,64)
ChatSpace.BorderColor3 = Color3.new(1,1,1)
ChatSpace.Size = UDim2.new(.8,0,0.7,0)
ChatSpace.Position = UDim2.new(0,0,0.2,5)
ChatSpace.CanvasPosition = Vector2.new(0,999)


local ChatSay = Instance.new('TextBox',outerfrm)
ChatSay.BorderSizePixel = 5
ChatSay.BackgroundTransparency = 0.30
ChatSay.BackgroundColor3 = Color3.fromRGB(64,64,64)
ChatSay.BorderColor3 = Color3.new(1,1,1)
ChatSay.Size = UDim2.new(0.6,0,0.1,0)
ChatSay.Position = UDim2.new(0,0,0.9,10)
ChatSay.TextColor3 = Color3.new(1,1,1)
ChatSay.Text = "Insert message."
ChatSay.Font = "Highway"
ChatSay.TextScaled = true


local ChatSend = Instance.new('TextButton',outerfrm)
ChatSend.BorderSizePixel = 5
ChatSend.BackgroundTransparency = 0.30
ChatSend.BackgroundColor3 = Color3.fromRGB(64,64,64)
ChatSend.BorderColor3 = Color3.new(1,1,1)
ChatSend.Size = UDim2.new(0.2,-5,0.1,0)
ChatSend.Position = UDim2.new(0.6,5,0.9,10)
ChatSend.TextColor3 = Color3.new(1,1,1)
ChatSend.Text = "Send"
ChatSend.Font = "Highway"
ChatSend.TextScaled = true

function send()
	flderChat.ChatInput.Value = ("[" .. game.Players.LocalPlayer.Name .. "]: " .. ChatSay.Text )
end

ChatSend.MouseButton1Click:connect(send) --oof

function change()
	local c = ChatSpace:GetChildren()
	for i = 1,#c,1 do
		if c[i].ClassName == "TextLabel" then
			c[i].Position = UDim2.new(0,0,1,c[i].Position.Y.Offset - 20)
		end
	end

local Chat = Instance.new('TextLabel',ChatSpace)
Chat.BorderSizePixel = 5
Chat.BackgroundTransparency = 1
Chat.BackgroundColor3 = Color3.fromRGB(64,64,64)
Chat.BorderColor3 = Color3.new(1,1,1)
Chat.Size = UDim2.new(.8,0,0,20)
Chat.Position = UDim2.new(0,2,1,-20)
Chat.TextColor3 = Color3.new(1,1,1)
Chat.Text = flderChat.ChatInput.Value
Chat.Font = "Highway"
Chat.TextSize = 11
Chat.TextXAlignment = "Left"
Chat.TextWrapped = true
if gui.Enabled == false then
imglbl.ImageTransparency = 0
end
end

flderChat.ChatInput.Changed:connect(change)
flderChat.ChatInput.Value = (game.Players.LocalPlayer.Name .. " has just joined the Script-Ware chat! / Credits go to the respective owners, thanks to S_ntinel")
