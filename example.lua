local kurai = loadstring(
    game:HttpGetAsync(`https://raw.githubusercontent.com/focat69/kurai/refs/heads/main/source?t={tostring(tick())}`)
)()

local ui = kurai.new({
    Name = "Kurai",
    GameName = "Phantom Forces",
    ScriptHubName = "暗い | Developer Build",
    Tabs = {"Rage", "Legit", "Visuals", "Misc", "Configs"}
})

local rageTab = ui.Tabs["Rage"]
local legitTab = ui.Tabs["Legit"]
local visualsTab = ui.Tabs["Visuals"]
local miscTab = ui.Tabs["Misc"]
local configsTab = ui.Tabs["Configs"]

rageTab:Label({
    Text = "Rage Options",
    Alignment = Enum.TextXAlignment.Left
})
rageTab:Splitter()

rageTab:Toggle({
    Text = "Aimbot",
    State = false,
    Callback = function(state, toggle)
        ui:Notify({
            Title = "Aimbot", 
            Message = "Aimbot is now " .. (state and "enabled" or "disabled"),
            Duration = 3,
            Type = state and "success" or "warn"
        })
    end
}, "AimbotEnabled")

rageTab:Toggle({
    Text = "Auto Shoot",
    State = false,
    Callback = function(state)
        ui:Notify({
            Title = "Auto Shoot",
            Message = "Auto Shoot is now " .. (state and "enabled" or "disabled"),
            Duration = 3,
            Type = state and "success" or "warn"
        })
    end
}, "AutoShootEnabled")

rageTab:Toggle({
    Text = "Auto Scope",
    State = false,
    Callback = function(state)
        ui:Notify({
            Title = "Auto Scope",
            Message = "Auto Scope is now " .. (state and "enabled" or "disabled"),
            Duration = 3,
            Type = state and "success" or "warn"
        })
    end
}, "AutoScopeEnabled")

rageTab:Toggle({
    Text = "Anti Aim",
    State = false,
    Callback = function(state)
        ui:Notify({
            Title = "Anti Aim",
            Message = "Anti Aim is now " .. (state and "enabled" or "disabled"),
            Duration = 3,
            Type = state and "success" or "warn"
        })
    end
}, "AntiAimEnabled")

rageTab:Toggle({
    Text = "Resolver",
    State = false,
    Callback = function(state)
        ui:Notify({
            Title = "Resolver",
            Message = "Resolver is now " .. (state and "enabled" or "disabled"),
            Duration = 3,
            Type = state and "success" or "warn"
        })
    end
}, "ResolverEnabled")

rageTab:Toggle({
    Text = "Fly",
    State = false,
    Callback = function(state)
        ui:Notify({
            Title = "Fly",
            Message = "Fly is now " .. (state and "enabled" or "disabled"),
            Duration = 3,
            Type = state and "success" or "warn"
        })
    end
}, "FlyEnabled")

rageTab:Slider({
    Text = "Fly Speed",
    Min = 0,
    Max = 100,
    State = 50,
    Increment = 1,
    Suffix = "Studs/s",
    Callback = function(value)
        print("Fly speed set to " .. value .. " Studs/s")
    end
}, "FlySpeed")

rageTab:Slider({
    Text = "FOV",
    Min = 0,
    Max = 180,
    State = 90,
    Increment = 1,
    Suffix = "°",
    Callback = function(value)
        print("FOV set to " .. value)
    end
}, "FOVValue")


-- [ legit tab ]
legitTab:Label({
    Text = "Legit Options",
    Alignment = Enum.TextXAlignment.Left
})
legitTab:Splitter()

legitTab:Toggle({
    Text = "Triggerbot",
    State = false,
    Callback = function(state)
        ui:Notify({
            Title = "Triggerbot",
            Message = "Triggerbot is now " .. (state and "enabled" or "disabled"),
            Duration = 3,
            Type = state and "success" or "warn"
        })
    end
}, "TriggerbotEnabled")

legitTab:Slider({
    Text = "Triggerbot Delay",
    Min = 0,
    Max = 1000,
    State = 100,
    Increment = 1,
    Suffix = "ms",
    Callback = function(value)
        print("Triggerbot delay set to " .. value .. " ms")
    end
}, "TriggerbotDelay")

legitTab:Toggle({
    Text = "Silent Aim",
    State = false,
    Callback = function(state)
        ui:Notify({
            Title = "Silent Aim",
            Message = "Silent Aim is now " .. (state and "enabled" or "disabled"),
            Duration = 3,
            Type = state and "success" or "warn"
        })
    end
}, "SilentAimEnabled")

