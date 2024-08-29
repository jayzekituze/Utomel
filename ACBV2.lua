local osclock = os.clock()
repeat task.wait(1) until game:IsLoaded()
print("ACB2")

wait(5)
--loadstring(game:HttpGet("https://raw.githubusercontent.com/jayzekituze/Utomel/main/ACBV2.lua"))()

task.spawn(function()
    print("acb on top")
	--you can change the false to true
	
	getgenv().autoRoll = true
	getgenv().collectPotion = true
	getgenv().obby = false
	getgenv().inf = true
	getgenv().fpsboost = true
	getgenv().reconnect = true
	getgenv().raid = true
	getgenv().blackScreen = false
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Tatsumaki49/main/123/AnimeCard"))()
end)
