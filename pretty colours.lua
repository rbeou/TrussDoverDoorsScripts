local workspace = game:GetService("Workspace")

local function changeColor(part, newColor)
    if part:IsA("BasePart") then
        part.Color = newColor
    end
end

local function changeColorsInWorkspace()
    local colors = {
        Color3.fromRGB(255, 0, 0), -- Red
        Color3.fromRGB(0, 255, 0), -- Green
        Color3.fromRGB(0, 0, 255), -- Blue
        Color3.fromRGB(255, 255, 0), -- Yellow
        Color3.fromRGB(255, 165, 0), -- Orange
        Color3.fromRGB(128, 0, 128) -- Purple
    }
    local colorIndex = 1

    while true do
        for _, part in ipairs(workspace:GetDescendants()) do
            changeColor(part, colors[colorIndex])
        end

        colorIndex = colorIndex + 1
        if colorIndex > #colors then
            colorIndex = 1
        end

        task.wait(0.5) 
    end
end

changeColorsInWorkspace()
