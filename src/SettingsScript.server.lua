-- Settings Script

local Players = game:GetService("Players")

local function createSettingsMenu(player)
    -- Create a screen GUI for the settings menu
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "SettingsMenu"
    screenGui.Parent = player:WaitForChild("PlayerGui")

    -- Create a frame for the menu
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0.5, 0, 0.5, 0)
    frame.Position = UDim2.new(0.25, 0, 0.25, 0)
    frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    frame.Parent = screenGui

    -- Create a title label
    local titleLabel = Instance.new("TextLabel")
    titleLabel.Size = UDim2.new(1, 0, 0.2, 0)
    titleLabel.Position = UDim2.new(0, 0, 0, 0)
    titleLabel.Text = "Settings"
    titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    titleLabel.BackgroundTransparency = 1
    titleLabel.Parent = frame

    -- Create a back button
    local backButton = Instance.new("TextButton")
    backButton.Size = UDim2.new(0.5, 0, 0.2, 0)
    backButton.Position = UDim2.new(0.25, 0, 0.8, 0)
    backButton.Text = "Back"
    backButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    backButton.BackgroundColor3 = Color3.fromRGB(100, 0, 0)
    backButton.Parent = frame

    -- Function to handle back button click
    backButton.MouseButton1Click:Connect(function()
        screenGui:Destroy()
        -- Add logic to return to the start menu
    end)

    -- Add more settings options as needed
end

-- Connect to player added event
Players.PlayerAdded:Connect(createSettingsMenu)