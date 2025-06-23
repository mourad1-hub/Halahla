loadstring(game:HttpGet(("https://raw.githubusercontent.com/R7KScript/usernaxo/refs/heads/main/GUI3")))()
MakeWindow({
  Hub = {
    Title = "TREDAX HUB BROOKHAVEN  1.2V",
    Animation = "ABBAS SCRIPT"
  },
  Key = {
    KeySystem = false,
    Title = "المفتاح",
    Description = "ادخل عل قناتي تليكرام لتحصل عل مفتاح ",
    KeyLink = "https://t.me/NEVA_HUB",
    Keys = {"abbas"},
    Notifi = {
      Notifications = true,
      CorrectKey = "个بارك الله فيك مفتاح صحيح个",
      Incorrectkey = "个حب المفتاح غلط个",
      CopyKeyLink = "تم نسخ في الحافظه"
    }
  }
})

--[[
  Hub = {
    Title = "REDz HUB" -- <string> Titulo do seu script
    Animation = "by : redz9999" -- <string> Adiciona um texto na animacão do seu HUB
  },
  Key = {
    KeySystem = <bollean> Adiciona um sistema de chaves
    Title = "Key System" <string> Adiciona um titulo ao seu sistema de chaves
    Description = "" <string> Adiciona uma descrição ao seu sistema de chaves
    KeyLink = "" <string> Adicina o Link onde pega a chave do HUB
    Keys = {"1234"} <table> Adiciona as Chaves
    Notifi = {
      Notifications = true <boolean> Adicina notificações ao sistema de chaves
      CorrectKey = "Running the Script..." <string> notificação quando a chave estiver correta
      Incorrectkey = "The key is incorrect" <string> notificação quando a chave estiver incorreta
      CopyKeyLink = "Copied to Clipboard" <string> notificação quando o link da chave fir copiado
    }
  }
]]
local Main = MakeTab({Name = "معلومات"})

--[[
  Name = "Main" <string> Nome da guia
]]
local Image = AddImageLabel(Main, {
  Name = "TREDAX HUB ",
  Image = "rbxassetid://135207208601826"
})
local Paragraph = AddParagraph(Main, {"سكربت عباره عن مجموعه كبيره من مميزات"})

