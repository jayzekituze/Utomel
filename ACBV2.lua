local osclock = os.clock()
repeat task.wait(1) until game:IsLoaded()
print("ACB2")

wait(10)
--loadstring(game:HttpGet("https://raw.githubusercontent.com/jayzekituze/Utomel/main/ACBV2.lua"))()


task.spawn(function()
	wait(10)
    print("acb on top")
    getgenv().cancelgetexpeditiongui = true
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Tatsumaki49/main/123/acbw"))()


end)

