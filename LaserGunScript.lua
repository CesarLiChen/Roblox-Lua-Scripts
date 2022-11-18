local Debris = game:GetService("Debris")

local laserGun = script.Parent
local tip = laserGun.Tip

-- Beacuse it is a LocalScript, we can get the Player
local Player = game.Players.LocalPlayer
local character = Player.Character

local GUN_DAMAGE = 30

local function onEquipped(mouse)
	
	mouse.Button1Down:Connect(function()
		local laser = Ray.new(tip.CFrame.Position, (mouse.Hit.p - tip.CFrame.Position).Unit * 300)		
		local hitPart, hitPos = game.Workspace:FindPartOnRay(laser, character, false, true) 
		
		local laserBeam = Instance.new("Part", game.Workspace)
		laserBeam.BrickColor = BrickColor.new("Neon green")
		laserBeam.Shape = Enum.PartType.Block
		laserBeam.Anchored = true
		laserBeam.CanCollide = false
		
		local laserDistance = (tip.CFrame.Position - hitPos).Magnitude
		laserBeam.Size = Vector3.new(1, 1, laserDistance)
		laserBeam.CFrame = CFrame.new(tip.CFrame.Position, hitPos) * CFrame.new(0, 0, -laserDistance)
		Debris:AddItem(laserBeam, 1)
		
		if hitPart  then
			local hitHuman = hitPart.Parent:FindFirstChild("Humanoid")
			
			if not hitHuman then
				hitHuman = hitPart.Parent.Parent:FindFirstChild("Humanoid")
			end
			
			if hitHuman then
				hitHuman.TakeDamage(GUN_DAMAGE)
			end
		end
	end)
end

laserGun.Equipped:Connect(onEquipped)