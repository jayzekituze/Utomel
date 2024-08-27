local osclock = os.clock()
repeat task.wait(1) until game:IsLoaded()
print("ACB2")

wait(13)
--loadstring(game:HttpGet("https://raw.githubusercontent.com/jayzekituze/Utomel/main/ACBV2.lua"))()

task.spawn(function()
    wait(5)
    print("acb on top")
    --[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
    ]]
    getgenv().autoRoll = true
    getgenv().collectPotion = true
    getgenv().obby = false
    getgenv().inf = true
    getgenv().fpsboost = true
    getgenv().reconnect = true
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Tatsumaki49/main/123/AnimeCard"))()
end)
