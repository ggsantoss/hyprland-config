hl.config({
    input = {
        kb_layout  = "br",
        kb_variant = "abnt2",

        follow_mouse = 1,

        sensitivity = 0,

        touchpad = {
            natural_scroll = false,
        },
    },
})

hl.gesture({
    fingers   = 3,
    direction = "horizontal",
    action    = "workspace",
})

print("Configurações de input carregadas!")