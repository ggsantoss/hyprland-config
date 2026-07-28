-- Modificadores
mainMod = "SUPER"
CONTROL = "CTRL"
ALT = "ALT"
SHIFT = "SHIFT"

-- Aplicativos
terminal = "kitty"
fileManager = "dolphin"
menu = "hyprlauncher"

-- Scripts path (ajuste para seu diretório)
scrPath = "/home/gui/.config/hypr/scripts"

-- Comandos específicos
grim_date = "grim -g \"$(slurp)\" - | tee ~/Imagens/$(date +%Y-%m-%d_%H-%M-%S).png | wl-copy"

-- Exportar variáveis para outros módulos
return {
    mainMod = mainMod,
    CONTROL = CONTROL,
    ALT = ALT,
    SHIFT = SHIFT,
    terminal = terminal,
    fileManager = fileManager,
    menu = menu,
    scrPath = scrPath,
    grim_date = grim_date
}