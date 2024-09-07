local osclock = os.clock()
repeat task.wait(1) until game:IsLoaded()
print("ACB2")

wait(15)
--loadstring(game:HttpGet("https://raw.githubusercontent.com/jayzekituze/Utomel/main/ACBV2.lua"))()

task.spawn(function()
    print("acb on top")
	script_key="wMMFpzXrIqVVzcsvNMfVXptlZsixXXfT";
	loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/180154ec7abc246752b60603a7adc12d.lua"))()
end)

task.spawn(function()
    wait(10)
    print("acb on top")
	--you can change the false to true

    getgenv().collectPotion = false
    getgenv().obby = false
    getgenv().inf = false
    getgenv().fpsboost = true
    getgenv().reconnect = true
    getgenv().raid = false
    getgenv().blackScreen = false
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Tatsumaki49/main/123/AnimeCard"))()
end)
