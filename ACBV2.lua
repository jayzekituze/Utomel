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

    -- wait(10)
    -- script_key="VTZtsKYsdvzRgGzlwFDEirsvVDKICRNX";
    -- loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/180154ec7abc246752b60603a7adc12d.lua"))()


--     wait(10)
--     print("acb on top")
--     while true do
--         wait(3600)
--         game.Players.LocalPlayer:Kick()
--     end
end)
