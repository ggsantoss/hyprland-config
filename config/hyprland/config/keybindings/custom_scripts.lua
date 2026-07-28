local mainMod = "SUPER"
local ctrl    = "CTRL"
local alt     = "ALT"

-- ---- CUSTOM SCRIPTS ----
hl.bind(mainMod .. " + K", hl.dsp.exec_cmd(scratchPath .. "/keyboardswitch.sh"))
hl.bind(mainMod .. " + slash", hl.dsp.exec_cmd("pkill -x rofi || " .. scratchPath .. "/keybinds_hint.sh c"))
hl.bind(mainMod .. " + ALT + A", hl.dsp.exec_cmd("pkill -x rofi || " .. scratchPath .. "/animations.sh"))
hl.bind(mainMod .. " + ALT + G", hl.dsp.exec_cmd(scratchPath .. "/gamemode.sh"))
hl.bind(mainMod .. " + ALT + Right", hl.dsp.exec_cmd(scratchPath .. "/swwwallpaper.sh -n"))
hl.bind(mainMod .. " + ALT + Left", hl.dsp.exec_cmd(scratchPath .. "/swwwallpaper.sh -p"))
hl.bind(mainMod .. " + ALT + Up", hl.dsp.exec_cmd(scratchPath .. "/wbarconfgen.sh n"))
hl.bind(mainMod .. " + ALT + Down", hl.dsp.exec_cmd(scratchPath .. "/wbarconfgen.sh p"))
hl.bind(mainMod .. " + SHIFT + R", hl.dsp.exec_cmd("pkill -x rofi || " .. scratchPath .. "/wallbashtoggle.sh -m"))
hl.bind(mainMod .. " + SHIFT + T", hl.dsp.exec_cmd("pkill -x rofi || " .. scratchPath .. "/themeselect.sh"))
hl.bind(mainMod .. " + SHIFT + A", hl.dsp.exec_cmd("pkill -x rofi || " .. scratchPath .. "/rofiselect.sh"))
hl.bind(mainMod .. " + SHIFT + X", hl.dsp.exec_cmd("pkill -x rofi || " .. scratchPath .. "/themestyle.sh"))
hl.bind(mainMod .. " + SHIFT + W", hl.dsp.exec_cmd("pkill -x rofi || " .. scratchPath .. "/swwwallselect.sh"))
hl.bind(mainMod .. " + V", hl.dsp.exec_cmd("pkill -x rofi || " .. scratchPath .. "/cliphist.sh c"))
hl.bind(mainMod .. " + SHIFT + V", hl.dsp.exec_cmd("pkill -x rofi || " .. scratchPath .. "/cliphist.sh"))
hl.bind(mainMod .. " + SHIFT + P", hl.dsp.exec_cmd("hyprpicker -a"))
hl.bind(mainMod .. " + SHIFT + F", hl.dsp.exec_cmd(scratchPath .. "/windowpin.sh"))
hl.bind(mainMod .. " + Backspace", hl.dsp.exec_cmd(scratchPath .. "/logoutlaunch.sh"))
hl.bind(ctrl .. " + ALT + W", hl.dsp.exec_cmd("killall waybar || (env reload_flag=1 " .. scratchPath .. "/wbarconfgen.sh)"))
hl.bind(ctrl .. " + T", hl.dsp.exec_cmd("/home/gui/Programming/tranzlate/translate.sh"))
hl.bind(ctrl .. " + SHIFT + Escape", hl.dsp.exec_cmd(scratchPath .. "/sysmonlaunch.sh"))
hl.bind(mainMod .. " + A", hl.dsp.exec_cmd("pkill -x rofi || " .. scratchPath .. "/rofilaunch.sh d"))
hl.bind(mainMod .. " + Tab", hl.dsp.exec_cmd("pkill -x rofi || " .. scratchPath .. "/rofilaunch.sh w"))
hl.bind(mainMod .. " + SHIFT + E", hl.dsp.exec_cmd("pkill -x rofi || " .. scratchPath .. "/rofilaunch.sh f"))
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd("pkill waybar; waybar &"))

print("Keybindings de scripts customizados carregados!")