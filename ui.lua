-- Get the player's username
local player = game.Players.LocalPlayer
local username = player.Name

game:GetService("StarterGui"):SetCore("SendNotification",{
Title = "Blatant.cc",
Text = "Thank you for executing Blatant.cc ".. username;
Icon = "rbxassetid://114125211876798",
Duration = 10,
})

local TweenService = game:GetService("TweenService")
	local UserInputService = game:GetService("UserInputService")
	local UIBUTTON = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local ImageButton = Instance.new("ImageButton")
	local UICorner = Instance.new("UICorner")
	local UICorner_2 = Instance.new("UICorner")

	UIBUTTON.Name = "UIBUTTON"
	UIBUTTON.Parent = game.CoreGui
	UIBUTTON.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Frame.Parent = UIBUTTON
	Frame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.Transparency = 1
	Frame.Position = UDim2.new(0.157012194, 0, 0.164366379, 0)
	Frame.Size = UDim2.new(0, 115, 0, 49)

ImageButton.Parent = Frame
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Active = true
ImageButton.Draggable = true
ImageButton.Position = UDim2.new(0.218742043, 0, -0.155235752, 0)
ImageButton.Size = UDim2.new(0, 64, 0, 64)

-- Set initial image to "open"
ImageButton.Image = "rbxassetid://114125211876798" -- Open image asset ID
local isOpen = true -- Variable to track the state

ImageButton.MouseButton1Click:Connect(function()
    -- Animate the button size
    ImageButton:TweenSize(UDim2.new(0, 60, 0, 60), Enum.EasingDirection.In, Enum.EasingStyle.Elastic, 0.1)
    delay(0.1, function()
        ImageButton:TweenSize(UDim2.new(0, 64, 0, 64), Enum.EasingDirection.Out, Enum.EasingStyle.Elastic, 0.1)
    end)

    -- Toggle the image based on the state
    if isOpen then
        ImageButton.Image = "rbxassetid://114125211876798" -- Replace with close image asset ID
    else
        ImageButton.Image = "rbxassetid://114125211876798" -- Open image asset ID
    end
    isOpen = not isOpen -- Toggle the state

    -- Simulate key presses
    local VirtualInputManager = game:GetService("VirtualInputManager")
   VirtualInputManager:SendKeyEvent(true,"P",false,game)
end)
