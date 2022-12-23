local marketplace = game:GetService("MarketplaceService")

local devProducts = {

	Point1 = {

		name = "125P", 
		id = 0000000000,
		price = 25,
		
		func = function(plr)
			plr.leaderstats.Points.Value += 2147483647000 
			
		end,
	},
	
	Point2 = {

		name = "300P", 
		id = 0000000000,
		price = 60,

		func = function(plr)
			plr.leaderstats.Points.Value += 300

		end,
	},

	Point3 = {

		name = "700P", 
		id = 0000000000,
		price = 100,

		func = function(plr)
			plr.leaderstats.Points.Value += 700

		end,
	},

	Point4 = {

		name = "1600P", 
		id = 0000000000,
		price = 200,

		func = function(plr)
			plr.leaderstats.Points.Value += 1600

		end,
	},

	Point5 = {

		name = "3500P", 
		id = 0000000000,
		price = 450,

		func = function(plr)
			plr.leaderstats.Points.Value += 3500

		end,
	},

	Point6 = {

		name = "10000P", 
		id = 0000000000,
		price = 1000,

		func = function(plr)
			plr.leaderstats.Points.Value += 10000

		end,
	}
}

function marketplace.ProcessReceipt(reciept)
	
	local devProductId = reciept.ProductId
	local plr = game.Players:GetPlayerByUserId(reciept.PlayerId)
	
	for i, product in pairs(devProducts) do
		if product.id == devProductId then
			
			local suc, err = pcall(function()
				product.func(plr)
				
				
			end)
			
		end
	end
	
	return Enum.ProductPurchaseDecision.PurchaseGranted 
	
end

