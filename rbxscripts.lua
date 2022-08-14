-- Gui to Lua
-- Version: 3.2

-- Instances:

local rbxscripts = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local panel = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local PlaceHolder = Instance.new("Frame")
local siteBtn = Instance.new("TextButton")
local hideBtn = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local searchBox = Instance.new("TextBox")
local UICorner_4 = Instance.new("UICorner")
local search = Instance.new("ImageButton")
local Scripts = Instance.new("Frame")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local UIPadding = Instance.new("UIPadding")

--Properties:

rbxscripts.Name = "rbxscripts"
rbxscripts.Parent = cloneref(game:GetService("CoreGui"))
rbxscripts.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = rbxscripts
MainFrame.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.327123702, 0, 0.28744328, 0)
MainFrame.Size = UDim2.new(0, 464, 0, 280)

UICorner.Parent = MainFrame

panel.Name = "panel"
panel.Parent = MainFrame
panel.BackgroundColor3 = Color3.fromRGB(24, 26, 27)
panel.Size = UDim2.new(1, 0, 0, 30)

UICorner_2.Parent = panel

PlaceHolder.Name = "PlaceHolder"
PlaceHolder.Parent = panel
PlaceHolder.BackgroundColor3 = Color3.fromRGB(24, 26, 27)
PlaceHolder.BorderSizePixel = 0
PlaceHolder.Position = UDim2.new(0, 0, 0.433333337, 0)
PlaceHolder.Size = UDim2.new(1, 0, 0.400000006, 5)

siteBtn.Name = "siteBtn"
siteBtn.Parent = panel
siteBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
siteBtn.BackgroundTransparency = 1.000
siteBtn.Position = UDim2.new(0.0129310349, 0, 0.100000001, 0)
siteBtn.Size = UDim2.new(0, 107, 0, 24)
siteBtn.Font = Enum.Font.GothamBold
siteBtn.Text = "rbxscripts.xyz"
siteBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
siteBtn.TextScaled = true
siteBtn.TextSize = 14.000
siteBtn.TextWrapped = true
siteBtn.TextXAlignment = Enum.TextXAlignment.Left

hideBtn.Name = "hideBtn"
hideBtn.Parent = panel
hideBtn.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
hideBtn.Position = UDim2.new(0.94801724, 0, 0.200000048, 0)
hideBtn.Size = UDim2.new(0, 18, 0, 18)
hideBtn.Font = Enum.Font.GothamBold
hideBtn.Text = ""
hideBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
hideBtn.TextScaled = true
hideBtn.TextSize = 14.000
hideBtn.TextWrapped = true
hideBtn.TextXAlignment = Enum.TextXAlignment.Left

UICorner_3.CornerRadius = UDim.new(0, 25)
UICorner_3.Parent = hideBtn

searchBox.Name = "searchBox"
searchBox.Parent = MainFrame
searchBox.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
searchBox.Position = UDim2.new(0.0129310349, 0, 0.132142857, 0)
searchBox.Size = UDim2.new(0, 452, 0, 23)
searchBox.Font = Enum.Font.GothamBold
searchBox.PlaceholderText = "Search (NOT FUNCTIONAL)"
searchBox.Text = ""
searchBox.TextColor3 = Color3.fromRGB(255, 255, 255)
searchBox.TextSize = 14.000

UICorner_4.Parent = searchBox

search.Name = "search"
search.Parent = searchBox
search.BackgroundTransparency = 1.000
search.LayoutOrder = 1
search.Position = UDim2.new(0.939999998, 0, 0.023, 0)
search.Size = UDim2.new(0, 21, 0, 21)
search.ZIndex = 2
search.Image = "rbxassetid://3926305904"
search.ImageRectOffset = Vector2.new(964, 324)
search.ImageRectSize = Vector2.new(36, 36)

Scripts.Name = "Scripts"
Scripts.Parent = MainFrame
Scripts.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Scripts.BackgroundTransparency = 1.000
Scripts.Position = UDim2.new(0, 0, 0.25, 0)
Scripts.Size = UDim2.new(1, 0, 0.371428579, 100)

ScrollingFrame.Parent = Scripts
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.ScrollBarImageTransparency = 1
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.Size = UDim2.new(1.01939654, 0, 1, 0)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)

UIListLayout.Parent = ScrollingFrame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 3)

UIPadding.Parent = ScrollingFrame
UIPadding.PaddingLeft = UDim.new(0, 5)

--json
local HttpService = game:GetService("HttpService")
local characterStats = game:HttpGet("https://rbxscripts.xyz/wp-json/wl/v1/posts/")
local json = HttpService:JSONDecode(characterStats)

--[[
    Scripts
]]


--dragify
local UIS = game:GetService("UserInputService")
function dragify(Frame)
local dragToggle = nil
local dragSpeed = 0
local dragInput = nil
local dragStart = nil
local dragPos = nil
function updateInput(input)
    local Delta = input.Position - dragStart
    local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
    game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.25), {Position = Position}):Play()
end
Frame.InputBegan:Connect(function(input)
    if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
        dragToggle = true
        dragStart = input.Position
        startPos = Frame.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragToggle = false
            end
        end)
    end
end)
Frame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)
game:GetService("UserInputService").InputChanged:Connect(function(input)
    if input == dragInput and dragToggle then
        updateInput(input)
    end
end)
end
dragify(MainFrame)

--dynamic scrolling frame
ScrollingFrame.ChildAdded:Connect(function()
    local ContentSize = ScrollingFrame.UIListLayout.AbsoluteContentSize.Y
    ScrollingFrame.CanvasSize = UDim2.fromOffset(0, ContentSize + 30)
    ScrollingFrame.CanvasPosition = Vector2.new(0, ContentSize + 30)
end)

--hide unhide button
local userinput = game:GetService("UserInputService")
userinput.InputBegan:Connect(function(key, _)
    if key.KeyCode == Enum.KeyCode.RightShift and not _ then
        MainFrame.Visible = not MainFrame.Visible
    end
end)

--hide button
hideBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = false
end)

--site clipboard button
siteBtn.MouseButton1Click:Connect(function()
    if setclipboard then
        setclipboard("https://rbxscripts.xyz/")
    end
end)

--idk what to name this
for i,v in pairs(json) do
    local UICorner = Instance.new("UICorner")
    local Btn = Instance.new("TextButton")
    Btn.Name = "Button"
    Btn.Parent = ScrollingFrame
    Btn.BackgroundColor3 = Color3.fromRGB(37, 37, 37)
    Btn.Size = UDim2.new(0, 453, 0, 27)
    Btn.Font = Enum.Font.SourceSans
    Btn.TextColor3 = Color3.fromRGB(209, 209, 209)
    Btn.TextScaled = true
    Btn.TextSize = 14.000
    Btn.TextWrapped = true
    UICorner.Parent = Btn
    for x,z in pairs(v) do
        if x == "title" then
            Btn.Text = z
        end
        if x == "excerpt" then
            Btn.MouseButton1Click:Connect(function()
                loadstring(z)()
            end)
        end
    end
end