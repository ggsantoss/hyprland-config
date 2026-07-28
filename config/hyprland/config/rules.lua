-- Suprimir eventos de maximizar
windowrule = {
    name = "suppress-maximize-events",
    match = { class = ".*" },
    suppress_event = "maximize"
}

-- Corrigir problemas de drag no XWayland
windowrule = {
    name = "fix-xwayland-drags",
    match = {
        class = "^$",
        title = "^$",
        xwayland = true,
        float = true,
        fullscreen = false,
        pin = false
    },
    no_focus = true
}

-- Hyprland-run
windowrule = {
    name = "move-hyprland-run",
    match = { class = "hyprland-run" },
    move = "20 monitor_h-120",
    float = true
}

-- Wofi
windowrule = {
    name = "float-wofi",
    match = { class = "wofi" },
    float = true,
    center = true,
    size = "400 500"
}

-- Greenclip
windowrule = {
    name = "float-greenclip",
    match = { class = "greenclip" },
    float = true
}

-- Firefox
windowrule = {
    name = "firefox-opacity",
    match = { class = "firefox" },
    opacity = "1.0 1.0"
}

-- Kitty
windowrule = {
    name = "kitty-opacity",
    match = { class = "kitty" },
    opacity = "0.95 0.95"
}