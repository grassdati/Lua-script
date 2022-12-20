local Teams = game:GetService("Teams") : GetChildren()

game.Players.PlayerAdded:Connect(function(player)
	
	for i, player in pairs(game.Players:GetPlayers()) do
		if player then
			if player.Team == nil then
				local randomTeam = Teams[math.random(1, #Teams)]
				
				player.Team = randomTeam
				
				print(player.Name.. " was selected for "..randomTeam.Name)
				
			end
		end
	end
end)
