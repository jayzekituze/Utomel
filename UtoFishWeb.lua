local osclock = os.clock()
repeat task.wait(1) until game:IsLoaded()

--// loadstring(game:HttpGet('https://raw.githubusercontent.com/jayzekituze/Utomel/main/UtoFishWeb.lua'))()
wait(10)
local Players = game:GetService('Players')
local Player = Players.LocalPlayer
local getPlayers = Players:GetPlayers()
local PlayerInServer = #getPlayers
local http = game:GetService("HttpService")
local vu = game:GetService("VirtualUser")
local Library = require(game.ReplicatedStorage:WaitForChild('Library'))
local vu = game:GetService("VirtualUser")
print("Anti AFKEY")

local VirtualUser=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
VirtualUser:CaptureController()
VirtualUser:ClickButton2(Vector2.new())
end)

local function serverHop(id)
    local HttpService = game:GetService("HttpService")
    local TeleportService = game:GetService("TeleportService")
    local Players = game:GetService("Players")
    local sfUrl = "https://games.roblox.com/v1/games/%s/servers/Public?sortOrder=%s&limit=%s&excludeFullGames=true"
    local req = request({
        Url = string.format(sfUrl, id, "Desc", 100)
    })
    local body = HttpService:JSONDecode(req.Body)
    task.wait(0.2)
    local servers = {}
    if body and body.data then
        for i, v in next, body.data do
            if type(v) == "table" and v.playing >= 35 and v.id ~= game.JobId then
                table.insert(servers, 1, v.id)
            end
        end
    end
    local randomCount = #servers
    if not randomCount then
        randomCount = 2
    end
    TeleportService:TeleportToPlaceInstance(id, servers[math.random(1, randomCount)], Players.LocalPlayer)
end

task.spawn(function()
    game:GetService("GuiService").ErrorMessageChanged:Connect(function()
        serverHop(8737899170)
        game.Players.LocalPlayer:Kick("Found An Error, Reconnecting...")
        wait(0.1)
    end)
end)

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
