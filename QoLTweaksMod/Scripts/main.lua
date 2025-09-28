--[[
┌──────────────────────────────────────────────────────┐
│ Filename    : main.lua                               │
│ Author      : Faith001                               │
│ Description : Implementation for the QoLTweaks mod.  │
│               The scripting part of this mod         |
|               currently allows the player to set     |
|               their FOV, the other functionality     |
|               is pak-based.                          │
│──────────────────────────────────────────────────────│
│ History     :                                        │
│ 2025-09-28  : Initial creation                       │
│                                                      │
└──────────────────────────────────────────────────────┘
]]

-- Imports
local UEHelpers = require("UEHelpers")
local Config    = require("config")

-- Functions
RegisterHook("/Script/Engine.PlayerController:ClientRestart", function(Context)
    ExecuteInGameThread(function()
        if Config.fov_change_enabled then
            local FirstPlayerController = UEHelpers:GetPlayerController()
            FirstPlayerController:FOV(Config.wanted_fov)
            print(string.format("[QoLTweaks] On ClientRestart, set FOV to: %s.\n", Config.wanted_fov))
        end
    end)
end)

print("[QoLTweaks] Mod loaded!\n")