MinimizeButton({
Image = "rbxassetid://94901238836721",
Size = {55, 55},
Color = Color3.fromRGB(10, 10, 10),
Corner = true,
Stroke = true,
StrokeColor = Color3.fromRGB(255, 255, 255),
StrokeTransparency = 0,
})
local args = {
    [1] = "RolePlayBio",
    [2] = "MRT_V2"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1RPNam1eTex1t"):FireServer(unpack(args))
local args = {
    [1] = "RolePlayName",
    [2] = "MRT_V2"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1RPNam1eTex1t"):FireServer(unpack(args))
wait(0.1)
game.StarterGui:SetCore("SendNotification", {
    Title = "انتصر";
    Text = "جاري تحميل..."; -- ARAB TEAM
    
    Duration = 5;
})
wait(0.1)
game.StarterGui:SetCore("SendNotification", {
    Title = " تم اشتغل ";
    Text = "سكربت مطور TREDAX ";
      Image = "rbxassetid://136300057076089"; -- ARAB TEAM
    Duration = 5;
})
AddButton(Main, {
  Name = "نسخ حسابي روبلوكس",
  Callback = function()
    setclipboard('ABBAS_ASBBAS')
  end
})
AddButton(Main, {
  Name = "个نسخ حسابي تيك توك个",
  Callback = function()
    setclipboard("sex.xvx")
  end
})
local Paragraph = AddParagraph(Main, {"السيرفر"})
-- Create a label to show the number of players
local playerCountLabel = AddTextLabel(Main, "الاعبين في السيرفر  " .. #game.Players:GetPlayers())

-- Função para atualizar o número de jogadores quando alguém entra ou sai
local function updatePlayerCount()
    playerCountLabel.Text = "الاعبين في السيرفر: " .. #game.Players:GetPlayers()
end

-- Conecta a função ao evento de entrada de novos jogadores
game.Players.PlayerAdded:Connect(updatePlayerCount)

-- Conecta a função ao evento de saída de jogadores
game.Players.PlayerRemoving:Connect(updatePlayerCount)

-- Atualiza a contagem de jogadores no início (caso tenha jogadores ao carregar o script)
updatePlayerCount()

-- Criando a TextLabel
local Label = AddTextLabel(Main, "")

-- Função para atualizar o tempo na TextLabel
local function updateTime(label)
    while true do
        local currentTime = os.date("%H:%M:%S")
        label.Text = "وقت: " .. currentTime
        wait(1)  -- Atualiza a cada segundo
    end
end

-- Iniciando a atualização da TextLabel
coroutine.wrap(updateTime)(Label)
local Main = MakeTab({Name ="التحديثات"})

--[[
  Name = "Main" <string> Nome da guia
]]
local Paragraph = AddParagraph(Main, {"لإضافات في هاذا تحديث"})
local section = AddSection(Main, {"اضافه شعر وسكنات جاهزه"})
local section = AddSection(Main, {"اضافه اكسسوارات "})
local Paragraph = AddParagraph(Main, {"الإضافات القادمه"})
local section = AddSection(Main, {"ضافه اكسوورات أكثر "})
local section = AddSection(Main, {"اضافه أجسام وارحل أكثر "})
local section = AddSection(Main, {"اضافه أشياء اخراء"})
local Main = MakeTab({Name = "سكربتات"})

--[[
  Name = "Main" <string> Nome da guia
]]
local section = AddSection(Main, {"سكربتات من صنع مطورين "})
local section = AddSection(Main, {"سكربتات عشوائية"})
local Main = MakeTab({Name = "سكن"})

--[[
  Name = "Main" <string> Nome da guia
]]
AddSection(Main, {"نسخ سكنات كاملة"})

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")

local RemoteWear = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("Wear")
local RemoteBody = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("ChangeCharacterBody")

local function Notify(title, text)
    StarterGui:SetCore("SendNotification", {
        Title = title,
        Text = text,
        Duration = 3
    })
end

local function Wear(id)
    if id and id ~= 0 then
        RemoteWear:InvokeServer(id)
    end
end

local function ApplySkinTone(player)
    local char = player.Character or player.CharacterAdded:Wait()
    local bodyColors = char:FindFirstChildOfClass("BodyColors")
    if bodyColors then
        Wear(bodyColors.HeadColor.Name)
    end
end

local function CopyClothing(player)
    local h = (player.Character or player.CharacterAdded:Wait()):FindFirstChildOfClass("Humanoid")
    if h then
        local d = h:GetAppliedDescription()
        for _, id in ipairs({d.Shirt, d.Pants, d.GraphicTShirt}) do
            Wear(id)
            task.wait(0.2)
        end
    end
end

local function CopyAccessories(player)
    local h = (player.Character or player.CharacterAdded:Wait()):FindFirstChildOfClass("Humanoid")
    if h then
        local d = h:GetAppliedDescription()
        local all = {
            d.HatAccessory, d.HairAccessory, d.FaceAccessory,
            d.NeckAccessory, d.ShouldersAccessory, d.FrontAccessory,
            d.BackAccessory, d.WaistAccessory
        }
        for _, accList in ipairs(all) do
            if accList then
                for id in string.gmatch(accList, "%d+") do
                    Wear(tonumber(id))
                    task.wait(0.2)
                end
            end
        end
    end
end

local function CopyBodyParts(player)
    local h = (player.Character or player.CharacterAdded:Wait()):FindFirstChildOfClass("Humanoid")
    if h then
        local d = h:GetAppliedDescription()
        local bodyIds = {
            d.Torso, d.RightArm, d.LeftArm,
            d.RightLeg, d.LeftLeg, d.Head
        }
        if RemoteBody then
            RemoteBody:InvokeServer(bodyIds)
        else
            Notify("خطأ", "RemoteBody غير موجود.")
        end
    end
end

local function CopySleeves(player)
    
    local h = (player.Character or player.CharacterAdded:Wait()):FindFirstChildOfClass("Humanoid")
    if h then
        local d = h:GetAppliedDescription()
        local sleeveIds = {
            d.LeftArm, d.RightArm 
        }

        for _, id in ipairs(sleeveIds) do
            if id then
                Wear(id) 
                task.wait(0.2)
            end
        end
    end
end

local selectedPlayer = nil

local function GetPlayerList()
    local list = {}
    for _, p in ipairs(Players:GetPlayers()) do
        if p ~= Players.LocalPlayer then
            table.insert(list, p.Name)
        end
    end
    return list
end

AddDropdown(Main, {
    Name = "اختار اللاعب",
    Default = "",
    Options = GetPlayerList(),
    Callback = function(value)
        selectedPlayer = value
    end
})

AddButton(Main, {
    Name = "نسخ السكن",
    Callback = function()
        if not selectedPlayer then
            Notify("خطأ", "يجب اختيار لاعب أولاً")
            return
        end

        local player = Players:FindFirstChild(selectedPlayer)  
        if not player then return end  

        Notify("جاري النسخ", "جاري نسخ سكن " .. player.Name)  

        task.spawn(function()  
            
            CopyBodyParts(player)  
            task.wait(0.3)  
            ApplySkinTone(player)  
            task.wait(0.3)  
            CopyClothing(player)  
            task.wait(0.3)  
            CopyAccessories(player)  
            task.wait(0.3)  
            CopySleeves(player) 
            Notify("تم النسخ", "تم نسخ سكن " .. player.Name .. " بنجاح!")  
        end)  
    end
})
local Main = MakeTab({Name = "الرؤاس والرجل"})

--[[
  Name = "Main" <string> Nome da guia
]]
local Paragraph = AddParagraph(Main, {"الراس"})
AddButton(Main, {
  Name = "رأس روبوت",
  Callback = function()
    local args = {
    [1] = 3210773801
}

game:GetService("ReplicatedStorage").Remotes.Wear:InvokeServer(unpack(args))

  end
})

--[[
  Name = "Botão teste" <string> nome do seu botão
  Callback = function()
    -- funcão do seu botão
  end
]]
AddButton(Main, {
  Name = "رأس مخفي ",
  Callback = function()
    local args = {
    [1] = 134082579
}

game:GetService("ReplicatedStorage").Remotes.Wear:InvokeServer(unpack(args))

  end
})

--[[
  Name = "Botão teste" <string> nome do seu botão
  Callback = function()
    -- funcão do seu botão
  end
]]
AddButton(Main, {
  Name = "رأس كوبي | رول ",
  Callback = function()
    local args = {
    [1] = 746767604
}

game:GetService("ReplicatedStorage").Remotes.Wear:InvokeServer(unpack(args))

  end
})

--[[
  Name = "Botão teste" <string> nome do seu botão
  Callback = function()
    -- funcão do seu botão
  end
]]
AddButton(Main, {
  Name = "عيون زرق ",
  Callback = function()
    local args = {
    [1] = 16580493236
}

game:GetService("ReplicatedStorage").Remotes.Wear:InvokeServer(unpack(args))

  end
})

--[[
  Name = "Botão teste" <string> nome do seu botão
  Callback = function()
    -- funcão do seu botão
  end
]]
local Paragraph = AddParagraph(Main, {"الراجل متنوعه"})
AddButton(Main, {
  Name = "رجل عضام ابيض",
  Callback = function()
    local args = {
    [1] = {
        [1] = 1,
        [2] = 1,
        [3] = 1,
        [4] = 14580308646,
        [5] = 1,
        [6] = 1
    }
}

game:GetService("ReplicatedStorage").Remotes.ChangeCharacterBody:InvokeServer(unpack(args))

  end
})

--[[
  Name = "Botão teste" <string> nome do seu botão
  Callback = function()
    -- funcão do seu botão
  end
]]
AddButton(Main, {
  Name = "رجل عضام اسود",
  Callback = function()
    local args = {
    [1] = {
        [1] = 1,
        [2] = 1,
        [3] = 1,
        [4] = 14547162578,
        [5] = 1,
        [6] = 1
    }
}

game:GetService("ReplicatedStorage").Remotes.ChangeCharacterBody:InvokeServer(unpack(args))

  end
})

--[[
  Name = "Botão teste" <string> nome do seu botão
  Callback = function()
    -- funcão do seu botão
  end
]]
AddButton(Main, {
  Name = "ارجل رول ",
  Callback = function()
    local args = {
    [1] = {
        [1] = 1,
        [2] = 1,
        [3] = 1,
        [4] = 3230472745,
        [5] = 3230470862,
        [6] = 1
    }
}

game:GetService("ReplicatedStorage").Remotes.ChangeCharacterBody:InvokeServer(unpack(args))

  end
})

--[[
  Name = "Botão teste" <string> nome do seu botão
  Callback = function()
    -- funcão do seu botão
  end
]]
AddButton(Main, {
  Name = "رجل حديديه",
  Callback = function()
    local args = {
    [1] = {
        [1] = 1,
        [2] = 1,
        [3] = 1,
        [4] = 17500249989,
        [5] = 1,
        [6] = 1
    }
}

game:GetService("ReplicatedStorage").Remotes.ChangeCharacterBody:InvokeServer(unpack(args))

  end
})

--[[
  Name = "Botão teste" <string> nome do seu botão
  Callback = function()
    -- funcão do seu botão
  end
]]
local Main = MakeTab({Name = "الاجسام"})

--[[
  Name = "Main" <string> Nome da guia
]]
AddButton(Main, {
  Name = "جسم بنت 1",
  Callback = function()
local args = {
    [1] = {
        [1] = 96491916349570,
        [2] = 76683091425509,
        [3] = 75159926897589,
        [4] = 1,
        [5] = 1,
        [6] = 1
    }
}

game:GetService("ReplicatedStorage").Remotes.ChangeCharacterBody:InvokeServer(unpack(args))

  end
})
AddButton(Main, {
  Name = "جسم بنت 2",
  Callback = function()
local args = {
    [1] = {
        [1] = 96491916349570,
        [2] = 14854350570,
        [3] = 14854350451,
        [4] = 1,
        [5] = 1,
        [6] = 1
    }
}

game:GetService("ReplicatedStorage").Remotes.ChangeCharacterBody:InvokeServer(unpack(args))

  end
})
AddButton(Main, {
  Name = "جسم بنت 3",
  Callback = function()
local args = {
    [1] = {
        [1] = 74302534603111,
        [2] = 76683091425509,
        [3] = 75159926897589,
        [4] = 1,
        [5] = 1,
        [6] = 1
    }
}

game:GetService("ReplicatedStorage").Remotes.ChangeCharacterBody:InvokeServer(unpack(args))

  end
})
AddButton(Main, {
  Name = "جسم بنت 4",
  Callback = function()
local args = {
    [1] = {
        [1] = 16214246112,
        [2] = 76683091425509,
        [3] = 16214251181,
        [4] = 1,
        [5] = 1,
        [6] = 1
    }
}

game:GetService("ReplicatedStorage").Remotes.ChangeCharacterBody:InvokeServer(unpack(args))

  end
})
AddButton(Main, {
  Name = "جسم بنت 5",
  Callback = function()
local args = {
    [1] = {
        [1] = 124754866635882,
        [2] = 76683091425509,
        [3] = 75159926897589,
        [4] = 1,
        [5] = 1,
        [6] = 1
    }
}

game:GetService("ReplicatedStorage").Remotes.ChangeCharacterBody:InvokeServer(unpack(args))

  end
})
AddButton(Main, {
  Name = "جسم بنت 6",
  Callback = function()
local args = {
    [1] = {
        [1] = 18839824113,
        [2] = 18839824209,
        [3] = 18839824132,
        [4] = 1,
        [5] = 1,
        [6] = 1
    }
}

game:GetService("ReplicatedStorage").Remotes.ChangeCharacterBody:InvokeServer(unpack(args))

  end
})
AddButton(Main, {
  Name = "جسم بنت 7",
  Callback = function()
local args = {
    [1] = {
        [1] = 15539008532,
        [2] = 15539008875,
        [3] = 15539008680,
        [4] = 15539008795,
        [5] = 15539011945,
        [6] = 1
    }
}

game:GetService("ReplicatedStorage").Remotes.ChangeCharacterBody:InvokeServer(unpack(args))

  end
})
local section = AddSection(Main, {"أجسام اولاد نحيفين"})
AddButton(Main, {
  Name = "جسم ولد نحيف 1",
  Callback = function()
local args = {
    [1] = {
        [1] = 17754346388,
        [2] = 1,
        [3] = 1,
        [4] = 1,
        [5] = 1,
        [6] = 1
    }
}

game:GetService("ReplicatedStorage").Remotes.ChangeCharacterBody:InvokeServer(unpack(args))

  end
})
AddButton(Main, {
  Name = "جسم ولد نحيف 2",
  Callback = function()
local args = {
    [1] = {
        [1] = 92757812011061,
        [2] = 99519402284266,
        [3] = 115905570886697,
        [4] = 1,
        [5] = 1,
        [6] = 1
    }
}

game:GetService("ReplicatedStorage").Remotes.ChangeCharacterBody:InvokeServer(unpack(args))

  end
})
local section = AddSection(Main, {"أجسام اولاد مشهوره وجميله "})
AddButton(Main, {
  Name = "جسم ولد كوبي",
  Callback = function()
local args = {
    [1] = {
        [1] = 86499666,
        [2] = 27112039,
        [3] = 27112052,
        [4] = 27112068,
        [5] = 27112056,
        [6] = 1
    }
}

game:GetService("ReplicatedStorage").Remotes.ChangeCharacterBody:InvokeServer(unpack(args))

  end
})
AddButton(Main, {
  Name = "جسم ولد رول",
  Callback = function()
local args = {
    [1] = {
        [1] = 27112025,
        [2] = 27112039,
        [3] = 27112052,
        [4] = 3230472745,
        [5] = 3230470862,
        [6] = 1
    }
}

game:GetService("ReplicatedStorage").Remotes.ChangeCharacterBody:InvokeServer(unpack(args))

  end
})
local section = AddSection(Main, {"أجسام اقزام"})
AddButton(Main, {
  Name = "جسم قزم عادي",
  Callback = function()
local args = {
    [1] = {
        [1] = 14579958702,
        [2] = 14579959062,
        [3] = 14579959191,
        [4] = 14579959249,
        [5] = 14579963667,
        [6] = 1
    }
}

game:GetService("ReplicatedStorage").Remotes.ChangeCharacterBody:InvokeServer(unpack(args))

  end
})
AddButton(Main, {
  Name = "جسم قزم متوسط",
  Callback = function()
local args = {
    [1] = {
        [1] = 77813057823038,
        [2] = 135110043370135,
        [3] = 116607813654019,
        [4] = 138966229804486,
        [5] = 128961183894053,
        [6] = 1
    }
}

game:GetService("ReplicatedStorage").Remotes.ChangeCharacterBody:InvokeServer(unpack(args))

  end
})
AddButton(Main, {
  Name = "جسم قزم صغيره [ كيوت ] ",
  Callback = function()
local args = {
    [1] = {
        [1] = 120973199097564,
        [2] = 118345433416023,
        [3] = 112849465115864,
        [4] = 78321005147549,
        [5] = 106586789635639,
        [6] = 1
    }
}

game:GetService("ReplicatedStorage").Remotes.ChangeCharacterBody:InvokeServer(unpack(args))

  end
})
local Main = MakeTab({Name = "كشف"})

--[[
  Name = "Main" <string> Nome da guia
]]
local Paragraph = AddParagraph(Main, {"كشف ESP"})
local ESP = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()
ESP:Toggle(true)
ESP.Players = false
ESP.Names = false

local Toggle = AddToggle(Main, {
  Name = "فعلة",
  Default = false,
  Callback = function(Value)
    ESP.Players = Value
  end
})

local Toggle = AddToggle(Main, {
  Name = "الاسامي الاعبين",
  Default = false,
  Callback = function(Value)
    ESP.Names = Value
  end
})
AddColorPicker(Main, {
  Name = "لون ESP ",
  Default = Color3.fromRGB(255, 255, 0),
  Callback = function(Value)
    ESP.Color = Value
  end
})
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local Camera = workspace.CurrentCamera
local LocalPlayer = Players.LocalPlayer

local FOV_Size = 150

local FOV_Circle = Drawing.new("Circle")
FOV_Circle.Color = Color3.fromRGB(75, 0, 130)
FOV_Circle.Thickness = 1
FOV_Circle.Filled = false
FOV_Circle.Radius = FOV_Size
FOV_Circle.Visible = false

local isAimingEnabled = false

local function UpdateFOV()
    local ScreenSize = Camera.ViewportSize
    local CenterPosition = Vector2.new(ScreenSize.X / 2, ScreenSize.Y / 2)
    FOV_Circle.Position = CenterPosition
    FOV_Circle.Radius = FOV_Size
end

local function GetNearestTarget()
    local ClosestPlayer = nil
    local ShortestDistance = FOV_Size

    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChildOfClass("Humanoid") then
            local RootPart = player.Character:FindFirstChild("HumanoidRootPart") or player.Character:FindFirstChild("Torso") or player.Character:FindFirstChild("UpperTorso")

            if RootPart then
                local TargetPosition, OnScreen = Camera:WorldToViewportPoint(RootPart.Position)

                if OnScreen then
                    local CenterPosition = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
                    local Distance = (Vector2.new(TargetPosition.X, TargetPosition.Y) - CenterPosition).Magnitude

                    if Distance < ShortestDistance then
                        ClosestPlayer = player
                        ShortestDistance = Distance
                    end
                end
            end
        end
    end

    return ClosestPlayer
end
local Main = MakeTab({Name = "الاعب"})

--[[
  Name = "Main" <string> Nome da guia
]]
AddTextBox(Main, {
  Name = "سرعة | Speed",
  Default = "",
  PlaceholderText = "ادخل رقم سرعه",
  ClearText = true,
  Callback = function(value)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value     
 end
})
AddTextBox(Main, {
  Name = "قفز | Jump",
  Default = "",
  PlaceholderText = "ادخل رقم قفز ",
  ClearText = true,
  Callback = function(value)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = value    
  end
})
AddTextBox(Main, {
  Name = "Fov | شاشه",
  Default = "",
  PlaceholderText = "ادخل رقم شاشه",
  ClearText = true,
  Callback = function(value)
local FovNumber = value
local Camera = workspace.CurrentCamera
Camera.FieldOfView = FovNumber  
  end
})
AddTextBox(Main, {
  Name = "Spin | دوران",
  Default = "",
  PlaceholderText = "ادخل رقم دوران",
  ClearText = true,
  Callback = function(Value)
    getgenv().Spinspeed = Value

local Spin = Instance.new'BodyAngularVelocity'
Spin.Parent = game:GetService'Players'.LocalPlayer.Character:FindFirstChild'HumanoidRootPart'
Spin.MaxTorque = Vector3.new(0, math.huge, 100)
wait(0.1)
Spin.AngularVelocity = Vector3.new(100,Spinspeed,0)
  end
})
AddButton(Main, {
  Name = "كنبه | Couch",
  Callback = function()
    local args={[1]="PickingTools",[2]="Couch"};game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack(args))
  end
})
local infiniteJumpEnabled = false

-- Conectar o evento de pulo somente uma vez
local infiniteJumpConnection

-- Função de callback para o botão de alternância de pulo infinito
local function onInfiniteJumpToggle(value)
    infiniteJumpEnabled = value
    print("Infinite Jump Enabled:", infiniteJumpEnabled)
    
    -- Conectar o evento de pulo somente uma vez
    if not infiniteJumpConnection then
        infiniteJumpConnection = game:GetService("UserInputService").JumpRequest:Connect(function()
            if infiniteJumpEnabled then
                local player = game.Players.LocalPlayer
                local character = player.Character
                if character and character:FindFirstChildOfClass("Humanoid") then
                    character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
                end
            end
        end)
    end
end

-- Adiciona o botão de alternância "Infinitejum    
    local Toggle = AddToggle(Main, {
    Name = "قفز لا نهائي | Inf Jump",
    Default = false,
    Callback = onInfiniteJumpToggle
})
function MakeNotifi(notification)
    game.StarterGui:SetCore("SendNotification", {
        Title = notification.Title;
        Text = notification.Text;
        Duration = notification.Time;
    })
end
function MakeNotifi(notification)
    game.StarterGui:SetCore("SendNotification", {
        Title = notification.Title;
        Text = notification.Text;
        Duration = notification.Time;
    })
end

-- Variáveis e funções para a visualização dos jogadores
local viewEnabled = false
local selectedViewPlayer = nil
local characterAddedConnection = nil

local function toggleView(enabled)
    if enabled then
        if selectedViewPlayer then
            local player = selectedViewPlayer
            if player then
                game.Workspace.CurrentCamera.CameraSubject = player.Character
                if characterAddedConnection then
                    characterAddedConnection:Disconnect()
                end
                characterAddedConnection = player.CharacterAdded:Connect(function(character)
                    game.Workspace.CurrentCamera.CameraSubject = character
                end)
                MakeNotifi({
                    Title = "Visualizando " .. player.Name,
                    Text = "Você está visualizando o jogador: " .. player.Name,
                    Time = 6
                })
            else
                print("Jogador não encontrado.")
                viewEnabled = false
            end
        else
            print("Nenhum jogador selecionado para a visualização.")
            viewEnabled = false
        end
    else
        if characterAddedConnection then
            characterAddedConnection:Disconnect()
            characterAddedConnection = nil
        end
        game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
    end
end

local value = "" -- Variável para armazenar o nome digitado

local function findPlayerByPartialNameOrNickname(partialName)
    value = partialName -- Atualiza a variável com o nome digitado completo
    for _, player in ipairs(game.Players:GetPlayers()) do
        if player.Name:lower():find(partialName:lower(), 1, true) or (player.DisplayName and player.DisplayName:lower():find(partialName:lower(), 1, true)) then
            return player
        end
    end
    return nil
end

-- Adicionando a caixa de texto para entrada do nome ou apelido do jogador
AddTextBox(Main, {
    Name = " دخل اول ثلاث أحرف من اسم اللاعب",
    Default = "",
    PlaceholderText = "دخل اسم اللاعب",
    ClearText = true,
    Callback = function(value)
        if value == "" then
            MakeNotifi({
                Title = "Erro",
                Text = "Nome do jogador não foi digitado.",
                Time = 5
            })
            if viewEnabled then
                toggleView(false)
            end
            return
        end

        selectedViewPlayer = findPlayerByPartialNameOrNickname(value)
        if selectedViewPlayer then
            print("Jogador encontrado: " .. selectedViewPlayer.Name)
            if viewEnabled then
                toggleView(false)
                toggleView(true)
            end
        else
            MakeNotifi({
                Title = "Erro",
                Text = "Nenhum jogador encontrado com esse nome ou apelido.",
                Time = 7
            })
            if viewEnabled then
                toggleView(false)
            end
        end
    end
})

-- Adicionando o toggle para ativar/desativar a visualização
AddToggle(Main, {
    Name = "شاهد | View",
    Default = false,
    Callback = function(enabled)
        viewEnabled = enabled
        toggleView(enabled)
    end
})

-- Conectando eventos de jogador removido
game.Players.PlayerRemoving:Connect(function(player)
    if selectedViewPlayer == player then
        selectedViewPlayer = nil
        if viewEnabled then
            toggleView(false)
            MakeNotifi({
                Title = "Jogador Saiu",
                Text = player.Name .. " saiu do jogo. Visualização desativada.",
                Time = 5
            })
        end
    end
end)

-- Função para manter a câmera no jogador selecionado
local function maintainView()
    while wait() do
        if viewEnabled and selectedViewPlayer then
            local player = selectedViewPlayer
            if player and game.Workspace.CurrentCamera.CameraSubject ~= player.Character then
                game.Workspace.CurrentCamera.CameraSubject = player.Character
            end
        end
    end
end
AddButton(Main, {
  Name = "اختفاء اللاعب",
  Callback = function()
    local args = {
    [1] = "CharacterSizeUp",
    [2] = 6
}
game:GetService("ReplicatedStorage").RE:FindFirstChild("1Clothe1s"):FireServer(unpack(args))
  end
})

AddButton(Main, {
  Name = "إلغاء اختفاء",
  Callback = function()
    local args = {
    [1] = "CharacterSizeUp",
    [2] = 1
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Clothe1s"):FireServer(unpack(args))
  end
})
-- Variável para controlar o estado do Noclip
local noclipEnabled = false
local runService = game:GetService("RunService")

-- Função para definir CanCollide para todas as partes do personagem
local function setCharacterCanCollide(character, canCollide)
    for _, part in ipairs(character:GetDescendants()) do
        if part:IsA("BasePart") then
            part.CanCollide = canCollide
        end
    end
end

-- Função de callback para o botão de alternância de Noclip
local function onNoclipToggle(value)
    noclipEnabled = value
    print("Noclip Enabled:", noclipEnabled)
    
    local player = game.Players.LocalPlayer
    local character = player.Character

    if noclipEnabled then
        -- Inicia um loop para continuamente definir CanCollide
        noclipLoop = runService.Stepped:Connect(function()
            if character then
                setCharacterCanCollide(character, false)
            end
        end)
    else
        -- Desativa o loop e restaura CanCollide
        if noclipLoop then
            noclipLoop:Disconnect()
        end
        if character then
            setCharacterCanCollide(character, true)
        end
    end
end

-- Adiciona o botão de alternância "Noclip"
local Toggle = AddToggle(Main, {
    Name = " اختراق الجدار",
    Default = false,
    Callback = onNoclipToggle
})
AddButton(Main, {
  Name = "مسجل مجاني",
  Callback = function(s)
_G.boomboxb = game:GetObjects('rbxassetid://740618400')[1]
_G.boomboxb.Parent = game:GetService'Players'.LocalPlayer.Backpack
loadstring(_G.boomboxb.Client.Source)() 
loadstring(_G.boomboxb.Server.Source)()
 end
})
local Main = MakeTab({Name = "أشياء في اليد"})

--[[
  Name = "Main" <string> Nome da guia
]]
AddButton(Main, {
  Name = "الكاميرا",
  Callback = function()
    local args = {
    [1] = "PickingTools",
    [2] = "DSLR Camera"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack(args))

  end
})

--[[
  Name = "Botão teste" <string> nome do seu botão
  Callback = function()
    -- funcão do seu botão
  end
]]
AddButton(Main, {
  Name = "الدميه قرد",
  Callback = function()
    local args = {
    [1] = "PickingTools",
    [2] = "BabyMonkey"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack(args))

  end
})

--[[
  Name = "Botão teste" <string> nome do seu botão
  Callback = function()
    -- funcão do seu botão
  end
]]
AddButton(Main, {
  Name = "الكاس",
  Callback = function()
    local args = {
    [1] = "PickingTools",
    [2] = "Trophy"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack(args))

  end
})

--[[
  Name = "Botão teste" <string> nome do seu botão
  Callback = function()
    -- funcão do seu botão
  end
]]
AddButton(Main, {
  Name = "الساله",
  Callback = function()
  local args = {
    [1] = "PickingTools",
    [2] = "ShoppingCart"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack(args))
  
  end
})

--[[
  Name = "Botão teste" <string> nome do seu botão
  Callback = function()
    -- funcão do seu botão
  end
]]
AddButton(Main, {
  Name = "قنابل",
  Callback = function()
    local args = {
    [1] = "PickingTools",
    [2] = "Bomb"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack(args))

  end
})

--[[
  Name = "Botão teste" <string> nome do seu botão
  Callback = function()
    -- funcão do seu botão
  end
]]
AddButton(Main, {
  Name = "لوحه",
  Callback = function()
    local args = {
    [1] = "PickingTools",
    [2] = "Sign"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack(args))

  end
})

--[[
  Name = "Botão teste" <string> nome do seu botão
  Callback = function()
    -- funcão do seu botão
  end
]]
AddButton(Main, {
  Name = "حقيبه",
  Callback = function()
    local args = {
    [1] = "PickingTools",
    [2] = "Paperbag"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack(args))

  end
})

--[[
  Name = "Botão teste" <string> nome do seu botão
  Callback = function()
    -- funcão do seu botão
  end
]]
AddButton(Main, {
  Name = "كنبة",
  Callback = function()
    local args={[1]="PickingTools",[2]="Couch"};game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack(args))
  end
})
AddButton(Main, {
  Name = "رشاش ألوان",
  Callback = function()
   local args = {
    [1] = "PickingTools",
    [2] = "SprayCan"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack(args))
 
  end
})

--[[
  Name = "Botão teste" <string> nome do seu botão
  Callback = function()
    -- funcão do seu botão
  end
]]
AddButton(Main, {
  Name = "كولا",
  Callback = function()
    local args = {
    [1] = "PickingTools",
    [2] = "Coke"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack(args))

  end
})

--[[
  Name = "Botão teste" <string> nome do seu botão
  Callback = function()
    -- funcão do seu botão
  end
]]
local Paragraph = AddParagraph(Main, {"الاسحله"})
AddButton(Main, {
  Name = "سلاح صغير",
  Callback = function()
    local args = {
    [1] = "PickingTools",
    [2] = "Glock"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack(args))

  end
})

--[[
  Name = "Botão teste" <string> nome do seu botão
  Callback = function()
    -- funcão do seu botão
  end
]]
AddButton(Main, {
  Name = "2سلاح صغير",
  Callback = function()
   local args = {
    [1] = "PickingTools",
    [2] = "GlockBrown"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack(args))
 
  end
})

--[[
  Name = "Botão teste" <string> nome do seu botão
  Callback = function()
    -- funcão do seu botão
  end
]]
AddButton(Main, {
  Name = "شودكن",
  Callback = function()
    local args = {
    [1] = "PickingTools",
    [2] = "Shotgun"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack(args))

  end
})

--[[
  Name = "Botão teste" <string> nome do seu botão
  Callback = function()
    -- funcão do seu botão
  end
]]
AddButton(Main, {
  Name = "رشاش",
  Callback = function()
    local args = {
    [1] = "PickingTools",
    [2] = "Assault"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack(args))

  end
})

--[[
  Name = "Botão teste" <string> nome do seu botão
  Callback = function()
    -- funcão do seu botão
  end
]]
AddButton(Main, {
  Name = "سنيابر",
  Callback = function()
    local args = {
    [1] = "PickingTools",
    [2] = "Sniper"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack(args))

  end
})

--[[
  Name = "Botão teste" <string> nome do seu botão
  Callback = function()
    -- funcão do seu botão
  end
]]
local Main = MakeTab({Name = "أكواد سكنات"})

--[[
  Name = "Main" <string> Nome da guia
]]
local section = AddSection(Main, {"باقات ورد"})
AddButton(Main, {
  Name = "ورد اسود",
  Callback = function()
local args = {
    [1] = 12465465333
}

game:GetService("ReplicatedStorage").Remotes.Wear:InvokeServer(unpack(args))

  end
})
AddButton(Main, {
  Name = "ورد احمر",
  Callback = function()
local args = {
    [1] = 86738633187728
}

game:GetService("ReplicatedStorage").Remotes.Wear:InvokeServer(unpack(args))

  end
})
AddButton(Main, {
  Name = "ورد ابيض",
  Callback = function()
local args = {
    [1] = 72175664063418
}

game:GetService("ReplicatedStorage").Remotes.Wear:InvokeServer(unpack(args))

  end
})
AddButton(Main, {
  Name = "ورد وردي",
  Callback = function()
local args = {
    [1] = 12465478536
}

game:GetService("ReplicatedStorage").Remotes.Wear:InvokeServer(unpack(args))

  end
})
local section = AddSection(Main, {"حذاء شيطان"})
AddButton(Main, {
  Name = "حذاء اسود",
  Callback = function()
local args = {
    [1] = 14388004031
}

game:GetService("ReplicatedStorage").Remotes.Wear:InvokeServer(unpack(args))

  end
})
AddButton(Main, {
  Name = "حذاء ابيض",
  Callback = function()
local args = {
    [1] = 14388009243
}

game:GetService("ReplicatedStorage").Remotes.Wear:InvokeServer(unpack(args))

  end
})
AddButton(Main, {
  Name = "حذاء وردي",
  Callback = function()
local args = {
    [1] = 14388006902
}

game:GetService("ReplicatedStorage").Remotes.Wear:InvokeServer(unpack(args))

  end
})
AddButton(Main, {
  Name = "حذاء اسود احمر",
  Callback = function()
local args = {
    [1] = 14388001192
}

game:GetService("ReplicatedStorage").Remotes.Wear:InvokeServer(unpack(args))

  end
})
AddButton(Main, {
  Name = "حذاء احمر واسود",
  Callback = function()
local args = {
    [1] = 14388019333
}

game:GetService("ReplicatedStorage").Remotes.Wear:InvokeServer(unpack(args))

  end
})
local section = AddSection(Main, {"احذيه طويله"})
AddButton(Main, {
  Name = "حذاء طويل اسود",
  Callback = function()
local args = {
    [1] = 11433864064
}

game:GetService("ReplicatedStorage").Remotes.Wear:InvokeServer(unpack(args))

  end
})
AddButton(Main, {
  Name = "حذاء طويل ابيض",
  Callback = function()
local args = {
    [1] = 11111279400
}

game:GetService("ReplicatedStorage").Remotes.Wear:InvokeServer(unpack(args))

  end
})
AddButton(Main, {
  Name = "حذاء طويل احمر وابيض",
  Callback = function()
local args = {
    [1] = 11708887517
}

game:GetService("ReplicatedStorage").Remotes.Wear:InvokeServer(unpack(args))

  end
})
local section = AddSection(Main, {"قفازات طويله"})
AddButton(Main, {
  Name = "قفاز طويل اسود ",
  Callback = function()
local args = {
    [1] = 10789914680
}

game:GetService("ReplicatedStorage").Remotes.Wear:InvokeServer(unpack(args))

  end
})
AddButton(Main, {
  Name = "قفاز طويل احمر",
  Callback = function()
local args = {
    [1] = 15209194774
}

game:GetService("ReplicatedStorage").Remotes.Wear:InvokeServer(unpack(args))

  end
})
AddButton(Main, {
  Name = "قفاز طويل ابيض",
  Callback = function()
local args = {
    [1] = 10789933479
}

game:GetService("ReplicatedStorage").Remotes.Wear:InvokeServer(unpack(args))

  end
})
AddButton(Main, {
  Name = "قفاز طويل ازرق",
  Callback = function()
local args = {
    [1] = 10789945803
}

game:GetService("ReplicatedStorage").Remotes.Wear:InvokeServer(unpack(args))

  end
})
AddButton(Main, {
  Name = "قفاز طويل وردي",
  Callback = function()
local args = {
    [1] = 10789939838
}

game:GetService("ReplicatedStorage").Remotes.Wear:InvokeServer(unpack(args))

  end
})
AddButton(Main, {
  Name = "قفاز طويل أخضر",
  Callback = function()
local args = {
    [1] = 13233318125
}

game:GetService("ReplicatedStorage").Remotes.Wear:InvokeServer(unpack(args))

  end
})
local section = AddSection(Main, {"قفازات قصيره"})
AddButton(Main, {
  Name = "قفاز قصير اسود",
  Callback = function()
local args = {
    [1] = 14915193711
}

game:GetService("ReplicatedStorage").Remotes.Wear:InvokeServer(unpack(args))

  end
})
AddButton(Main, {
  Name = "قفاز قصير ابيض",
  Callback = function()
local args = {
    [1] = 15066901505
}

game:GetService("ReplicatedStorage").Remotes.Wear:InvokeServer(unpack(args))

  end
})
AddButton(Main, {
  Name = "قفاز قصير ازرق",
  Callback = function()
local args = {
    [1] = 10714157708
}

game:GetService("ReplicatedStorage").Remotes.Wear:InvokeServer(unpack(args))

  end
})
AddButton(Main, {
  Name = "قفاز قصير وردي",
  Callback = function()
local args = {
    [1] = 17775444165
}

game:GetService("ReplicatedStorage").Remotes.Wear:InvokeServer(unpack(args))

  end
})
AddButton(Main, {
  Name = "قفاز قصير اخضر",
  Callback = function()
local args = {
    [1] = 10713817180
}

game:GetService("ReplicatedStorage").Remotes.Wear:InvokeServer(unpack(args))

  end
})
local section = AddSection(Main, {"أشواك في الجسم"})
AddButton(Main, {
  Name = "شوك اسود",
  Callback = function()
local args = {
    [1] = 17406577951
}

game:GetService("ReplicatedStorage").Remotes.Wear:InvokeServer(unpack(args))

  end
})
AddButton(Main, {
  Name = "شوك ابيض",
  Callback = function()
local args = {
    [1] = 17406634097
}

game:GetService("ReplicatedStorage").Remotes.Wear:InvokeServer(unpack(args))

  end
})
AddButton(Main, {
  Name = "شوك اسود في جميع أجزاء الجسم",
  Callback = function()
local args = {
    [1] = 13463285148
}

game:GetService("ReplicatedStorage").Remotes.Wear:InvokeServer(unpack(args))

  end
})
local section = AddSection(Main, {"جايكتات اولاد"})
AddButton(Main, {
  Name = "جاكيت اسود",
  Callback = function()
local args = {
    [1] = 9048321833
}

game:GetService("ReplicatedStorage").Remotes.Wear:InvokeServer(unpack(args))

  end
})
AddButton(Main, {
  Name = "جاكيت اسود مزخرف ابيض",
  Callback = function()
local args = {
    [1] = 15154273975
}

game:GetService("ReplicatedStorage").Remotes.Wear:InvokeServer(unpack(args))

  end
})
local section = AddSection(Main, {"جايكتات بنوتات"})
AddButton(Main, {
  Name = "جاكيت اسود",
  Callback = function()
local args = {
    [1] = 14900095685
}

game:GetService("ReplicatedStorage").Remotes.Wear:InvokeServer(unpack(args))

  end
})
AddButton(Main, {
  Name = "جاكيت ابيض",
  Callback = function()
local args = {
    [1] = 14849843673
}

game:GetService("ReplicatedStorage").Remotes.Wear:InvokeServer(unpack(args))

  end
})
local Main = MakeTab({Name = "تخريب ماب"})  
AddSection(Main, {"تخريب يطلع بس الك"})
AddButton(Main, {
  Name = "تخريب",
  Callback = function()
    local s = Instance.new("Sky")
    s.Name = "Sky"
    s.Parent = game.Lighting

    local skyboxID = 94946856358988
    local skyboxURL = "http://www.roblox.com/asset/?id="..skyboxID

    s.SkyboxBk = skyboxURL
    s.SkyboxDn = skyboxURL
    s.SkyboxFt = skyboxURL
    s.SkyboxLf = skyboxURL
    s.SkyboxRt = skyboxURL
    s.SkyboxUp = skyboxURL

    game.Lighting.TimeOfDay = "12:00:00"
  end
})
AddButton(Main, {
  Name = "تخريب",
  Callback = function()
  local decalID = 94946856358988
function exPro(root)
   for _, v in pairs(root:GetChildren()) do
      if v:IsA("Decal") and v.Texture ~= "http://www.roblox.com/asset/?id="..decalID then
         v.Parent = nil
      elseif v:IsA("BasePart") then
         v.Material = "Plastic"
         v.Transparency = 0
         for _, face in ipairs({"Front", "Back", "Right", "Left", "Top", "Bottom"}) do
            local d = Instance.new("Decal", v)
            d.Texture = "http://www.roblox.com/asset/?id="..decalID
            d.Face = face
         end
      end
      exPro(v)
   end
end

function asdf(root)
   for _, v in pairs(root:GetChildren()) do
      asdf(v)
   end
end

exPro(game.Workspace)
asdf(game.Workspace)
  end
})
AddButton(Main, {
  Name = "تخريب",
  Callback = function()
  -- Configuration --
local Message = "THIS GAME HAS BEEN HACKED BY CONCHKIDD"
local mes2text = "YOU ALL MUST PERISH IN MY FIRE OF DEATH!"

-- Don't touch unless you know what You're doing --

local mes = Instance.new("Hint")
mes.Parent = workspace
mes.Text = Message
game.Lighting:ClearAllChildren()
game.Lighting.FogEnd = 100
game.Lighting.FogColor = Color3.new(0, 0, 0)
local sound = Instance.new("Sound")
sound.Parent = workspace
sound.Looped = true
sound.PlaybackSpeed = 0.3
sound.Volume = 5
sound.SoundId = "rbxassetid://1842908121"
sound:Play()
local mes2 = Instance.new("Message")
mes2.Parent = workspace
mes2.Text = mes2text
for i, v in pairs(workspace:GetDescendants()) do
	if v:IsA("BasePart") and v.Parent:IsA("Model") then
		local outline = Instance.new("SelectionBox")
		v.Name = Message
		outline.Parent = v
		outline.Adornee = v
		outline.Color3 = Color3.new(1, 1, 1)
		v.Color = Color3.new(0, 0, 0)
		local fire = Instance.new("Fire")
		fire.Parent = v
		fire.Size = 100
		fire.Color = Color3.new(1, 1, 1)
		local sky = Instance.new("Sky")
		sky.CelestialBodiesShown = false
		sky.Parent = game.Lighting
		sky.SkyboxUp = "http://www.roblox.com/asset/?id=99915080584370"
		sky.SkyboxBk = "http://www.roblox.com/asset/?id=99915080584370"
		sky.SkyboxDn = "http://www.roblox.com/asset/?id=99915080584370"
		sky.SkyboxRt = "http://www.roblox.com/asset/?id=99915080584370"
		sky.SkyboxLf = "http://www.roblox.com/asset/?id=99915080584370"
		sky.SkyboxFt = "http://www.roblox.com/asset/?id=99915080584370"
		local bill = Instance.new("BillboardGui")
		local Text = Instance.new("TextLabel")
		bill.Parent = v
		bill.Adornee = v
		bill.Size = UDim2.new(0, 200, 0, 200)
		Text.Parent = bill
		Text.Size = UDim2.new(0, 200, 0, 200)
		Text.BackgroundTransparency = 1
		Text.TextScaled = false
		Text.TextSize = 30
		Text.TextColor3 = Color3.new(1, 0, 0.0156863)
		Text.TextTransparency = 0
		Text.Font = Enum.Font.Cartoon
		Text.Text = Message
	end
end
  end
})
local Main = MakeTab({Name = "تخريب"})

--[[
  Name = "Main" <string> Nome da guia
]]
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local playerNames = {}
for _, plr in ipairs(Players:GetPlayers()) do
    if plr ~= LocalPlayer then
        table.insert(playerNames, plr.Name)
    end
end

local selectedPlayerName = nil

local Dropdown = AddDropdown(Main, {
    Name = "اختر لاعب",
    Options = playerNames,
    Default = playerNames[1],
    Callback = function(Value)
        selectedPlayerName = Value
    end
})

AddButton(Main, {
    Name = "قتل بالسفينه",
    Callback = function()
        if not selectedPlayerName then
            warn("لم يتم اختيار لاعب")
            return
        end

        MakeNotifi({
            Title = "تم التشغيل",
            Text = "لا تفعل الامر اكثر من مرا",
            Time = 5
        })

        local targetPlayer = Players:FindFirstChild(selectedPlayerName)
        if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
            local humanoid = character:WaitForChild("Humanoid")
            local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

            local originalPosition = humanoidRootPart.Position
            local originalAnchoredState = humanoidRootPart.Anchored

            humanoidRootPart.CFrame = CFrame.new(634.18, -4.00, 1839.65)
            wait(0.5)

            local args = {
                "PickingBoat",
                "MilitaryBoatFree"
            }
            game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Ca1r"):FireServer(unpack(args))
            wait(1.5)

            local function sitInBoat()
                local vehicle = workspace.Vehicles:FindFirstChild(LocalPlayer.Name .. "Car")
                if not vehicle then return end

                local vehicleSeat = vehicle.Body:FindFirstChild("VehicleSeat")
                if not vehicleSeat then return end

                humanoidRootPart.Anchored = false
                humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
                wait(0.2)

                humanoidRootPart.CFrame = vehicleSeat.CFrame * CFrame.new(0, 0.5, 0)
                wait(0.2)

                humanoid.Sit = true
                firetouchinterest(humanoidRootPart, vehicleSeat, 0)
                firetouchinterest(humanoidRootPart, vehicleSeat, 1)
                wait(0.5)

                if humanoid.SeatPart ~= vehicleSeat then
                    humanoidRootPart.CFrame = vehicleSeat.CFrame * CFrame.new(0, 0.5, 0)
                    humanoid.Sit = true
                    wait(0.5)
                end
            end

            sitInBoat()
            wait(0.5)

            local targetPosition = targetPlayer.Character.HumanoidRootPart.Position
            local vehicle = workspace.Vehicles:FindFirstChild(LocalPlayer.Name .. "Car")

            if vehicle then
                vehicle:SetPrimaryPartCFrame(CFrame.new(targetPosition + Vector3.new(0, -2, 0)))
                humanoidRootPart.CFrame = CFrame.new(targetPosition + Vector3.new(0, 5, 0))

                local crazyStart = tick()
                while tick() - crazyStart < 2 do
                    local offset = Vector3.new(
                        math.random(-25, 12),
                        math.random(-13, 10),
                        math.random(-10, 18)
                    )
                    vehicle:SetPrimaryPartCFrame(CFrame.new(targetPosition + Vector3.new(0, -2, 0) + offset))
                    wait(0.05)
                end
            end

            local targetDestination = Vector3.new(-86.00, -224.27, 34.57)
            if vehicle then
                vehicle:SetPrimaryPartCFrame(CFrame.new(targetDestination))
                humanoidRootPart.CFrame = CFrame.new(targetDestination + Vector3.new(0, 5, 0))
            end

            wait(1)
            humanoidRootPart.Anchored = false
            humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)

            if vehicle then
                vehicle:Destroy()
            end

            wait(0.5)
            humanoidRootPart.CFrame = CFrame.new(originalPosition)
            humanoidRootPart.Anchored = originalAnchoredState
            humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)

            local finalArgs = {
                [1] = "PickingBoat",
                [2] = "MilitaryBoatFree"
            }
            game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Ca1r"):FireServer(unpack(finalArgs))

            wait(0.5)
            local deleteArgs = {
                [1] = "DeleteAllVehicles"
            }
            game:GetService("ReplicatedStorage").RE:FindFirstChild("1Ca1r"):FireServer(unpack(deleteArgs))
        else
            warn("اللاعب غير موجود أو لا يملك الشخصية")
        end
    end
})
local section = AddSection(Main, {"قتل باص"})
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local SelectedPlayerName = nil

