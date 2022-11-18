-- Disappearing and appearing door.
--Doesn't have to be a door, can be anythin.

local door = script.Parent

local function disappear()
	door.Transparency = 1
	door.CanCollide = false
end

local function appear()
	door.Transparency = 0
	door.CanCollide = true
end

while true do
	wait(2)
	appear()
	wait(2)
	disappear()
end
