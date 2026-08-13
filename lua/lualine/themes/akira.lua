-- lualine picks this up automatically via `options.theme = "auto"`, which resolves
-- lualine.themes.<vim.g.colors_name> off the runtimepath before falling back to
-- deriving colours from highlight groups.
--
-- Plain lua, not lush: lualine wants a flat table of {fg, bg, gui} strings. So
-- rather than restate the palette, read it back out of the highlight groups the
-- theme has already set. This file runs after the colorscheme -- lualine loads
-- it from `theme = "auto"` at setup -- so the groups below are populated.
--
-- Restating was the bug. lush round-trips every hsl() through integer HSL, so
-- the literals declared in lua/lush_theme/akira.lua are not what renders: the
-- statusline was a few units off from the window under it in all seven wires.
-- Reading resolved groups gets the rendered values by construction, and there is
-- nothing left to keep in sync by hand.

-- No hex fallback on purpose. A literal here could only be the *declared*
-- palette, which is the spelling this change exists to stop rendering, and it
-- would sit unnoticed until the day it was used. "NONE" is a valid highlight
-- value, so a missing group degrades visibly instead of silently wrong.
local function hex(group, key)
    local hl = vim.api.nvim_get_hl(0, { name = group, link = false })
    if not hl[key] then
        return "NONE"
    end
    return string.format("#%06x", hl[key])
end

-- Each of these groups is set to exactly one palette wire in the theme, so the
-- indirection costs nothing and the wire is recoverable from the rendered
-- output. bg_alt was #2a2a4a, a shade that appeared nowhere else in the theme;
-- CursorLine is the theme's own "one step off the background" and replaces it.
local c = {
    red = hex("Removed", "fg"),
    green = hex("Added", "fg"),
    yellow = hex("Changed", "fg"),
    blue = hex("Statement", "fg"),
    white = hex("Identifier", "fg"),
    fg = hex("Normal", "fg"),
    bg = hex("Normal", "bg"),
    bg_alt = hex("CursorLine", "bg"),
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