local playerNames = {}
for _, player in ipairs(Players:GetPlayers()) do
    if player ~= LocalPlayer then
        table.insert(playerNames, player.Name)
    end
end

local Dropdown = AddDropdown(Main, {
    Name = "اختر لاعب",
    Options = playerNames,
    Default = playerNames[1] or "",
    Callback = function(Value)
        SelectedPlayerName = Value
    end
})

AddButton(Main, {
    Name = "قتل بالباص",
    Callback = function()
        if not SelectedPlayerName then
            warn("اختر لاعبًا أولًا")
            return
        end

        local player = LocalPlayer
        local targetPlayer = Players:FindFirstChild(SelectedPlayerName)
        if not (targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart")) then
            warn("اللاعب غير موجود أو لم يُحمّل")
            return
        end

        local character = player.Character or player.CharacterAdded:Wait()
        local humanoid = character:WaitForChild("Humanoid")
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

        local originalPosition = humanoidRootPart.Position
        local originalAnchoredState = humanoidRootPart.Anchored

        humanoidRootPart.CFrame = CFrame.new(1082.86, 76.00, -1125.20)
        wait(0.3)

        local spawnArgs = {
            [1] = "PickingCar",
            [2] = "SchoolBus"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Ca1r"):FireServer(unpack(spawnArgs))
        wait(3.5)

        local function sitInBus()
            local vehicleName = player.Name .. "Car"
            local vehicle = workspace.Vehicles:FindFirstChild(vehicleName)
            if not vehicle then return false end

            local vehicleSeat = vehicle.Body:FindFirstChild("VehicleSeat")
            if not vehicleSeat then return false end

            humanoidRootPart.Anchored = false
            humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)

            humanoidRootPart.CFrame = vehicleSeat.CFrame * CFrame.new(0, 0.3, 0)
            wait(0.15)

            humanoid.Sit = true
            firetouchinterest(humanoidRootPart, vehicleSeat, 0)
            firetouchinterest(humanoidRootPart, vehicleSeat, 1)
            wait(0.3)

            if humanoid.SeatPart ~= vehicleSeat then
                humanoidRootPart.CFrame = vehicleSeat.CFrame * CFrame.new(0, 0.3, 0)
                humanoid.Sit = true
                wait(0.3)
            end

            return humanoid.SeatPart == vehicleSeat
        end

        if not sitInBus() then return end

        local targetPosition = targetPlayer.Character.HumanoidRootPart.Position
        local vehicleName = player.Name .. "Car"
        local vehicle = workspace.Vehicles:FindFirstChild(vehicleName)

        if vehicle then
            local crazyStart = tick()
            while tick() - crazyStart < 2.5 do
                local offset = Vector3.new(
                    math.random(-25, 12),
                        math.random(-13, 10),
                        math.random(-10, 18)
                )
                vehicle:SetPrimaryPartCFrame(CFrame.new(targetPosition + Vector3.new(0, -2, 0) + offset))
                wait(0.04)
            end
        end

        local targetDestination = Vector3.new(-86.00, -224.27, 34.57)
        if vehicle then
            vehicle:SetPrimaryPartCFrame(CFrame.new(targetDestination))
            humanoidRootPart.CFrame = CFrame.new(targetDestination + Vector3.new(0, 3, 0))
        end

        wait(0.3)
        humanoidRootPart.Anchored = false
        humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)

        local deleteArgs = {
            [1] = "DeleteAllVehicles"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Ca1r"):FireServer(unpack(deleteArgs))

        wait(0.2)
        humanoidRootPart.CFrame = CFrame.new(originalPosition)
        humanoidRootPart.Anchored = originalAnchoredState
        humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
    end
})
local section = AddSection(Main, {"سحب باص"})
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local SelectedPlayerName = nil

local playerNames = {}
for _, player in ipairs(Players:GetPlayers()) do
    if player ~= LocalPlayer then
        table.insert(playerNames, player.Name)
    end
end

local Dropdown = AddDropdown(Main, {
    Name = "اختر لاعب",
    Options = playerNames,
    Default = playerNames[1] or "",
    Callback = function(Value)
        SelectedPlayerName = Value
    end
})

AddButton(Main, {
    Name = "سحب بالباص",
    Callback = function()
        if not SelectedPlayerName then
            warn("اختر لاعبًا أولًا")
            return
        end

        local player = LocalPlayer
        local targetPlayer = Players:FindFirstChild(SelectedPlayerName)
        if not (targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart")) then
            warn("اللاعب غير موجود أو لم يُحمّل")
            return
        end

        local character = player.Character or player.CharacterAdded:Wait()
        local humanoid = character:WaitForChild("Humanoid")
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

        local originalPosition = humanoidRootPart.Position
        local originalAnchoredState = humanoidRootPart.Anchored

        humanoidRootPart.CFrame = CFrame.new(1082.86, 76.00, -1125.20)
        wait(0.3)

        local spawnArgs = {
            [1] = "PickingCar",
            [2] = "SchoolBus"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Ca1r"):FireServer(unpack(spawnArgs))
        wait(3.5)

        local function sitInBus()
            local vehicleName = player.Name .. "Car"
            local vehicle = workspace.Vehicles:FindFirstChild(vehicleName)
            if not vehicle then return false end

            local vehicleSeat = vehicle.Body:FindFirstChild("VehicleSeat")
            if not vehicleSeat then return false end

            humanoidRootPart.Anchored = false
            humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)

            humanoidRootPart.CFrame = vehicleSeat.CFrame * CFrame.new(0, 0.3, 0)
            wait(0.15)

            humanoid.Sit = true
            firetouchinterest(humanoidRootPart, vehicleSeat, 0)
            firetouchinterest(humanoidRootPart, vehicleSeat, 1)
            wait(0.3)

            if humanoid.SeatPart ~= vehicleSeat then
                humanoidRootPart.CFrame = vehicleSeat.CFrame * CFrame.new(0, 0.3, 0)
                humanoid.Sit = true
                wait(0.3)
            end

            return humanoid.SeatPart == vehicleSeat
        end

        if not sitInBus() then return end

        local targetPosition = targetPlayer.Character.HumanoidRootPart.Position
        local vehicleName = player.Name .. "Car"
        local vehicle = workspace.Vehicles:FindFirstChild(vehicleName)

        if vehicle then
            local crazyStart = tick()
            while tick() - crazyStart < 2.5 do
                local offset = Vector3.new(
                    math.random(-25, 12),
                        math.random(-13, 10),
                        math.random(-10, 18)
                )
                vehicle:SetPrimaryPartCFrame(CFrame.new(targetPosition + Vector3.new(0, -2, 0) + offset))
                wait(0.04)
            end
        end

        if vehicle then
            vehicle:SetPrimaryPartCFrame(CFrame.new(originalPosition))
            humanoidRootPart.CFrame = CFrame.new(originalPosition + Vector3.new(0, 3, 0))
        end

        wait(0.3)
        humanoidRootPart.Anchored = false
        humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)

        local deleteArgs = {
            [1] = "DeleteAllVehicles"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Ca1r"):FireServer(unpack(deleteArgs))

        wait(0.2)
        humanoidRootPart.CFrame = CFrame.new(originalPosition)
        humanoidRootPart.Anchored = originalAnchoredState
        humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
    end
})
local section = AddSection(Main, {"قتل سفينه ڪبيره"})
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local playerNames = {}
for _, plr in ipairs(Players:GetPlayers()) do
    if plr ~= LocalPlayer then
        table.insert(playerNames, plr.Name)
    end
end

local selectedPlayerName = nil

local Dropdown = AddDropdown(Main, {
    Name = "اختر لاعب",
    Options = playerNames,
    Default = playerNames[1],
    Callback = function(Value)
        selectedPlayerName = Value
    end
})

AddButton(Main, {
    Name = "قتل بالسفينه الكبيره",
    Callback = function()
        if not selectedPlayerName then
            warn("لم يتم اختيار لاعب")
            return
        end

        MakeNotifi({
            Title = "تم التشغيل",
            Text = "لا تفعله اكثر من مرا",
            Time = 5
        })

        local targetPlayer = Players:FindFirstChild(selectedPlayerName)
        if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
            local humanoid = character:WaitForChild("Humanoid")
            local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

            local originalPosition = humanoidRootPart.Position
            local originalAnchoredState = humanoidRootPart.Anchored

            humanoidRootPart.CFrame = CFrame.new(634.18, -4.00, 1839.65)
            wait(0.5)

            local args = {
                "PickingBoat",
                "PirateFree"
            }
            game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Ca1r"):FireServer(unpack(args))
            wait(1.5)

            local function sitInBoat()
                local vehicleSeat = workspace.Vehicles:FindFirstChild("doctonbcCar")
                if not vehicleSeat then return end

                vehicleSeat = vehicleSeat.Body:FindFirstChild("VehicleSeat")
                if not vehicleSeat then return end

                humanoidRootPart.Anchored = false
                humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
                wait(0.2)

                humanoidRootPart.CFrame = vehicleSeat.CFrame * CFrame.new(0, 0.5, 0)
                wait(0.2)

                humanoid.Sit = true
                firetouchinterest(humanoidRootPart, vehicleSeat, 0)
                firetouchinterest(humanoidRootPart, vehicleSeat, 1)
                wait(0.5)

                if humanoid.SeatPart ~= vehicleSeat then
                    humanoidRootPart.CFrame = vehicleSeat.CFrame * CFrame.new(0, 0.5, 0)
                    humanoid.Sit = true
                    wait(0.5)
                end
            end

            sitInBoat()
            wait(0.5)

            local targetPosition = targetPlayer.Character.HumanoidRootPart.Position
            local vehicle = workspace.Vehicles:FindFirstChild(LocalPlayer.Name .. "Car")

            if vehicle then
                vehicle:SetPrimaryPartCFrame(CFrame.new(targetPosition + Vector3.new(0, -2, 0)))
                humanoidRootPart.CFrame = CFrame.new(targetPosition + Vector3.new(0, 5, 0))

                local crazyStart = tick()
                while tick() - crazyStart < 2 do
                    local offset = Vector3.new(
                        math.random(-25, 12),
                        math.random(-13, 10),
                        math.random(-10, 18)
                    )
                    vehicle:SetPrimaryPartCFrame(CFrame.new(targetPosition + Vector3.new(0, -2, 0) + offset))
                    wait(0.05)
                end
            end

            local targetDestination = Vector3.new(-86.00, -224.27, 34.57)
            if vehicle then
                vehicle:SetPrimaryPartCFrame(CFrame.new(targetDestination))
                humanoidRootPart.CFrame = CFrame.new(targetDestination + Vector3.new(0, 5, 0))
            end

            wait(0.5)
            humanoidRootPart.Anchored = false
            humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)

            if vehicle then
                vehicle:Destroy()
            end

            wait(0.5)
            humanoidRootPart.CFrame = CFrame.new(originalPosition)
            humanoidRootPart.Anchored = originalAnchoredState
            humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)

            local finalArgs = {
                [1] = "PickingBoat",
                [2] = "PirateFree"
            }
            game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Ca1r"):FireServer(unpack(finalArgs))

            wait(0.5)
            local deleteArgs = {
                [1] = "DeleteAllVehicles"
            }
            game:GetService("ReplicatedStorage").RE:FindFirstChild("1Ca1r"):FireServer(unpack(deleteArgs))
        else
            warn("اللاعب غير موجود أو لا يملك الشخصية")
        end
    end
})
local Main = MakeTab({Name = "رحمه"})

