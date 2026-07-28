local mainMod = "SUPER"
local alt     = "ALT"
local ctrl    = "CTRL"

-- ---- MOVE FOCUS ----
hl.bind(mainMod .. " + Left", hl.dsp.focus({ direction = "l" }))
hl.bind(mainMod .. " + Right", hl.dsp.focus({ direction = "r" }))
hl.bind(mainMod .. " + Up", hl.dsp.focus({ direction = "u" }))
hl.bind(mainMod .. " + Down", hl.dsp.focus({ direction = "d" }))
hl.bind(alt .. " + TAB", hl.dsp.window.cycle_next({ next = true }))
hl.bind(alt .. " + SHIFT + TAB", hl.dsp.window.cycle_next({ next = false }))

-- ---- GROUPED WINDOWS ----
hl.bind(mainMod .. " + CTRL + H", hl.dsp.group.prev())
hl.bind(mainMod .. " + CTRL + L", hl.dsp.group.next())

print("Keybindings de navegação carregados!")