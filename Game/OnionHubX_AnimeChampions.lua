local T = false

local function Test()
    while T do
        print("test")
        wait(1)
    end
end



local function Discord()
    setclipboard("https://discord.gg/zP55BJJBqV")
end

local function CloseGUI()
    local coreGui = game:GetService("CoreGui")
    for _, gui in ipairs(coreGui:GetChildren()) do
        if string.len(gui.Name) == 36 then
            gui:Destroy()
            print("Closed GUI: " .. gui.Name)
        end
    end
end

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/YukiRoblox/OnionHubX/main/UI/OnionHubX_UI.lua"))()
local Tab1 = Library:CreateTab("OnionHubX")
local Tab1Section1 = Tab1:CreateSection("Information")
local Tab1Section2 = Tab1:CreateSection("Close")
local Tab2 = Library:CreateTab("Main")
local Tab2Section1 = Tab1:CreateSection("Main")
local Tab2Section2 = Tab1:CreateSection("Soon")
local Tab3 = Library:CreateTab("Soon")
local Tab3Section1 = Tab1:CreateSection("Soon")
local Tab3Section2 = Tab1:CreateSection("Soon")
local Tab4 = Library:CreateTab("Soon")
local Tab4Section1 = Tab1:CreateSection("Soon")
local Tab4Section2 = Tab1:CreateSection("Soon")
local Tab5 = Library:CreateTab("Soon")
local Tab5Section1 = Tab1:CreateSection("Soon")
local Tab5Section2 = Tab1:CreateSection("Soon")

Tab1Section1:CreateButton(
    "READ BEFORE USING",
    function()
        print("You Know what F9 is? Good job!")
    end
)


Tab1Section2:CreateButton(
    "Click To Copy Discord Invite",
    function()
        Discord()
    end
)

Tab1Section2:CreateLabel("Auto", "Suggest New Features")
Tab1Section2:CreateLabel("Auto", "Recommend Games")

Tab1Section2:CreateButton("ANTI-AFK On By Default",
    function()
    end
)

Tab1Section2:CreateButton(
    "CLOSE GUI",
    function()
        CloseGUI()
    end
)

Tab1Section2:CreateLabel("Developer", "Developer: Music Box#1026")
Tab1Section2:CreateLabel("UI", "UI Maker: Music Box#1026")

Tab2Section1:CreateLabel("Auto", "-----------------------------------")
Tab2Section2:CreateLabel("Auto", "-----------------------------------")

Tab3Section1:CreateLabel("Auto", "-----------------------------------")
Tab3Section2:CreateLabel("Auto", "-----------------------------------")

Tab4Section1:CreateLabel("Auto", "-----------------------------------")
Tab4Section2:CreateLabel("Auto", "-----------------------------------")

Tab5Section1:CreateLabel("Auto", "-----------------------------------")
Tab5Section2:CreateLabel("Auto", "-----------------------------------")

for i,v in pairs(getconnections(game.Players.LocalPlayer.Idled)) do
    v:Disable()
    print("Anti-AFK Is On")
end
