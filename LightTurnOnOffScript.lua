local proximityPrompt = script.Parent

local light = proximityPrompt.Parent.PointLight

local function onOffLights ()
	if light.Enabled == true then
		light.Enabled = false
	else -- light.Enabled = false
		light.Enabled = true
	end
end

proximityPrompt.Triggered:Connect(onOffLights)