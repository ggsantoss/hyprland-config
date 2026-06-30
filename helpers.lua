-- Helper para criar binds comuns
function bind(mods, key, action, opts)
    opts = opts or {}
    local mod_str = type(mods) == "table" and table.concat(mods, " + ") or mods
    local full_key = mod_str .. " + " .. key
    hl.bind(full_key, action, opts)
end

-- Helper para exec_cmd com string
function exec_cmd(cmd)
    return hl.dsp.exec_cmd(cmd)
end

-- Helper para foco em workspace
function focus_workspace(ws)
    return hl.dsp.focus({ workspace = ws })
end

-- Helper para mover janela para workspace
function move_to_workspace(ws, follow)
    follow = follow or true
    return hl.dsp.window.move({ workspace = ws, follow = follow })
end

print("Helpers carregados!")