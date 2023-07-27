 
 
 
spawn(function()
    local message = Instance.new("Message",workspace)
    message.Text = "Loaded press z = invisfling , x = respawn, c = stop freecam, v = esp, b = unesp"
    wait(2)
    message:Destroy()
    end)
    Players = game:GetService("Players")
    RunService = game:GetService("RunService")
    COREGUI = game:GetService("CoreGui")
    player = game.Players.LocalPlayer


    function getRoot(char)
        local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
        return rootPart
    end

    function round(num, numDecimalPlaces)
        local mult = 10^(numDecimalPlaces or 0)
        return math.floor(num * mult + 0.5) / mult
    end

    function ESP(plr)
    task.spawn(function()
		for i,v in pairs(COREGUI:GetChildren()) do
			if v.Name == plr.Name..'_ESP' then
				v:Destroy()
			end
		end
		wait()
		if plr.Character and plr.Name ~= Players.LocalPlayer.Name and not COREGUI:FindFirstChild(plr.Name..'_ESP') then
			local ESPholder = Instance.new("Folder")
			ESPholder.Name = plr.Name..'_ESP'
			ESPholder.Parent = COREGUI
			repeat wait(1) until plr.Character and getRoot(plr.Character) and plr.Character:FindFirstChildOfClass("Humanoid")
			for b,n in pairs (plr.Character:GetChildren()) do
				if (n:IsA("BasePart")) then
					local a = Instance.new("BoxHandleAdornment")
					a.Name = plr.Name
					a.Parent = ESPholder
					a.Adornee = n
					a.AlwaysOnTop = true
					a.ZIndex = 10
					a.Size = n.Size
					a.Transparency = espTransparency
					a.Color = plr.TeamColor
				end
			end
			if plr.Character and plr.Character:FindFirstChild('Head') then
				local BillboardGui = Instance.new("BillboardGui")
				local TextLabel = Instance.new("TextLabel")
				BillboardGui.Adornee = plr.Character.Head
				BillboardGui.Name = plr.Name
				BillboardGui.Parent = ESPholder
				BillboardGui.Size = UDim2.new(0, 100, 0, 150)
				BillboardGui.StudsOffset = Vector3.new(0, 1, 0)
				BillboardGui.AlwaysOnTop = true
				TextLabel.Parent = BillboardGui
				TextLabel.BackgroundTransparency = 1
				TextLabel.Position = UDim2.new(0, 0, 0, -50)
				TextLabel.Size = UDim2.new(0, 100, 0, 100)
				TextLabel.Font = Enum.Font.SourceSansSemibold
				TextLabel.TextSize = 20
				TextLabel.TextColor3 = Color3.new(1, 1, 1)
				TextLabel.TextStrokeTransparency = 0
				TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
				TextLabel.Text = 'Name: '..plr.Name
				TextLabel.ZIndex = 10
				local espLoopFunc
				local teamChange
				local addedFunc
				addedFunc = plr.CharacterAdded:Connect(function()
					if ESPenabled then
						espLoopFunc:Disconnect()
						teamChange:Disconnect()
						ESPholder:Destroy()
						repeat wait(1) until getRoot(plr.Character) and plr.Character:FindFirstChildOfClass("Humanoid")
						ESP(plr)
						addedFunc:Disconnect()
					else
						teamChange:Disconnect()
						addedFunc:Disconnect()
					end
				end)
				teamChange = plr:GetPropertyChangedSignal("TeamColor"):Connect(function()
					if ESPenabled then
						espLoopFunc:Disconnect()
						addedFunc:Disconnect()
						ESPholder:Destroy()
						repeat wait(1) until getRoot(plr.Character) and plr.Character:FindFirstChildOfClass("Humanoid")
						ESP(plr)
						teamChange:Disconnect()
					else
						teamChange:Disconnect()
					end
				end)
				local function espLoop()
					if COREGUI:FindFirstChild(plr.Name..'_ESP') then
						if plr.Character and getRoot(plr.Character) and plr.Character:FindFirstChildOfClass("Humanoid") and Players.LocalPlayer.Character and getRoot(Players.LocalPlayer.Character) and Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
							local pos = math.floor((getRoot(Players.LocalPlayer.Character).Position - getRoot(plr.Character).Position).magnitude)
							TextLabel.Text = 'Name: '..plr.Name..' | Health: '..round(plr.Character:FindFirstChildOfClass('Humanoid').Health, 1)..' | Studs: '..pos
						end
					else
						teamChange:Disconnect()
						addedFunc:Disconnect()
						espLoopFunc:Disconnect()
					end
				end
				espLoopFunc = RunService.RenderStepped:Connect(espLoop)
			end
		end
	end)
