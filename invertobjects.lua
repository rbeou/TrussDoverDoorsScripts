local function invertColor(object)
    if object:IsA("BasePart") and object:FindFirstChild("Color") then
        local currentColor = object.Color
        local invertedColor = Color3.new(1 - currentColor.r, 1 - currentColor.g, 1 - currentColor.b)
        object.Color = invertedColor
    end
    
    for _, child in ipairs(object:GetChildren()) do
        invertColor(child)
    end
end

invertColor(game.Workspace)
