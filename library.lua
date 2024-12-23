-- GlassmorphismUI.lua

local GlassmorphismUI = {}

-- Function to create a Glassmorphism Frame
function GlassmorphismUI.CreateGlassFrame(parent, size, position)
    local frame = Instance.new("Frame")
    frame.Parent = parent
    frame.Size = size
    frame.Position = position
    frame.BackgroundTransparency = 0.4
    frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    frame.BorderSizePixel = 0
    frame.ClipsDescendants = true

    -- Adding blur effect for glassmorphism
    local blurEffect = Instance.new("BlurEffect")
    blurEffect.Parent = frame
    blurEffect.Size = 20

    return frame
end

-- Function to create a Glassmorphism Button
function GlassmorphismUI.CreateGlassButton(parent, size, position, text, callback)
    local button = Instance.new("TextButton")
    button.Parent = parent
    button.Size = size
    button.Position = position
    button.Text = text
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Font = Enum.Font.GothamBold
    button.TextSize = 20
    button.BackgroundTransparency = 0.5
    button.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
    button.BorderSizePixel = 0
    button.AutoButtonColor = false

    -- Add a hover effect
    button.MouseEnter:Connect(function()
        button.BackgroundTransparency = 0.3
    end)
    button.MouseLeave:Connect(function()
        button.BackgroundTransparency = 0.5
    end)

    -- Call the callback when clicked
    button.MouseButton1Click:Connect(callback)

    return button
end

-- Function to create a Glassmorphism Label
function GlassmorphismUI.CreateGlassLabel(parent, size, position, text)
    local label = Instance.new("TextLabel")
    label.Parent = parent
    label.Size = size
    label.Position = position
    label.Text = text
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.Font = Enum.Font.Gotham
    label.TextSize = 18
    label.BackgroundTransparency = 0.6
    label.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    label.BorderSizePixel = 0
    return label
end

return GlassmorphismUI
