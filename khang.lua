local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "MenuGui"
gui.Parent = player:WaitForChild("PlayerGui")
local logo = Instance.new("ImageButton")
logo.Name = "MenuLogo"
logo.Size = UDim2.new(0, 50, 0, 50)
logo.Position = UDim2.new(0, 10, 0, 10)
logo.Image = "content://media/external/downloads/1000002227"
logo.BackgroundTransparency = 1
logo.Parent = gui
local menu = Instance.new("Frame")
menu.Name = "MenuFrame"
menu.Size = UDim2.new(0, 250, 1, 0)
menu.Position = UDim2.new(0, -250, 0, 0)
menu.BackgroundColor3 = Color3.fromRGB(52, 58, 64)
menu.BorderSizePixel = 0
menu.Parent = gui
local title = Instance.new("TextLabel")
title.Name = "MenuTitle"
title.Size = UDim2.new(1, 0, 0, 50)
title.BackgroundTransparency = 1
title.Text = "Chức Năng"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.SourceSansBold
title.TextSize = 24
title.Parent = menu
local options = {"Trang Chủ", "Giới Thiệu", "Liên Hệ", "Cài Đặt"}
for i, option in ipairs(options) do
    local button = Instance.new("TextButton")
    button.Name = "Option" .. i
    button.Size = UDim2.new(1, -20, 0, 40)
    button.Position = UDim2.new(0, 10, 0, 60 + (i - 1) * 50)
    button.BackgroundColor3 = Color3.fromRGB(73, 80, 87)
    button.Text = option
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 20
    button.Parent = menu
end
local footer = Instance.new("TextLabel")
footer.Name = "MenuFooter"
footer.Size = UDim2.new(1, 0, 0, 40)
footer.Position = UDim2.new(0, 0, 1, -50)
footer.BackgroundTransparency = 1
footer.Text = "Người phát triển: AnKhang"
footer.TextColor3 = Color3.fromRGB(200, 200, 200)
footer.Font = Enum.Font.SourceSans
footer.TextSize = 16
footer.Parent = menu
local dateTime = Instance.new("TextLabel")
dateTime.Name = "DateTime"
dateTime.Size = UDim2.new(1, 0, 0, 40)
dateTime.Position = UDim2.new(0, 0, 1, -90)
dateTime.BackgroundTransparency = 1
dateTime.TextColor3 = Color3.fromRGB(200, 200, 200)
dateTime.Font = Enum.Font.SourceSans
dateTime.TextSize = 16
dateTime.Parent = menu
spawn(function()
    while true do
        local now = os.date("*t")
        dateTime.Text = string.format("Ngày giờ: %02d/%02d/%04d %02d:%02d:%02d", now.day, now.month, now.year, now.hour, now.min, now.sec)
        wait(1)
    end
end)
local menuOpen = false
logo.MouseButton1Click:Connect(function()
    if menuOpen then
        menu:TweenPosition(UDim2.new(0, -250, 0, 0), "Out", "Sine", 0.3, true)
    else
        menu:TweenPosition(UDim2.new(0, 0, 0, 0), "Out", "Sine", 0.3, true)
    end
    menuOpen = not menuOpen
end)
