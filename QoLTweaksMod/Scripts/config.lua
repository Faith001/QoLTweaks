--[[
┌─────────────────────────────────────────────────────────┐
│ Filename    : config.lua                                │
│ Author      : Faith001                                  │
│ Description : Configuration file for the QoLTweaks mod. │
│─────────────────────────────────────────────────────────│
│ History                                                 │
│ 2025-09-28  : Initial creation                          │
│                                                         │
└─────────────────────────────────────────────────────────┘
]]

local _qoltweaks_mod_config = {
    -- Whether changing the FOV should be enabled.
    -- true by default, set to false to disable.
    fov_change_enabled = true,

    -- The desired FOV to set.
    -- 90 by default.
    wanted_fov = 90,
}
return _qoltweaks_mod_config
