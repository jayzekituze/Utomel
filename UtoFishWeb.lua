repeat wait() until game:IsLoaded()
wait(15)
print("AutoFismsh")

--// loadstring(game:HttpGet('https://raw.githubusercontent.com/jayzekituze/Utomel/main/PaidScript'))()
local Players = game:GetService('Players')
local Player = Players.LocalPlayer
local getPlayers = Players:GetPlayers()
local PlayerInServer = #getPlayers
local http = game:GetService("HttpService")
local ts = game:GetService("TeleportService")
local rs = game:GetService("ReplicatedStorage")
local vu = game:GetService("VirtualUser")


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
    print("Auto Reconnect Executed!")
    game:GetService("GuiService").ErrorMessageChanged:Connect(function(errorMessage)       
        game.Players.LocalPlayer:Kick("Found An Error, Reconnecting...")
        print("Error message:", errorMessage)
        print("Found An Error, Reconnecting...")
        wait(0.1)
        serverHop(8737899170) -- Attempt to teleport to another server
    end);
end)

task.spawn(function()
    print("AutoFish Executed!")
    getgenv().configTable = {
        MailboxTo = "bbqkram",
        MinimumAmountDiamond = 1000000,
        MinimumAmountItem = 250000,
        AutoMailbox = false,
        AutoMailboxClaim = false,
        Whitelist = {"Diamonds"},
        Optimizer = false,
    }
    loadstring(game:HttpGet("https://gist.githubusercontent.com/AnigamiYT/b7d65db398aa182ef128c25329a24e7f/raw/gistfile1.txt"))()
end)