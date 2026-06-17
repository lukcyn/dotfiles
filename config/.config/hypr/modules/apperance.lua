hl.config({
  general = {
    gaps_in          = 5,
    gaps_out         = 10,
    border_size      = 2,

    col              = {
      active_border   = {
        colors = {
          "rgba(bb9af7ee)", -- purple (focus)
          "rgba(7aa2f7ee)"  -- blue accent
        },
        angle = 45
      },

      inactive_border = "rgba(565f89aa)", -- muted Tokyo Night gray
    },

    resize_on_border = false,
    allow_tearing    = false,
    layout           = "dwindle",
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
      color = "0xee1a1b26",
    },

    blur = {
      enabled = true,
      size = 6,
      passes = 2,
      vibrancy = 0.20,
    },
  },

  animations = {
    enabled = true,
  },
})
