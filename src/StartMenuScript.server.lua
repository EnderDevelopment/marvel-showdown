-- Start Menu Script

local Players = game:GetService("Players")

local function createStartMenu(player)
    -- Create a screen GUI for the start menu
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "StartMenu"
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
    titleLabel.Text = "Marvel Game"
    titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    titleLabel.BackgroundTransparency = 1
    titleLabel.Parent = frame

    -- Create a start button
    local startButton = Instance.new("TextButton")
    startButton.Size = UDim2.new(0.5, 0, 0.2, 0)
    startButton.Position = UDim2.new(0.25, 0, 0.3, 0)
    startButton.Text = "Start Game"
    startButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    startButton.BackgroundColor3 = Color3.fromRGB(0, 100, 0)
    startButton.Parent = frame

    -- Create a settings button
    local settingsButton = Instance.new("TextButton")
    settingsButton.Size = UDim2.new(0.5, 0, 0.2, 0)
    settingsButton.Position = UDim2.new(0.25, 0, 0.6, 0)
    settingsButton.Text = "Settings"
    settingsButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    settingsButton.BackgroundColor3 = Color3.fromRGB(0, 0, 100)
    settingsButton.Parent = frame

    -- Function to handle start button click
    startButton.MouseButton1Click:Connect(function()
        screenGui:Destroy()
        -- Add logic to start the game
    end)

    -- Function to handle settings button click
    settingsButton.MouseButton1Click:Connect(function()
        -- Add logic to open settings menu
    end)
end

-- Connect to player added event
Players.PlayerAdded:Connect(createStartMenu)