--[[
  Name = "Main" <string> Nome da guia
]]
local section = AddSection(Main, {"قتل بس قبله اخذ قنفة"})
AddButton(Main, {
  Name = "كنبة",
  Callback = function()
    local args={[1]="PickingTools",[2]="Couch"};game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack(args))
  end
})

-- Serviços necessários
local playerService = game:GetService('Players')
local runService = game:GetService('RunService')
local player = playerService.LocalPlayer

-- Variáveis globais
local selectedPlayer = nil
local selectedKillAdvancedPlayer = nil
local couchEquipped = false
local playerDropdownV13

-- Função para obter a lista de jogadores
local function getPlayerList()
    local playerList = {}
    for _, player in ipairs(playerService:GetPlayers()) do
        if player ~= playerService.LocalPlayer then
            table.insert(playerList, player.Name)
        end
    end
    return playerList
end

-- Função para atualizar o dropdown
local function updateDropdown(dropdown)
    UpdateDropdown(dropdown, getPlayerList())
end

-- Função para encontrar jogador por nome
local function gplr(String)
    local strl = String:lower()
    local Found = {}
    for _, v in pairs(playerService:GetPlayers()) do
        if v.Name:lower():sub(1, #strl) == strl then
            table.insert(Found, v)
        end
    end
    return Found
end

-- Função para flingar jogador (V13)
local function flingPlayer(targetName)
    local Target = gplr(targetName)
    if Target[1] then
        Target = Target[1]
        
        local Thrust = Instance.new('BodyThrust', player.Character.HumanoidRootPart)
        Thrust.Force = Vector3.new(999, 999, 999)
        Thrust.Name = "FlingForce"
        repeat
            player.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame
            Thrust.Location = Target.Character.HumanoidRootPart.Position
            runService.Heartbeat:Wait()
        until not Target.Character:FindFirstChild("Head")
    end
end

-- Interface para Fling V13
playerDropdownV13 = AddDropdown(Main, {
    Name = "اختار الاعب الي تريده",
    Default = "",
    Options = getPlayerList(),
    Callback = function(value)
        selectedPlayer = value
    end
})

AddButton(Main, {
    Name = "قتل الاعب",
    Callback = function()
        if selectedPlayer then
            flingPlayer(selectedPlayer)
        end
    end
})

-- Atualiza a lista de jogadores quando os jogadores entram ou saem do jogo
playerService.PlayerAdded:Connect(function()
    updateDropdown(playerDropdownV13)
end)

playerService.PlayerRemoving:Connect(function()
    updateDropdown(playerDropdownV13)
end)

-- Atualiza a lista de jogadores ao iniciar o script
updateDropdown(playerDropdownV13)

-- Serviços necessários
local playerService = game:GetService('Players')
local runService = game:GetService('RunService')
local localPlayer = playerService.LocalPlayer

-- Variáveis globais
local flingV14Toggle = false
local currentPlayerIndex = 1
local flingV14Connection
local players

-- Função para teleportar para a coordenada específica
local function teleportToCoordinate()
    local teleportPosition = Vector3.new(-58, 54, -183) -- Coordenada para onde você deseja teleportar
    if localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart") then
        localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(teleportPosition)
    end
end

-- Função para flingar jogadores em sequência
local function flingPlayersInSequence()
    if flingV14Toggle then
        -- Obtém a lista de jogadores uma vez
        players = playerService:GetPlayers()
        
        -- Reseta o índice do jogador atual
        currentPlayerIndex = 1
        
        -- Looping de teleportes em cada jogador
        flingV14Connection = runService.Heartbeat:Connect(function()
            -- Ignora o jogador local
            while players[currentPlayerIndex] == localPlayer do
                currentPlayerIndex = currentPlayerIndex + 1
                if currentPlayerIndex > #players then
                    currentPlayerIndex = 1
                end
            end
            
            local targetPlayer = players[currentPlayerIndex]
            if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                if localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    localPlayer.Character.HumanoidRootPart.CFrame = targetPlayer.Character.HumanoidRootPart.CFrame

                    -- Verifica se o jogador alvo está sentado
                    if targetPlayer.Character:FindFirstChild("Humanoid") and targetPlayer.Character.Humanoid.SeatPart then
                        teleportToCoordinate()
                        
                        -- Espera 3 segundos antes de ir para o próximo jogador
                        wait(5)
                        currentPlayerIndex = currentPlayerIndex + 1
                        
                        if currentPlayerIndex > #players then
                            currentPlayerIndex = 1
                        end
                    end
                end
            end
        end)
    end
end

-- Função de callback para o toggle
local function onFlingV14Toggle(value)
    flingV14Toggle = value
    if flingV14Toggle then
        flingPlayersInSequence()
    else
        -- Desconecta as conexões quando o toggle é desativado
        if flingV14Connection then
            flingV14Connection:Disconnect()
            flingV14Connection = nil
        end
    end
end

-- Adiciona o Toggle para ativar/desativar o Fling V14  
local Paragraph = AddParagraph(Main, {" bang - face - bang  "})
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local function fetchPlayerNames()
    local namesList = {}
    for _, plr in ipairs(Players:GetPlayers()) do
        if plr ~= Players.LocalPlayer then 
            table.insert(namesList, plr.Name)
        end
    end
    return namesList
end

local dropdown = AddDropdown(Main, {
    Name = "Select a player",
    Default = "...",
    Options = fetchPlayerNames(),
    Callback = function(Value)
        if Value ~= "" then
            getgenv().selectedPlayer = Value
        end
    end
})

local function createBangToggle(name, yOffset, faceBang)
    local bangActive = false
    local connection
    local togglePosition = false

    AddToggle(Main, {
        Name = name,
        Default = false,
        Callback = function(Value)
            bangActive = Value

            local player = Players.LocalPlayer
            local char = player.Character
            if not char then return end

            local humanoid = char:FindFirstChildOfClass("Humanoid")
            if not humanoid then return end

            if Value then
                humanoid.PlatformStand = true

                if connection then connection:Disconnect() end

                connection = RunService.Heartbeat:Connect(function()
                    if bangActive and getgenv().selectedPlayer then
                        local targetPlayer = Players:FindFirstChild(getgenv().selectedPlayer)
                        if targetPlayer and targetPlayer.Character and targetPlayer.Character.PrimaryPart then
                            local targetHead = targetPlayer.Character:FindFirstChild("Head")
                            if targetHead and char.PrimaryPart then
                                local offset = togglePosition and 1 or 4
                                if faceBang then
                                    char:SetPrimaryPartCFrame(targetHead.CFrame * CFrame.new(0, 1, -offset) * CFrame.Angles(0, math.rad(180), 0))
                                else
                                    char:SetPrimaryPartCFrame(targetHead.CFrame * CFrame.new(0, yOffset, offset) * CFrame.Angles(0, 0, 0))
                                end
                                togglePosition = not togglePosition
                                wait(1)
                            end
                        end
                    end
                end)
            else
                humanoid.PlatformStand = false
                if connection then
                    connection:Disconnect()
                    connection = nil
                end
            end
        end    
    })
end

createBangToggle("Bang", -1, false)
createBangToggle("Bang 2", -1.5, false)
createBangToggle("الوجه Bang", 1, true)
createBangToggle("الوجه Bang 2", 1, true)
local Main = MakeTab({Name = "الاغاني"})

--[[
  Name = "Main" <string> Nome da guia
]]
AddTextBox(Main, {
  Name = "☠️ادخل كود الاغنية☠️",
  Default = "",
  PlaceholderText = "☠️ادخل الاغنيه سكيت بورد☠️",
  ClearText = true,
  Callback = function(Value)
local args1 = {
            [1] = "SkateBoard"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1NoMoto1rVehicle1s"):FireServer(unpack(args1))
 
        -- Replacing the static value with the input from the textbox
        local args2 = {
            [1] = "PickingScooterMusicText",
            [2] = Value -- Here, we use the textbox value to replace 35935204
        }
        game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
        
end 
}) 

AddButton(Main, {
  Name = "صوت مزعج عالي جدآ",
  Callback = function()
    	local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "7764369437"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
  end
})

AddButton(Main, {
  Name = "اسد الله الغالب",
  Callback = function()
    	local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "98224127892587"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
  end
})

AddButton(Main, {
  Name = "علي علي مولا",
  Callback = function()
    	local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "100225620996080"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
  end
})

AddButton(Main, {
  Name = "FUNk1",
  Callback = function()
    	local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "18841888868"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
  end
})

AddButton(Main, {
  Name = "FUNK2",
  Callback = function()
    	local args = {
    [1] = "SkateBoard"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "17422126596"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
  end
})

AddButton(Main, {
  Name = "FUNk3",
  Callback = function()
    	local args = {
    [1] = "SkateBoard"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "120889371113999"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
  end
})

AddButton(Main, {
  Name = "FUNK4",
  Callback = function()
    	local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "103147683104491"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
  end
})

AddButton(Main, {
  Name = "5FUNK",
  Callback = function()
    	local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "111668097052966"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
  end
})

AddButton(Main, {
  Name = "نفس  اغنيه رقم 5 بس هاي بطيئ",
  Callback = function()
    	local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "89382548135644"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
  end
})

AddButton(Main, {
  Name = "FUNK6",
  Callback = function()
    	local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "86271123924168"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
  end
})

AddButton(Main, {
  Name = "مزعج وعالي جدآ",
  Callback = function()
    	local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "18940400619"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
  end
})

AddButton(Main, {
  Name = "اغنية عربية حلوه",
  Callback = function()
    	local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "93620598835551"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
  end
})

AddButton(Main, {
  Name = "اغنية عربية 2",
  Callback = function()
    	local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "1836685732"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
  end
})

AddButton(Main, {
  Name = "اغنية عربية 3",
  Callback = function()
    	local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "106633496198864"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
  end
})

AddButton(Main, {
  Name = "عراقي حزين",
  Callback = function()
    	local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "80039364766636"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
  end
})

AddButton(Main, {
  Name = "عزف حزين",
  Callback = function()
    	local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "135308045"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
  end
})

AddButton(Main, {
  Name = "شمشون",
  Callback = function()
    	local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "133188753831517"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
  end
})

AddButton(Main, {
  Name = "دبكه",
  Callback = function()
    	local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "90807238125839"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
  end
})
local Main = MakeTab({Name = "كيم باسات"})
AddButton(Main, {
  Name = "شات Premium",
  Callback = function()
MakeNotifi({
  Title = "TRADEX",
  Text = "تم صار عندك  شات نجمه حقيقي",
  Time = 3
})
 game:GetService("Players").LocalPlayer.PlayersBag.SilverPass.Value = true
  end
})
AddButton(Main, {
  Name = "نجمة",
  Callback = function()
 MakeNotifi({
  Title = "TRADEX",
  Text = "تم صار عندك نجمه",
  Time = 3
})
game:GetService("Players").LocalPlayer.PlayersBag.SilverPass.Value = true
  end
})
AddButton(Main, {
  Name = "نجمه مال اطفال",
  Callback = function()
 MakeNotifi({
  Title = "TRADEX",
  Text = "تم صار عندك  نجمه مال اطفال ",
  Time = 3
})
 game:GetService("Players").LocalPlayer.PlayersBag.FacePass.Value = true
  end
})
AddButton(Main, {
  Name = "اغاني",
  Callback = function()
MakeNotifi({
  Title = "TRADEX",
  Text = "تم صار عندك  اغاني",
  Time = 3
})
 game:GetService("Players").LocalPlayer.PlayersBag.MusicPass.Valve = true
  end
})
AddButton(Main, {
  Name = "Fire",
  Callback = function()
MakeNotifi({
  Title = "TRADEX",
  Text = "تم صار عندك  Fire",
  Time = 3
})
 game:GetService("Players").LocalPlayer.PlayersBag.FirePass.Valve = true
  end
})
local Main = MakeTab({Name = "تلبورت - TP"})

--[[
  Name = "Main" <string> Nome da guia
]]
AddButton(Main, {
  Name = "أداه تنقل",
  Callback = function()
    local player = game.Players.LocalPlayer
    local mouse = player:GetMouse()

    local function createTeleportTool()
        local tool = Instance.new("Tool")
        tool.RequiresHandle = false
        tool.Name = "أداه غوكو"

        tool.Activated:Connect(function()
            local hitPos = mouse.Hit.p + Vector3.new(0, 2.5, 0)
            local pos = CFrame.new(hitPos)
            player.Character.HumanoidRootPart.CFrame = pos
        end)

        tool.Parent = player.Backpack
    end

    -- Cria a ferramenta inicialmente
    createTeleportTool()

    -- Adiciona a ferramenta novamente quando o personagem é reaparecido
    player.CharacterAdded:Connect(function()
        wait(0.1) -- Espera um curto período de tempo para garantir que o inventário seja carregado
        createTeleportTool()
    end)
  end
})

AddButton(Main, {
    Name = "لوحة 1",
    Callback = function()
        local plr = game.Players.LocalPlayer
        local char = plr.Character
        local hrp = char:FindFirstChild("HumanoidRootPart")

        if hrp then
            hrp.CFrame = CFrame.new(-242.68215942382812, 89.68680572509766, -549.6495361328125)
        else
            warn("HumanoidRootPart not found")
        end
    end
})

AddButton(Main, {
    Name = "لوحة 2",
    Callback = function()
        local plr = game.Players.LocalPlayer
        local char = plr.Character
        local hrp = char:FindFirstChild("HumanoidRootPart")

        if hrp then
            hrp.CFrame = CFrame.new(-630.480712890625, 26.586822509765625, 365.14093017578125)
        else
            warn("HumanoidRootPart not found")
        end
    end
})

-- Function to teleport to Teleport
local function teleportToGasStation()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(192, 4, 272)
end

AddButton(Main, {
    Name = "ورا البيوت",
    Description = "",
    Callback = teleportToGasStation
})

-- Function to teleport to Teleport
local function teleportToCenter()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(136, 4, 117)
end

AddButton(Main, {
    Name = "قدام البيوت",
    Description = "",
    Callback = teleportToCenter
})

-- Function to teleport to Criminal
local function teleportToCriminal()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-119, -28, 235)
end

AddButton(Main, {
    Name = "مكان أسلحة",
    Description = "Teleporta para as coordenadas do Criminal",
    Callback = teleportToCriminal
})

-- Function to teleport to House Abandoned
local function teleportToHouseAbandoned()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(986, 4, 63)
end

AddButton(Main, {
    Name = "بيت قفير",
    Description = "Teleporta para as coordenadas da Casa Abandonada",
    Callback = teleportToHouseAbandoned
})

-- Function to teleport to Portal Agency
local function teleportToPortalAgency()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(672, 4, -296)
end

AddButton(Main, {
    Name = "مكان سري",
    Description = "Teleporta para as coordenadas do Portal da Agência",
    Callback = teleportToPortalAgency
})

-- Function to teleport to Secret Location
local function teleportToSecretLocation()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(505, -75, 143)
end

AddButton(Main, {
    Name = "جو الأرض",
    Description = "Teleporta para as coordenadas do Local Secreto",
    Callback = teleportToSecretLocation
})

-- Function to teleport to School
local function teleportToSchool()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-312, 4, 211)
end

AddButton(Main, {
    Name = "مدرسة",
    Description = "Teleporta para as coordenadas da Escola",
    Callback = teleportToSchool
})

-- Function to teleport to Brooks Diner
local function teleportToBrooksDiner()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(161, 8, 52)
end

AddButton(Main, {
    Name = "قهوة",
    Description = "Teleporta para as coordenadas do Brooks Diner",
    Callback = teleportToBrooksDiner
})

local function teleportToBrooksDiner()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-26, 4, -23)
end

AddButton(Main, {
    Name = "البداية",
    Description = "Teleporta para as coordenadas do Brooks Diner",
    Callback = teleportToBrooksDiner
})


-- Function to teleport to Hospital
local function teleportToHospital()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-309, 4, 71)
end

