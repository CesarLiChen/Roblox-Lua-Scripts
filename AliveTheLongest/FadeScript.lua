local trap = script.Parent
local isTouched = false

local function fade()    
	if not isTouched then        
		isTouched = true 
		
		for count = 1, 10 do
			trap.Transparency = count / 10
			wait(0.1)
		end 
		
		trap.CanCollide = false
		wait(3)        
		trap.Transparency = 0
		trap.CanCollide = true        
		isTouched = false
	end    
end

trap.Touched:Connect(fade)
