local apps = require("modules.apps")

hl.on("hyprland.start", function()
  hl.exec_cmd(apps.statusBar)
  hl.exec_cmd(apps.wallpaper)
end)
