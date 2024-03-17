local osclock = os.clock()
repeat wait() until game:IsLoaded() and game.PlaceId ~= nil

print("Waiting for 10s to load the other worlds...")
wait(10)

-- Services
local Chimpanzees = game:GetService("Players")
local Jungle = game:GetService("Workspace")
local TreeClimbingService = game:GetService("RunService")
local BananaStorage = game:GetService("ReplicatedStorage")

--// loadstring(game:HttpGet('https://raw.githubusercontent.com/jayzekituze/Utomel/main/UtoFishWeb'))()

-- Monkey type stuff

local InGame = false
local Monkey = Chimpanzees.LocalPlayer
local MonkeyHabitat = Jungle:WaitForChild("__THINGS")
local ActiveMonkeys = MonkeyHabitat:WaitForChild("__INSTANCE_CONTAINER"):WaitForChild("Active")
local MonkeyDebris = Jungle:WaitForChild("__DEBRIS")
local MonkeyNetwork = BananaStorage:WaitForChild("Network")
local OldMonkeyHooks = {}
local MonkeyFishingGame = Monkey:WaitForChild("PlayerGui"):WaitForChild("_INSTANCES").FishingGame.GameBar

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
game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.Core["Server Closing"].Enabled = false

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

-- Define a function to teleport the player to the fishing site
local function teleportToFishingSite()
    -- Teleport the player to the fishing site
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Teleports_RequestTeleport"):InvokeServer("Cloud Forest")
    wait(20)
    Monkey.Character.HumanoidRootPart.CFrame = MonkeyHabitat.Instances.AdvancedFishing.Teleports.Enter.CFrame
    wait(10)
    _G.WebhookURL = "https://discord.com/api/webhooks/1149765527389077534/OAAbl2pZosZJrMQprv_IynhwIj9EGIzf5O_qRyCMplPVrpdxe50dj7VGGuC4Hh_GeNDr" -- you webhook URL   
    _G.DiscUserID = "581283569704370176" -- your discord ID

    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/d68b8e56fab88bf7d726a7690f48b72b.lua"))()
end

-- Check if there are active fishing instances; if not, teleport the player to the fishing site
if #ActiveMonkeys:GetChildren() == 0 then
    teleportToFishingSite()
else
    print('nah')
end


_G.WebhookURL = "https://discord.com/api/webhooks/1149765527389077534/OAAbl2pZosZJrMQprv_IynhwIj9EGIzf5O_qRyCMplPVrpdxe50dj7VGGuC4Hh_GeNDr" -- you webhook URL   
_G.DiscUserID = "581283569704370176" -- your discord ID

loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/d68b8e56fab88bf7d726a7690f48b72b.lua"))()
