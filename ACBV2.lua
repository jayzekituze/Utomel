local osclock = os.clock()
repeat task.wait(1) until game:IsLoaded()
print("ACB2")

task.spawn(function()
    getgenv().cancelgetexpeditiongui = true
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Tatsumaki49/main/123/acbw"))()
end)
