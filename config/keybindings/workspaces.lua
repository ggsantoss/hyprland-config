local mainMod = "SUPER"
local ctrl    = "CTRL"
local alt     = "ALT"

-- ---- WORKSPACE SWITCH ----
for i = 1, 10 do
    local key = i % 10
    hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
    hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
    hl.bind(mainMod .. " + ALT + " .. key, hl.dsp.window.move({ workspace = i, follow = false }))
end

-- ---- RELATIVE WORKSPACE ----
hl.bind(mainMod .. " + CTRL + Right", hl.dsp.focus({ workspace = "+1" }))
hl.bind(mainMod .. " + CTRL + Left", hl.dsp.focus({ workspace = "-1" }))
hl.bind(mainMod .. " + CTRL + ALT + Right", hl.dsp.window.move({ workspace = "+1" }))
hl.bind(mainMod .. " + CTRL + ALT + Left", hl.dsp.window.move({ workspace = "-1" }))
hl.bind(mainMod .. " + CTRL + Down", hl.dsp.focus({ workspace = "empty" }))
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- ---- SPECIAL WORKSPACE (SCRATCHPAD) ----
hl.bind(mainMod .. " + S", hl.dsp.workspace.toggle_special())
hl.bind(mainMod .. " + ALT + S", hl.dsp.window.move({ workspace = "special" }))

print("Keybindings de workspaces carregados!")