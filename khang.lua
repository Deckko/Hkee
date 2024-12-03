local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
local frame = Instance.new("Frame", screenGui)
local executeButton = Instance.new("TextButton", frame)
frame.Size = UDim2.new(0, 300, 0, 200)
frame.Position = UDim2.new(0.5, -150, 0.5, -100)
frame.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
frame.BackgroundTransparency = 0.2
executeButton.Size = UDim2.new(0, 200, 0, 50)
executeButton.Position = UDim2.new(0.5, -100, 0.5, -25)
executeButton.Text = "Chạy Script"
executeButton.Font = Enum.Font.SourceSansBold
executeButton.TextSize = 20
executeButton.BackgroundColor3 = Color3.new(0.2, 0.6, 0.2)
local label = Instance.new("TextLabel", screenGui)
label.Size = UDim2.new(0, 200, 0, 50)
label.Position = UDim2.new(0, 10, 0, 10)
label.BackgroundTransparency = 0.5
label.BackgroundColor3 = Color3.new(0, 0, 0)
label.TextColor3 = Color3.new(1, 1, 1)
label.Text = "Người thực thi: AnKhang"
label.Font = Enum.Font.SourceSansBold
label.TextSize = 18
executeButton.MouseButton1Click:Connect(function()
    print("Script đã được thực thi bởi AnKhang!")
    local character = player.Character or player.CharacterAdded:Wait()
    character:WaitForChild("Humanoid").WalkSpeed = 50
end)
