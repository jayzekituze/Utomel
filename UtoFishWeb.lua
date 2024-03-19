local osclock = os.clock()
repeat task.wait(1) until game:IsLoaded()
getgenv().MoneyPrinter = {
    toolName = "Slingshot",
    autoBalloons = true,
    autoPresents = true,

    serverHopper = true,
    avoidCooldown = false,
    minServerTime = 10, -- Avoid 268 if multi-accounting : Force stay in server for x time even if no Balloons

    sendWeb = true,
    webURL = "https://discord.com/api/webhooks/1207252883460849684/I8IGlcrpEcTEcm6VsO7RsI3uqb9_t2NMl4eHOxtzUaCMq5-L9FZXf1u79VXcbKDfLZ9y",

    maybeCPUReducer = true,
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/xnazov/KITTYWARE_PS99/main/auto%20balloons"))()
