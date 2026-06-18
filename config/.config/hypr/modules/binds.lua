---@type any
hl = hl

local apps = require("modules.apps")
local mod = "SUPER"

-- Apps
hl.bind(mod .. " + RETURN", hl.dsp.exec_cmd(apps.terminal))
hl.bind(mod .. " + SHIFT + E", hl.dsp.exec_cmd(apps.fileManager))
hl.bind(mod .. " + SPACE", hl.dsp.exec_cmd(apps.menu))
hl.bind(mod .. " + SHIFT + B", hl.dsp.exec_cmd(apps.browser))
hl.bind(mod .. " + SHIFT + S", hl.dsp.exec_cmd(apps.steam))
hl.bind(mod .. " + SHIFT + D", hl.dsp.exec_cmd(apps.discord))

-- App management
hl.bind(mod .. " + W", hl.dsp.window.close())
hl.bind(mod .. " + T", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mod .. " + P", hl.dsp.window.pseudo())
hl.bind(mod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Workspace
hl.bind(mod .. " + h", hl.dsp.focus({ direction = "left" }))
hl.bind(mod .. " + l", hl.dsp.focus({ direction = "right" }))
hl.bind(mod .. " + k", hl.dsp.focus({ direction = "up" }))
hl.bind(mod .. " + j", hl.dsp.focus({ direction = "down" }))

for i = 1, 10 do
  local key = i % 10
  hl.bind(mod .. " + " .. key, hl.dsp.focus({ workspace = i }))
  hl.bind(mod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- Misc
hl.bind("XF86AudioRaiseVolume",
  hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
  { locked = true, repeating = true })

hl.bind("XF86AudioLowerVolume",
  hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
  { locked = true, repeating = true })

hl.bind("XF86AudioMute",
  hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
  { locked = true, repeating = true })

hl.bind("XF86MonBrightnessUp",
  hl.dsp.exec_cmd("brightnessctl set 5%+"),
  { locked = true, repeating = true })

hl.bind("XF86MonBrightnessDown",
  hl.dsp.exec_cmd("brightnessctl set 5%-"),
  { locked = true, repeating = true })
