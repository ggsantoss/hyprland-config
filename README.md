# Hyprland Lua Config

Configuração modular do **Hyprland** utilizando **Lua**, compatível com **Hyprland 0.55+**.

## Estrutura

```text
~/.config/hypr/
├── hyprland.conf              # Ponto de entrada
└── lua/
    ├── main.lua               # Carrega todos os módulos
    ├── helpers.lua            # Funções auxiliares
    └── config/
        ├── monitors.lua       # Configuração de monitores
        ├── programs.lua       # Programas e caminhos
        ├── env.lua            # Variáveis de ambiente
        ├── settings.lua       # Aparência e comportamento
        ├── input.lua          # Teclado, mouse e touchpad
        ├── window_rules.lua   # Regras de janelas
        ├── autostart.lua      # Aplicativos iniciados automaticamente
        └── keybindings/
            ├── apps.lua             # Aplicativos
            ├── window_actions.lua   # Gerenciamento de janelas
            ├── media.lua            # Volume e brilho
            ├── workspaces.lua       # Workspaces
            ├── navigation.lua       # Navegação entre janelas
            ├── resize_move.lua      # Redimensionar e mover
            └── custom_scripts.lua   # Scripts personalizados
```

---

## Instalação

Clone o repositório para o diretório de configuração do Hyprland:

```bash
git clone https://github.com/seu-usuario/hyprland-config ~/.config/hypr
```

Depois, ajuste o nome do usuário no arquivo `programs.lua`:

```bash
sed -i 's/gui/seu-usuario/g' ~/.config/hypr/lua/config/programs.lua
```

---

## Dependências

Instale os seguintes pacotes:

```text
hyprland
kitty
waybar
hyprpaper
wofi
grim
slurp
jq
playerctl
brightnessctl
hyprpicker
greenclip
cliphist
mpvpaper
```

---

## Estrutura dos módulos

| Arquivo            | Descrição                          |
| ------------------ | ---------------------------------- |
| `main.lua`         | Carrega toda a configuração        |
| `helpers.lua`      | Funções utilitárias compartilhadas |
| `monitors.lua`     | Configuração dos monitores         |
| `programs.lua`     | Caminhos e programas padrão        |
| `env.lua`          | Variáveis de ambiente              |
| `settings.lua`     | Aparência e opções gerais          |
| `input.lua`        | Configuração de teclado e mouse    |
| `window_rules.lua` | Regras para janelas                |
| `autostart.lua`    | Inicialização automática           |
| `keybindings/`     | Organização de todos os atalhos    |

---

# Atalhos principais

| Atalho                    | Ação                        |
| ------------------------- | --------------------------- |
| `SUPER + T`               | Abrir terminal              |
| `SUPER + B`               | Abrir navegador             |
| `SUPER + D`               | Launcher de aplicativos     |
| `SUPER + Q`               | Fechar janela               |
| `SUPER + W`               | Alternar modo flutuante     |
| `SUPER + S`               | Scratchpad                  |
| `SUPER + 1-0`             | Alternar workspace          |
| `SUPER + SHIFT + 1-0`     | Mover janela para workspace |
| `SUPER + ← ↑ ↓ →`         | Mover foco                  |
| `SUPER + SHIFT + ← ↑ ↓ →` | Redimensionar janela        |
| `SUPER + SHIFT + R`       | Recarregar configuração     |

---

# Personalização

## Monitor

```lua
hl.monitor({
    output = "HDMI-A-1",
    mode = "1920x1080@75",
})
```

---

## Programas

```lua
terminal = "kitty"
browser = "brave"

scratchPath = "/home/seu-usuario/.config/hypr/scripts"
```

---

## Aparência

```lua
gaps_in = 1
gaps_out = 1
```

---

# Scripts

Os scripts localizados em:

```text
~/.config/hypr/scripts/
```

devem possuir permissão de execução:

```bash
chmod +x ~/.config/hypr/scripts/*.sh
```

Scripts incluídos:

| Script                 | Função                     |
| ---------------------- | -------------------------- |
| `volumecontrol.sh`     | Controle de volume         |
| `brightnesscontrol.sh` | Controle de brilho         |
| `keyboardswitch.sh`    | Alternar layout do teclado |
| `logoutlaunch.sh`      | Menu de logout             |

---

# Comandos úteis

Recarregar a configuração:

```bash
hyprctl reload
```

Visualizar os logs:

```bash
cat /tmp/hypr/*.log
```

Listar todos os atalhos registrados:

```bash
hyprctl binds
```

---

# Requisitos

* Hyprland **0.55** ou superior
* Configuração baseada em **Lua**
* Wayland

---

# Licença

Distribuído sob a licença **MIT**.