end

    function StopFreecam()
        workspace.CurrentCamera.CameraSubject = player.Character.Humanoid
    end

     function espall()
        for i,v in pairs(Players:GetChildren()) do
			if v.ClassName == "Player" and v.Name ~= player.Name then
				ESP(v)
			end
		end
    end

    function unesp()
        for i,c in pairs(COREGUI:GetChildren()) do
            if string.sub(c.Name, -4) == '_ESP' then
                c:Destroy()
            end
        end
    end
     
     
     
    local mouse = game.Players.LocalPlayer:GetMouse()
     
    local groot = nil
     
    mouse.KeyDown:connect(function(k)
        
        if k == "z" then
            
            
            
    spawn(function()
    local message = Instance.new("Message",workspace)
    message.Text = "Fe Invisible Fling By Diemiers#4209 Loaded (wait 1 seconds to load)"
    wait(1)
    message:Destroy()
    end)
     
     
    local ch = game.Players.LocalPlayer.Character
    local prt=Instance.new("Model", workspace)
    local z1 =  Instance.new("Part", prt)
    z1.Name="Torso"
    z1.CanCollide = false
    z1.Anchored = true
    local z2  =Instance.new("Part", prt)
    z2.Name="Head"
    z2.Anchored = true
    z2.CanCollide = false
    local z3 =Instance.new("Humanoid", prt)
    z3.Name="Humanoid"
    z1.Position = Vector3.new(0,9999,0)
    z2.Position = Vector3.new(0,9991,0)
     game.Players.LocalPlayer.Character=prt
    wait(1)
    game.Players.LocalPlayer.Character=ch
    wait(3)
     
     
    local plr = game.Players.LocalPlayer
    mouse = plr:GetMouse()
     
    local Hum = Instance.new("Humanoid")
    Hum.Parent = game.Players.LocalPlayer.Character
     
     
    local root =  game.Players.LocalPlayer.Character.HumanoidRootPart
     
     
    for i,v in pairs(plr.Character:GetChildren()) do
        
        if v ~= root and  v.Name ~= "Humanoid" then
            
            v:Destroy()
            
        end
        
        
    end
               
    workspace.CurrentCamera.CameraSubject = root
     
    local se = Instance.new("SelectionBox",root)
    se.Adornee = root
     
     
    game:GetService('RunService').Stepped:connect(function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
    end)
    game:GetService('RunService').RenderStepped:connect(function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
    end)
     
     
    power = 999999 -- change this to make it more or less powerful
     
    power = power*10
     
    ---
    wait(.1)
    local bambam = Instance.new("BodyThrust")
    bambam.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
    bambam.Force = Vector3.new(power,0,power)
    bambam.Location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position 
     
     
     
     
     
    local plr = game.Players.LocalPlayer
    local torso = root
    local flying = true
    local deb = true
    local ctrl = {f = 0, b = 0, l = 0, r = 0}
    local lastctrl = {f = 0, b = 0, l = 0, r = 0}
    local speed = 15
    maxspeed = 120
     
    ---local bambam = Instance.new("BodyThrust")
    ---bambam.Parent = torso
    --bambam.Force = Vector3.new(9999999,0,9999999)
    --bambam.Location = torso.Position
     
     
    ---
    groot = root
     
    function Fly()
    local bg = Instance.new("BodyGyro", torso)
    bg.P = 9e4
    bg.maxTorque = Vector3.new(0, 0, 0)
    bg.cframe = torso.CFrame
    local bv = Instance.new("BodyVelocity", torso)
    bv.velocity = Vector3.new(0,0,0)
    bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
    repeat wait()
     
    if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
    speed = maxspeed
    if speed > maxspeed then
    speed = maxspeed
    end
    elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
    speed = 0
    if speed < 0 then
    speed = 0
    end
    end
    if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
    bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
    lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
    elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
    bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
    else
    bv.velocity = Vector3.new(0,0.1,0)
    end
     
    until not flying
    ctrl = {f = 0, b = 0, l = 0, r = 0}
    lastctrl = {f = 0, b = 0, l = 0, r = 0}
    speed = 0
    bg:Destroy()
    bv:Destroy()
     
    end
    mouse.KeyDown:connect(function(key)
    if key:lower() == "e" then
    if flying then flying = false
    else
    flying = true
    Fly()
    end
    elseif key:lower() == "w" then
    ctrl.f = 1
    elseif key:lower() == "s" then
    ctrl.b = -1
    elseif key:lower() == "a" then
    ctrl.l = -1
    elseif key:lower() == "d" then
    ctrl.r = 1
    end
    end)
    mouse.KeyUp:connect(function(key)
    if key:lower() == "w" then
    ctrl.f = 0
    elseif key:lower() == "s" then
    ctrl.b = 0
    elseif key:lower() == "a" then
    ctrl.l = 0
    elseif key:lower() == "d" then
    ctrl.r = 0
    elseif key:lower() == "r" then
     
    end
    end)
    Fly()
     
    elseif k == "c" then 
    StopFreecam()
    elseif k == "v" then
    espall()
    elseif k == "b" then
    unesp()
    elseif k == "1" then
    maxspeed = 30
    elseif k == "2" then
    maxspeed = 60	
    elseif k == "3" then
    maxspeed = 120
            
        elseif k == "x" then
            
            
            spawn(function()
    local message = Instance.new("Message",workspace)
    message.Text = "Respawning dont spam"
    wait(1)
    message:Destroy()
    end)
            
            local saved = groot.Position
            
    local ch = game.Players.LocalPlayer.Character
    local prt=Instance.new("Model", workspace)
    local z1 =  Instance.new("Part", prt)
    z1.Name="Torso"
    z1.CanCollide = false
    z1.Anchored = true
    local z2  =Instance.new("Part", prt)
    z2.Name="Head"
    z2.Anchored = true
    z2.CanCollide = false
    local z3 =Instance.new("Humanoid", prt)
    z3.Name="Humanoid"
    z1.Position = Vector3.new(0,9999,0)
    z2.Position = Vector3.new(0,9991,0)
     game.Players.LocalPlayer.Character=prt
    wait(3)
     game.Players.LocalPlayer.Character=ch
    local poop = nil
            repeat wait() poop = game.Players.LocalPlayer.Character:FindFirstChild("Head") until poop ~= nil
            wait(1)
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(saved)
            
        end
        
    end)
