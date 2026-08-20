---@type any

local theme = require("modules.theme")

hl = hl

hl.config({
	general = {
		gaps_in = 5,
		gaps_out = 10,
		border_size = 2,

		col = {
			active_border = {
				colors = {
					"rgba(" .. theme.primary .. "ee)",
					"rgba(" .. theme.secondary .. "ee)",
				},
				angle = 45,
			},

			inactive_border = "rgba(" .. theme.border .. "aa)",
		},

		resize_on_border = false,
		allow_tearing = false,
		layout = "dwindle",
	},

	decoration = {
		rounding = 10,
		rounding_power = 2,

		active_opacity = 1.0,
		inactive_opacity = 0.92,

		shadow = {
			enabled = true,
			range = 6,
			render_power = 3,
			color = "0xee" .. theme.background,
		},

		blur = {
			enabled = true,
			size = 6,
			passes = 3,
			vibrancy = 0.20,
			new_optimizations = true,
			ignore_opacity = false,
		},
	},

	animations = {
		enabled = false,
	},
})
