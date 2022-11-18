local killPart = script.Parent

local function kill(otherPart)
	local partParent = otherPart.Parent
	local human = partParent:FindFirstChild("Humanoid")
	
	if human then
		human.Health = 0
	end
end

killPart.Touched:Connect(kill)