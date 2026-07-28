local mainMod = "SUPER"
local ctrl    = "CTRL"

-- ---- RESIZE WINDOW ----
hl.bind(mainMod .. " + SHIFT + Right", hl.dsp.window.resize({ x = 30, y = 0, relative = true }), { repeating = true })
hl.bind(mainMod .. " + SHIFT + Left", hl.dsp.window.resize({ x = -30, y = 0, relative = true }), { repeating = true })
hl.bind(mainMod .. " + SHIFT + Up", hl.dsp.window.resize({ x = 0, y = -30, relative = true }), { repeating = true })
hl.bind(mainMod .. " + SHIFT + Down", hl.dsp.window.resize({ x = 0, y = 30, relative = true }), { repeating = true })

-- ---- MOVE WINDOW (FLOATING) ----
local moveactivewindow = 'grep -q "true" <<< $(hyprctl activewindow -j | jq -r .floating) && hyprctl dispatch moveactive'
hl.bind(mainMod .. " + SHIFT + CTRL + left", hl.dsp.exec_cmd(moveactivewindow .. " -30 0 || hyprctl dispatch movewindow l"), { repeating = true })
hl.bind(mainMod .. " + SHIFT + CTRL + right", hl.dsp.exec_cmd(moveactivewindow .. " 30 0 || hyprctl dispatch movewindow r"), { repeating = true })
hl.bind(mainMod .. " + SHIFT + CTRL + up", hl.dsp.exec_cmd(moveactivewindow .. " 0 -30 || hyprctl dispatch movewindow u"), { repeating = true })
hl.bind(mainMod .. " + SHIFT + CTRL + down", hl.dsp.exec_cmd(moveactivewindow .. " 0 30 || hyprctl dispatch movewindow d"), { repeating = true })

-- ---- MOUSE MOVE/RESIZE ----
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })
hl.bind(mainMod .. " + Z", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + X", hl.dsp.window.resize(), { mouse = true })

print("Keybindings de resize/move carregados!")