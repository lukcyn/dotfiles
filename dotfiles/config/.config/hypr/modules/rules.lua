---@type any
hl = hl

hl.window_rule({
	name = "suppress-maximize-events",
	match = { class = ".*" },
	suppress_event = "maximize",
})

hl.window_rule({
	name = "fix-xwayland-drags",
	match = {
		xwayland = true,
		float = true,
		fullscreen = false,
	},
	no_focus = false,
})

hl.window_rule({
	name = "move-hyprland-run",
	match = { class = "hyprland-run" },
	move = "20 monitor_h-120",
	float = true,
})

hl.window_rule({
	name = "bluetui-float",
	match = {
		class = "BlueTUI",
	},
	float = true,
	center = true,
	size = "1000 700",
})

hl.window_rule({
	name = "impala-float",
	match = {
		class = "Impala",
	},
	float = true,
	center = true,
	size = "1000 700",
})

hl.window_rule({
	name = "wiremix-float",
	match = {
		class = "Wiremix",
	},
	float = true,
	center = true,
	size = "1000 700",
})