AddButton(Main, {
    Name = "مستشفى",
    Description = "Teleporta para as coordenadas do Hospital",
    Callback = teleportToHospital
})

-- Function to teleport to Arch
local function teleportToArch()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-589, 141, -59)
end

AddButton(Main, {
    Name = "فوق الجسر",
    Description = "Teleporta para as coordenadas do Arco",
    Callback = teleportToArch
})

-- Function to teleport to Agency
local function teleportToAgency()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(179, 4, -464)
end

AddButton(Main, {
    Name = "مكان الكهرباء",
    Description = "Teleporta para as coordenadas da Agência",
    Callback = teleportToAgency
})

-- Function to teleport to Secret Room in Workshop
local function teleportToSecretRoomInWorkshop()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 4, -495)
end

AddButton(Main, {
    Name = "جو الأرض",
    Description = "Teleporta para as coordenadas da Sala Secreta na Oficina",
    Callback = teleportToSecretRoomInWorkshop
})

-- Function to teleport to Secret Room 2
local function teleportToSecretRoom2()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-343, 4, -613)
end

AddButton(Main, {
    Name = "جو الأرض 2",
    Description = "Teleporta para as coordenadas da Sala Secreta 2",
    Callback = teleportToSecretRoom2
})

-- Function to teleport to Island 1
local function teleportToIsland1()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1925, 23, 127)
end

