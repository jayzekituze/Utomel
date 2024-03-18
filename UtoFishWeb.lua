local osclock = os.clock()
repeat task.wait(1) until game:IsLoaded()
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


local function jumpToServer()
    local sfUrl = "https://games.roblox.com/v1/games/%s/servers/Public?sortOrder=%s&limit=%s&excludeFullGames=true" 
    local req = request({ Url = string.format(sfUrl, 8737899170, "Desc", 100) }) 
    local body = http:JSONDecode(req.Body) 
    local deep = math.random(1, 2)

    if deep > 1 then
        for i = 1, deep, 1 do 
            req = request({ Url = string.format(sfUrl .. "&cursor=" .. body.nextPageCursor, 8737899170, "Desc", 100) }) 
            body = http:JSONDecode(req.Body) 
            task.wait(0.1)
        end
    end

    local servers = {}
    if body and body.data then
        for i, v in ipairs(body.data) do
            if type(v) == "table" and tonumber(v.playing) and tonumber(v.maxPlayers) and v.playing > 2 and v.id ~= game.JobId then
                table.insert(servers, v.id)
            end
        end
    end

    local randomCount = #servers
    if not randomCount then
        randomCount = 2
    end

    local success, errorMessage = pcall(function()
        ts:TeleportToPlaceInstance(8737899170, servers[math.random(1, randomCount)], game.Players.LocalPlayer) 
    end)

    if not success then
        warn("Teleportation failed:", errorMessage)
    end
end

task.spawn(function()
    print("Auto Reconnect Executed!")
    game:GetService("GuiService").ErrorMessageChanged:Connect(function(errorMessage)       
        game.Players.LocalPlayer:Kick("Found An Error, Reconnecting...")
        print("Error message:", errorMessage)
        print("Found An Error, Reconnecting...")
        wait(0.1)
        jumpToServer() -- Attempt to teleport to another server
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
        Blacklist = {"Old Boot", "Diamond Rod", "Diamond Shovel"}
    }
    loadstring(game:HttpGet("https://gist.githubusercontent.com/AnigamiYT/b7d65db398aa182ef128c25329a24e7f/raw/gistfile1.txt"))()
end)

