local button = script.Parent

local function onButtonClick ()
	print("Hi!!! You just pressed the button!!!")
end

button.Activated:Connect(onButtonClick)
