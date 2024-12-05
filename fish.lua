local osclock = os.clock()
repeat task.wait(1) until game:IsLoaded()
print("fish")

wait(10)
--loadstring(game:HttpGet("https://raw.githubusercontent.com/jayzekituze/Utomel/main/fish.lua"))()


task.spawn(function()
	wait(10)
    print("fish on top")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/JustLevel/goombahub/main/fisch.lua"))()

    wait(10)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
end)
