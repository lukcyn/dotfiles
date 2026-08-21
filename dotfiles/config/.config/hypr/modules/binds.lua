---@type any
hl = hl

local apps = require("modules.apps")
local mod = "SUPER"

-- Apps
hl.bind(mod .. " + RETURN", hl.dsp.exec_cmd(apps.terminal))
hl.bind(mod .. " + SHIFT + E", hl.dsp.exec_cmd(apps.fileExplorer))
hl.bind(mod .. " + SPACE", hl.dsp.exec_cmd(apps.menu))
hl.bind(mod .. " + SHIFT + B", hl.dsp.exec_cmd(apps.browser))
hl.bind(mod .. " + SHIFT + S", hl.dsp.exec_cmd(apps.steam))
hl.bind(mod .. " + SHIFT + D", hl.dsp.exec_cmd(apps.discord))
hl.bind(mod .. " + ESCAPE", hl.dsp.exec_cmd(apps.powermenu))

-- Settings
hl.bind(mod .. " + CTRL + B", hl.dsp.exec_cmd(apps.bluetooth))
hl.bind(mod .. " + CTRL + W", hl.dsp.exec_cmd(apps.wifi))
hl.bind(mod .. " + CTRL + F", hl.dsp.exec_cmd(apps.fileExplorer))

-- App management
hl.bind(mod .. " + W", hl.dsp.window.close())
hl.bind(mod .. " + SHIFT + W", hl.dsp.window.kill())
hl.bind(mod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Workspace
hl.bind(mod .. " + h", hl.dsp.focus({ direction = "left" }))
hl.bind(mod .. " + l", hl.dsp.focus({ direction = "right" }))
hl.bind(mod .. " + k", hl.dsp.focus({ direction = "up" }))
hl.bind(mod .. " + j", hl.dsp.focus({ direction = "down" }))

hl.bind(mod .. " + SHIFT + h", hl.dsp.window.move({ direction = "left" }))
hl.bind(mod .. " + SHIFT + l", hl.dsp.window.move({ direction = "right" }))
hl.bind(mod .. " + SHIFT + k", hl.dsp.window.move({ direction = "up" }))
hl.bind(mod .. " + SHIFT + j", hl.dsp.window.move({ direction = "down" }))

hl.bind(mod .. " + F", hl.dsp.window.fullscreen())
hl.bind(mod .. " + SHIFT + P", hl.dsp.window.pin())
hl.bind(mod .. " + P", hl.dsp.window.pseudo())
hl.bind(mod .. " + T", hl.dsp.window.float({ action = "toggle" }))

for i = 1, 10 do
	local key = i % 10
	hl.bind(mod .. " + " .. key, hl.dsp.focus({ workspace = i }))
	hl.bind(mod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- UTILITY
-- Brightness
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl set 5%+"), { locked = true, repeating = true })

hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl set 5%-"), { locked = true, repeating = true })

-- Audio controll
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl -a play-pause"), { locked = true, repeating = true })

hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true, repeating = true })

hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true, repeating = true })

hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
	{ locked = true, repeating = true }
)

hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
	{ locked = true, repeating = true }
)

hl.bind(
	"XF86AudioMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
	{ locked = true, repeating = true }
)

-- Screenshot
hl.bind("Print", hl.dsp.exec_cmd("grimblast copy area"), { locked = true })

hl.bind("SHIFT + Print", hl.dsp.exec_cmd("grimblast copy screen"), { locked = true })
