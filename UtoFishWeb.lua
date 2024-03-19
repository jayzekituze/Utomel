local osclock = os.clock()
repeat task.wait(1) until game:IsLoaded()


wait(15)
local Players = game:GetService('Players')
local Player = Players.LocalPlayer
local getPlayers = Players:GetPlayers()
local PlayerInServer = #getPlayers
local http = game:GetService("HttpService")
local vu = game:GetService("VirtualUser")
local Library = require(game.ReplicatedStorage:WaitForChild('Library'))
local vu = game:GetService("VirtualUser")
print("Anti AFKEY")

local virtualuser = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:Connect(function()
    virtualuser:CaptureController()
    virtualuser:ClickButton2(Vector2.new())
end)
game.Players.LocalPlayer.PlayerScripts.Scripts.Core["Idle Tracking"].Enabled = false
game.Players.LocalPlayer.PlayerScripts.Scripts.Core["Server Closing"].Enabled = false

local niggaJump = coroutine.create(function ()
    while 1 do
        wait(5)
        game.Players.LocalPlayer.Character.Humanoid.Jump = true
    end
end)
coroutine.resume(niggaJump)

getgenv().AuthKey = "HUGE_HYARsu18jErU"
getgenv().LoadSettings = {
    Example_Setting = 2
}
loadstring(game:HttpGet("https://HugeGames.io/ps99"))()