legitTab:Slider({
    Text = "Silent Aim FOV",
    Min = 0,
    Max = 180,
    State = 90,
    Increment = 1,
    Suffix = "°",
    Callback = function(value)
        print("Silent Aim FOV set to " .. value .. "°")
    end
}, "SilentAimFOV")

legitTab:Slider({
    Text = "Silent Aim Hit Chance",
    Min = 0,
    Max = 100,
    State = 100,
    Increment = 1,
    Suffix = "%",
    Callback = function(value)
        print("Silent Aim hit chance set to " .. value .. "%")
    end
}, "SilentAimHitChance")

legitTab:Toggle({
    Text = "Recoil Control Masterswitch",
    State = false,
    Callback = function(state)
        ui:Notify({
            Title = "Recoil Control",
            Message = "Recoil Control is now " .. (state and "enabled" or "disabled"),
            Duration = 3,
            Type = state and "success" or "warn"
        })
    end
}, "RecoilCntrlEnabled")

legitTab:Slider({
    Text = "Recoil Control X",
    Min = 0,
    Max = 1,
    State = 0.1,
    Increment = 0.01,
    Suffix = "",
    Callback = function(value)
        print("Recoil Control X set to " .. value)
    end
}, "RecoilControlX")

legitTab:Slider({
    Text = "Recoil Control Y",
    Min = 0,
    Max = 1,
    State = 0.1,
    Increment = 0.01,
    Suffix = "",
    Callback = function(value)
        print("Recoil Control Y set to " .. value)
    end
}, "RecoilControlY")

-- [ visuals tab ]
visualsTab:Label({
    Text = "Visual Options",
    Alignment = Enum.TextXAlignment.Left
})
visualsTab:Splitter()

visualsTab:Toggle({
    Text = "ESP Masterswitch",
    State = false,
    Callback = function(state)
        ui:Notify({
            Title = "ESP",
            Message = "ESP is now " .. (state and "enabled" or "disabled"),
            Duration = 3,
            Type = state and "success" or "warn"
        })
    end
}, "ESPToggle")

visualsTab:Toggle({
    Text = "Box ESP",
    State = false,
    Callback = function(state)
        ui:Notify({
            Title = "Box ESP",
            Message = "Box ESP is now " .. (state and "enabled" or "disabled"),
            Duration = 3,
            Type = state and "success" or "warn"
        })
    end
}, "BoxESPToggle")

visualsTab:Toggle({
    Text = "Name ESP",
    State = false,
    Callback = function(state)
        ui:Notify({
            Title = "Name ESP",
            Message = "Name ESP is now " .. (state and "enabled" or "disabled"),
            Duration = 3,
            Type = state and "success" or "warn"
        })
    end
}, "NameESPToggle")

visualsTab:Toggle({
    Text = "Distance ESP",
    State = false,
    Callback = function(state)
        ui:Notify({
            Title = "Distance ESP",
            Message = "Distance ESP is now " .. (state and "enabled" or "disabled"),
            Duration = 3,
            Type = state and "success" or "warn"
        })
    end
}, "DistanceESPToggle")

visualsTab:Toggle({
    Text = "Health ESP",
    State = false,
    Callback = function(state)
        ui:Notify({
            Title = "Health ESP",
            Message = "Health ESP is now " .. (state and "enabled" or "disabled"),
            Duration = 3,
            Type = state and "success" or "warn"
        })
    end
}, "HealthESPToggle")

visualsTab:Toggle({
    Text = "Team Check",
    State = false,
    Callback = function(state)
        ui:Notify({
            Title = "Team Check",
            Message = "Team Check is now " .. (state and "enabled" or "disabled"),
            Duration = 3,
            Type = state and "success" or "warn"
        })
    end
}, "TeamCheckToggle")

visualsTab:Toggle({
    Text = "Chams",
    State = false,
    Callback = function(state)
        ui:Notify({
            Title = "Chams",
            Message = "Chams are now " .. (state and "enabled" or "disabled"),
            Duration = 3,
            Type = state and "success" or "warn"
        })
    end
}, "ChamsToggle")

--[ misc tab ]
miscTab:Label({
    Text = "Misc Options",
    Alignment = Enum.TextXAlignment.Left
})
miscTab:Splitter()

