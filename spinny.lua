local workspace = game:GetService("Workspace")

local function rotateWorkspace()
    local initialCFrame = workspace:GetPivot()
    for i = 1, 360 do
        local newCFrame = initialCFrame * CFrame.Angles(0, math.rad(1), 0)
        workspace:PivotTo(newCFrame)
        task.wait(0.01) 
        initialCFrame = newCFrame 
    end
end

rotateWorkspace()

print("spinny spin spin"
task.wait(1)
print("this was made by Truss Dover")
