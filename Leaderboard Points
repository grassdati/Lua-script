local DataStoreService = game:GetService("DataStoreService")

local myDataStore = DataStoreService:GetDataStore("myDataStore")

game.Players.PlayerAdded:Connect(function(player)

	local leaderstats = Instance.new("Folder")
	leaderstats.Name = "leaderstats"
	leaderstats.Parent = player

	local points = Instance.new("IntValue")
	points.Name = "Points"
	points.Parent = leaderstats
	
	local data
	local success, errormessage = pcall(function()
		data = myDataStore:GetAsync(player.UserId.."-points")
	end)
	
	if success then
		points.Value = data
	end
	local success, errormessage = pcall(function()
		myDataStore:GetAsync(player.UserId.."-points")
	end)
end)

game.Players.PlayerRemoving:Connect(function(player)
	local success, errormessage = pcall(function()
		
		myDataStore:SetAsync(player.UserId.."-points", player.leaderstats.Points.Value)

	end)
	
	if success then
		print("Player Data successfully saved!")
	else
		print("There was an error when saving data")
		warn(errormessage)
	end
	
	
end)
