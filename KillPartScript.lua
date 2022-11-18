local killPart = script.Parent

-- Kill function requires a parameter 'otherPart'
-- This parameter will be given to us by
--the .Touched event in the last line.
local function kill(otherPart)
	local partParent = otherPart.Parent
	local human = partParent:FindFirstChild("Humanoid")
	
	if human then
		human.Health = 0
	end
end

-- This line sends information about whatever
--entity (part, character, etc.) touched our 
--kill part.
killPart.Touched:Connect(kill)