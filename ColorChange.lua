-- Beginner Script to make a part change colors

local variable = script.Parent

local function changeGreen()
	variable.BrickColor = BrickColor.new("Sea green")
end

local function changeYellow()
	variable.BrickColor = BrickColor.new("New Yeller")	
end

wait(2)
changeGreen()
wait(2)
changeYellow()
wait(2)
changeGreen()
wait(2)
changeYellow()
wait(2)