AddButton(Main, {
    Name = "جزيرة 1",
    Description = "Teleporta para as coordenadas da Ilha 1",
    Callback = teleportToIsland1
})

-- Function to teleport to Airport
local function teleportToAirport()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(310, 5, 31)
end

AddButton(Main, {
    Name = "مطار",
    Description = "Teleporta para as coordenadas do Aeroporto",
    Callback = teleportToAirport
})

-- Function to teleport to Hotel Center
local function teleportToHotelCenter()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(182, 4, 150)
end

AddButton(Main, {
    Name = "البيوت",
    Description = "Teleporta para as coordenadas do Centro dos Hotéis",
    Callback = teleportToHotelCenter
})

-- Function to teleport to Lower Houses
local function teleportToLowerHouses()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(63, 35, 410)
end

AddButton(Main, {
    Name = " نص الشارع",
    Description = "Teleporta para as coordenadas das Casas Inferiores",
    Callback = teleportToLowerHouses
})

-- Function to teleport to Mountain 1
local function teleportToMountain1()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-670, 251, 765)
end

AddButton(Main, {
    Name = "فوق الجبل",
    Description = "Teleporta para as coordenadas da Montanha 1",
    Callback = teleportToMountain1
})

-- Function to teleport to On Top of School
local function teleportToOnTopOfSchool()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-370, 50, 173)
end

