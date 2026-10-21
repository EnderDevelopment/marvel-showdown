-- Character Abilities Script

local Players = game:GetService("Players")

local function createCharacterAbilities(player)
    -- Create a folder for character abilities
    local abilitiesFolder = Instance.new("Folder")
    abilitiesFolder.Name = "Abilities"
    abilitiesFolder.Parent = player:WaitForChild("PlayerGui")

    -- Function to create an ability button
    local function createAbilityButton(name, position, color, abilityFunction)
        local button = Instance.new("TextButton")
        button.Name = name
        button.Size = UDim2.new(0.2, 0, 0.1, 0)
        button.Position = position
        button.Text = name
        button.TextColor3 = Color3.fromRGB(255, 255, 255)
        button.BackgroundColor3 = color
        button.Parent = abilitiesFolder

        -- Function to handle button click
        button.MouseButton1Click:Connect(abilityFunction)
    end

    -- Example abilities for different characters
    createAbilityButton("Iron Man", UDim2.new(0.1, 0, 0.1, 0), Color3.fromRGB(255, 0, 0), function()
        -- Iron Man ability logic
    end)

    createAbilityButton("Spider-Man", UDim2.new(0.1, 0, 0.3, 0), Color3.fromRGB(0, 255, 0), function()
        -- Spider-Man ability logic
    end)

    createAbilityButton("Captain America", UDim2.new(0.1, 0, 0.5, 0), Color3.fromRGB(0, 0, 255), function()
        -- Captain America ability logic
    end)

    -- Add more characters and abilities as needed
end

-- Connect to player added event
Players.PlayerAdded:Connect(createCharacterAbilities)