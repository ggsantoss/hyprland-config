-- Carrega helpers primeiro
require("helpers")

-- Carrega as configurações
require("config.monitors")
require("config.programs")
require("config.env")
require("config.settings")
require("config.input")
require("config.window_rules")
require("config.autostart")

-- Carrega os keybindings
require("config.keybindings.apps")
require("config.keybindings.window_actions")
require("config.keybindings.media")
require("config.keybindings.workspaces")
require("config.keybindings.navigation")
require("config.keybindings.resize_move")
require("config.keybindings.custom_scripts")