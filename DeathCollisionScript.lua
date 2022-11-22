local laser = script.Parent
local collisionPart = laser:FindFirstChild("CollisionPart")

collisionPart.Anchored = true -- So it doesn't fall to the ground
collisionPart.Transparency = 1 -- Make the part invisible

local function onTouch(otherPart)
	local character = otherPart.Parent -- 
	local human = character:FindFirstChildWhichIsA("Humanoid")	
	
	if human  then
		human.Health = 0
	end
end

collisionPart.Touched:Connect(onTouch)
