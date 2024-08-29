local osclock = os.clock()
repeat task.wait(1) until game:IsLoaded()
print("ACB2")

wait(5)
--loadstring(game:HttpGet("https://raw.githubusercontent.com/jayzekituze/Utomel/main/ACBV2.lua"))()

task.spawn(function()
    print("acb on top")
	--Anime Card Battles 
	
	task.spawn(function()
	        while getgenv().gaunt do 
	                local vim = game:GetService("VirtualInputManager")
	                vim:SendKeyEvent(true, Enum.KeyCode.E.Value, false, game)
	                task.wait()
	                vim:SendKeyEvent(false, Enum.KeyCode.E.Value, false, game)
	                task.wait(1)
	        end
	end)
	
	loadstring(game:HttpGet("https://raw.githubusercontent.com/IdiotHub/Scripts/main/Loader"))()
end)
