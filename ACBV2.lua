local osclock = os.clock()
repeat task.wait(1) until game:IsLoaded()
print("ACB2")

wait(10)
--loadstring(game:HttpGet("https://raw.githubusercontent.com/jayzekituze/Utomel/main/ACBV2.lua"))()



task.spawn(function()
	wait(5)
    print("acb on top")
	script_key="KxYdJFffvFuqMSfsbBDBhKFSAfeCgRKM";
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/180154ec7abc246752b60603a7adc12d.lua"))()
end)


task.spawn(function()
	wait(15)
    print("acb on top")
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Tatsumaki49/main/123/acbw"))()
end)