AddButton(Main, {
    Name = "فوق المدرسة",
    Description = "Teleporta para as coordenadas Em Cima da Escola",
    Callback = teleportToOnTopOfSchool
})
local Main = MakeTab({Name = "البيت-House"})

--[[
  Name = "Main" <string> Nome da guia
]]
AddButton(Main, {
  Name = "  	كراج تفتحة وتسده",
  Callback = function()
					local args = {
						[1] = "GarageDoor"
					}
					game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Player1sHous1e"):FireServer(unpack(args))
end
})




AddButton(Main, {
  Name = "  	شباك تفتحة  وتسده",
  Callback = function()
					local args = {
						[1] = "Curtains"
					}
					game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Player1sHous1e"):FireServer(unpack(args))
end
})




AddButton(Main, {
  Name = "تحذف بيتك",
  Callback = function()
  local args = {
    [1] = "PlayerSellHouse"
}

game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Player1sHous1eChoic1e"):FireServer(unpack(args))

  end
})
AddButton(Main, {
  Name = "فتح",
  Callback = function() 
  local args = {
    [1] = "LockDoors"
}

game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Player1sHous1e"):FireServer(unpack(args))


  end
})
AddButton(Main, {
  Name = "قفل",
  Callback = function()
  local args = {
    [1] = "LockDoors"
}

game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Player1sHous1e"):FireServer(unpack(args))

  end
})
AddButton(Main, {
  Name = "لون بيتك ",
  Callback = function()
    local colors = {
      Color3.fromRGB(255, 0, 0),     
      Color3.fromRGB(255, 127, 0),   
      Color3.fromRGB(255, 255, 0),  
      Color3.fromRGB(0, 255, 0),   
      Color3.fromRGB(0, 0, 255),     
      Color3.fromRGB(75, 0, 130),    
      Color3.fromRGB(148, 0, 211)    
    }

    local remote = game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Player1sHous1e")

   
    while true do
      for _, color in ipairs(colors) do
        local args = {
          [1] = "ColorPickHouse",
          [2] = color
        }
        remote:FireServer(unpack(args))
        wait(0.5)
      end
    end
  end
})
AddTextBox(Main, {
    Name = "اسم",
    Default = "",
    PlaceholderText = "اكتب اسمك اهنا",
    Callback = function(value)
        local args = {
            [1] = "BusinessName",
            [2] = value
        }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1RPHous1eEven1t"):FireServer(unpack(args))
    end
})
AddToggle(Main, {
    Name = "الغاء حظر عن بيت",
    Default = false,
    Callback = function(state)
        isUnbanActive = state
        if isUnbanActive then
            print(".")
            startAutoUnban()
        else
            print("تم فك الحظر")
        end
    end
})
function startAutoUnban()
    while isUnbanActive do
        for i, v in pairs(game:GetService("Workspace"):WaitForChild("001_Lots"):GetDescendants()) do
            -- houses
            if v.Name == "BannedBlock1" or v.Name == "BannedBlock2" or v.Name == "BannedBlock3" or v.Name == "BannedBlock4" or v.Name == "BannedBlock5" or v.Name == "BannedBlock6" or v.Name == "BannedBlock7" or v.Name == "BannedBlock11" or v.Name == "BannedBlock12" or v.Name == "BannedBlock13" or v.Name == "BannedBlock14" or v.Name == "BannedBlock15" or v.Name == "BannedBlock16" or v.Name == "BannedBlock17" or v.Name == "BannedBlock18" or v.Name == "BannedBlock19" or v.Name == "BannedBlock20" or v.Name == "BannedBlock21" or v.Name == "BannedBlock21" or v.Name == "BannedBlock22" or v.Name == "BannedBlock23" or v.Name == "BannedBlock24" or v.Name == "BannedBlock30" or v.Name == "BannedBlock31" or v.Name == "BannedBlock32" or v.Name == "BannedBlock33" or v.Name == "BannedBlock34" or v.Name == "BannedBlock35" then                -- destroy
                v:Destroy()
            end
        end
