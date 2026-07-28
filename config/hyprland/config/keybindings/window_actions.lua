local mainMod = "SUPER"
local alt     = "ALT"

-- ---- WINDOW ACTIONS ----
hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(alt .. " + F4", hl.dsp.exec_cmd(scratchPath .. "/dontkillsteam.sh"))
hl.bind(mainMod .. " + Delete", hl.dsp.exit())
hl.bind(mainMod .. " + W", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + G", hl.dsp.group.toggle())
hl.bind(alt .. " + F", hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle" }))
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("swaylock"))
hl.bind(mainMod .. " + C", hl.dsp.exec_cmd("greenclip print | wofi --dmenu -l 10 | wl-copy"))
hl.bind(mainMod .. " + Escape", hl.dsp.exec_cmd("killall waybar"))

print("Keybindings de ações de janela carregados!")