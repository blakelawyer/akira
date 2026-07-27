-- lualine picks this up automatically via `options.theme = "auto"`, which resolves
-- lualine.themes.<vim.g.colors_name> off the runtimepath before falling back to
-- deriving colours from highlight groups.
--
-- Plain lua, not lush: lualine wants a flat table of {fg, bg, gui} strings.
-- Values must stay in sync with lua/lush_theme/akira.lua and alacritty/alacritty.toml.

local c = {
    red = "#ff6e6e",
    green = "#6be28d",
    yellow = "#fbdda7",
    blue = "#b3e3f2",
    white = "#ffffff",
    fg = "#9aa4ca",
    bg = "#1f1f39",
    bg_alt = "#2a2a4a",
}

local function mode(color)
    return {
        a = { fg = c.bg, bg = color, gui = "bold" },
        b = { fg = c.white, bg = c.bg_alt },
        c = { fg = c.fg, bg = c.bg },
    }
end

return {
    normal = mode(c.blue),
    insert = mode(c.green),
    visual = mode(c.yellow),
    replace = mode(c.red),
    command = mode(c.white),
    terminal = mode(c.green),
    inactive = {
        a = { fg = c.fg, bg = c.bg },
        b = { fg = c.fg, bg = c.bg },
        c = { fg = c.fg, bg = c.bg },
    },
}