wait(1)
    end
end
AddButton(Main, {
  Name = "1-تاخذ تحكم البيت ",
  Callback = function()
    local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 1
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))	
  end
})
AddButton(Main, {
  Name = "2 تاخذ تحكم البيت ",
  Callback = function()
    local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 2
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))	
  end
})
AddButton(Main, {
  Name = "3 تاخذ تحكم البيت ",
  Callback = function()
    local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 3
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))	
  end
})
AddButton(Main, {
  Name = "4 تاخذ تحكم البيت ",
  Callback = function()
    local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 4
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))	
  end
})
AddButton(Main, {
  Name = "5 تاخذ تحكم البيت ",
  Callback = function()
    local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 5
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))	
  end
})
AddButton(Main, {
  Name = "6 تاخذ تحكم البيت ",
  Callback = function()
    local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 6
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))	
  end
})
AddButton(Main, {
  Name = "7 تاخذ تحكم البيت ",
  Callback = function()
    local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 7
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))	
  end
})
AddButton(Main, {
  Name = "11 تاخذ تحكم البيت ",
  Callback = function()
    local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 11
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))	
  end
})
AddButton(Main, {
  Name = "12 تاخذ تحكم البيت ",
  Callback = function()
    local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 12
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))	
  end
})
AddButton(Main, {
  Name = "13 تاخذ تحكم البيت ",
  Callback = function()
    	local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 13
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))	
  end
})
AddButton(Main, {
  Name = "14 تاخذ تحكم البيت ",
  Callback = function()
    local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 14
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))	
  end
})
AddButton(Main, {
  Name = "15 تاخذ تحكم البيت ",
  Callback = function()
    local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 15
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))	
  end
})
AddButton(Main, {
  Name = "16 تاخذ تحكم البيت ",
  Callback = function()
    local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 16
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))	
  end
})
AddButton(Main, {
  Name = "17 تاخذ تحكم البيت ",
  Callback = function()
    local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 17
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))	
  end
})
AddButton(Main, {
  Name = "18 تاخذ تحكم البيت ",
  Callback = function(
)
    local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 18
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))	
  end
})
AddButton(Main, {
  Name = "19 تاخذ تحكم البيت ",
  Callback = function()
    local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 19
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))
  end
})
AddButton(Main, {
  Name = "20 تاخذ تحكم البيت ",
  Callback = function()
    local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 20
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))	
  end
})
AddButton(Main, {
  Name = "21 تاخذ تحكم البيت ",
  Callback = function()
    local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 21
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))	
  end
})
AddButton(Main, {
  Name = "22 تاخذ تحكم البيت ",
  Callback = function()
    local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 22
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))	
  end
})
AddButton(Main, {
  Name = "23 تاخذ تحكم البيت ",
  Callback = function()
    local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 23
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))
  end
})
AddButton(Main, {
  Name = "24 تاخذ تحكم البيت",
  Callback = function()
    local args = {
    [1] = "GivePermissionLoopToServer",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = 24
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))	
  end
})
