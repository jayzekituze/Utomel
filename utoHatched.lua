local osclock = os.clock()
repeat task.wait() until game:IsLoaded()


print("waiting 20s to execute")
wait(15)

local Players = game:GetService('Players')
local Player = Players.LocalPlayer
local getPlayers = Players:GetPlayers()
local PlayerInServer = #getPlayers
local http = game:GetService("HttpService")
local ts = game:GetService("TeleportService")
local rs = game:GetService("ReplicatedStorage")

local vu = game:GetService("VirtualUser")
Players.LocalPlayer.Idled:connect(function()
	vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	task.wait(1)
	vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.Core["Idle Tracking"].Disabled = true

local character = Player.Character or Player.CharacterAdded:Wait()
local humanoid = character:FindFirstChildWhichIsA('Humanoid')

local function moveToPosition(position)
	local moveFinished = false
	local connection
	connection = humanoid.MoveToFinished:Connect(function(reached)
		moveFinished = reached
		if connection then
			connection:Disconnect()
		end
	end)
	humanoid:MoveTo(position)
	repeat task.wait() until moveFinished
end
	
moveToPosition(Vector3.new(-10042.6162109375, 16.804433822631836, -315.94561767578125))


--// loadstring(game:HttpGet('https://raw.githubusercontent.com/jayzekituze/Utomel/main/utoHatched'))()
-- loadstring(game:HttpGet("https://raw.githubusercontent.com/AwesomeDudePerfect/psx-gem-farm/main/lowCpu.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/jayzekituze/Utomel/main/lowCPU"))()

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
            if type(v) == "table" and v.playing >= 2 and v.id ~= game.JobId then
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
        game.Players.LocalPlayer:Kick("Found An Error, Reconnecting...")
        serverHop(place)
        wait(0.1)
    end)
end)

task.spawn(function()
    task.wait(20)
	getgenv().AuthKey = "HUGE_HYARsu18jErU"
	getgenv().LoadSettings = {
		Example_Setting = 2
	}
	loadstring(game:HttpGet("https://HugeGames.io/ps99"))()
    --loadstring(game:HttpGet('https://raw.githubusercontent.com/jayzekituze/Utomel/main/UtoHatchedV1.5'))()
end)