miscTab:Toggle({
    Text = "Third Person",
    State = false,
    Callback = function(state)
        ui:Notify({
            Title = "Third Person",
            Message = "Third Person is now " .. (state and "enabled" or "disabled"),
            Duration = 3,
            Type = state and "success" or "warn"
        })
    end
}, "ThirdPToggle")

miscTab:Slider({
    Text = "Third Person Distance",
    Min = 0,
    Max = 100,
    State = 10,
    Increment = 1,
    Suffix = "Studs",
    Callback = function(value)
        print("Third Person distance set to " .. value .. " Studs")
    end
}, "ThirdPDistance")

miscTab:Toggle({
    Text = "No Clip",
    State = false,
    Callback = function(state)
        ui:Notify({
            Title = "No Clip",
            Message = "No Clip is now " .. (state and "enabled" or "disabled"),
            Duration = 3,
            Type = state and "success" or "warn"
        })
    end
}, "NoClipToggle")

miscTab:Toggle({
    Text = "Bunny Hop",
    State = false,
    Callback = function(state)
        ui:Notify({
            Title = "Bunny Hop",
            Message = "Bunny Hop is now " .. (state and "enabled" or "disabled"),
            Duration = 3,
            Type = state and "success" or "warn"
        })
    end
}, "BhopToggle")

miscTab:Toggle({
    Text = "Auto Strafe",
    State = false,
    Callback = function(state)
        ui:Notify({
            Title = "Auto Strafe",
            Message = "Auto Strafe is now " .. (state and "enabled" or "disabled"),
            Duration = 3,
            Type = state and "success" or "warn"
        })
    end
}, "AutoStrafeToggle")

-- [ configs tab ]
configsTab:Label({
    Text = "Config Options",
    Alignment = Enum.TextXAlignment.Left
})
configsTab:Splitter()

configsTab:Button({
    Text = "Save Config",
    Callback = function()
        ui:Notify({
            Title = "Config",
            Message = "Config saved successfully!",
            Duration = 3,
            Type = "success"
        })
    end
}, "SaveConfig")

configsTab:Button({
    Text = "Load Config",
    Callback = function()
        ui:Notify({
            Title = "Config",
            Message = "Config loaded successfully!",
            Duration = 3,
            Type = "success"
        })
    end
}, "LoadConfig")

-- configsTab:Label({
--     Text = "jewware on top",
--     Alignment = Enum.TextXAlignment.Left
-- })

--!! // new components!
-- [ dropdown example ]
rageTab:Dropdown({
    Text = "Target Part",
    Options = {"Head", "Torso", "Random"},
    State = "Head",
    Callback = function(selected)
        ui:Notify({
            Title = "Target Part",
            Message = "Target part set to: " .. selected,
            Duration = 3,
            Type = "info"
        })
    end
}, "TargetPartFlag")

-- [ keybind example ]
rageTab:Keybind({
    Text = "Aimbot Key",
    State = Enum.KeyCode.E,
    Callback = function(key)
        ui:Notify({
            Title = "Aimbot Key",
            Message = "Aimbot key set to: " .. tostring(key.Name),
            Duration = 3,
            Type = "info"
        })
    end,
    OnPressed = function(key)
        ui:Notify({
            Title = "Aimbot Key Pressed",
            Message = "You pressed the Aimbot key: " .. tostring(key),
            Duration = 3,
            Type = "info"
        })
    end
}, "AimbotKeyFlag")

-- [ textfield example ]
configsTab:TextField({
    Text = "Config Name",
    Placeholder = "Enter config name...",
    State = "Default Config",
    CharLimit = 20,
    Callback = function(text, enterPressed)
        if enterPressed then
           ui:Notify({
                Title = "Config Name",
                Message = "Config name set to: " .. text,
                Duration = 3,
                Type = "info"
            })
        end
    end
}, "ConfigNameFlag")

-- [ textfield with number validation ]
miscTab:TextField({
    Text = "Walkspeed",
    InputType = "number", -- !!
    State = "16",
    Callback = function(text)
        local speed = tonumber(text) or 16
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
        ui:Notify({
            Title = "Walkspeed",
            Message = "Walkspeed set to: " .. speed,
            Duration = 3,
            Type = "info"
        })
    end
}, "WalkspeedFlag")

ui:SetToggleKeybind(Enum.KeyCode.LeftAlt) -- default is right control
ui:Notify({
    Title = "Kurai",
    Message = "Kurai UI loaded successfully. Press Left Alt to toggle.",
    Duration = 3,
    Type = "info"
})