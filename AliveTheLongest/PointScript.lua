local Players = game:GetService("Players")

local function onCharacterAdd(character, player)
	local human = character:WaitForChild("Humanoid")
	
	player:SetAttribute("IsAlive", true)
	
	human.Died:Connect( function()
		local points = player.leaderstats.Points
		points.Value = 0
		player:SetAttribute("IsAlive", false)
	end)
end

local function onPlayerAdd(player)
	local leaderstats = Instance.new("Folder")
	leaderstats.Name = "leaderstats"
	leaderstats.Parent = player
	
	local points = Instance.new("IntValue")
	points.Name = "Points"
	points.Value = 0
	points.Parent = leaderstats
	
	player:SetAttribute("IsAlive", false)
	
	player.CharacterAdded:Connect( function(character) 
			onCharacterAdd(character, player)
	end)
end

Players.PlayerAdded:Connect(onPlayerAdd)

while true do
	wait(1)
	
	local playersList = Players:GetPlayers()
	for currentPlayer = 1, #playersList do
		
		local player = playersList[currentPlayer]
		
		if player:GetAttribute("IsAlive") then
			local points = player.leaderstats.Points
			points.Value = points.Value + 1
		end		
	end
end
