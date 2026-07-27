-- You probably always want to set this in your vim file
vim.opt.background = 'dark'
vim.g.colors_name = 'akira'

-- By setting our module to nil, we clear lua's cache,
-- which means the require ahead will *always* occur.
--
-- This isn't strictly required but it can be a useful trick if you are
-- incrementally editing your config a lot and want to be sure your themes
-- changes are being picked up without restarting neovim.
--
-- Note if you're working in on your theme and have :Lushify'd the buffer,
-- your changes will be applied with our without the following line.
--
-- The performance impact of this call can be measured in the hundreds of
-- *nanoseconds* and such could be considered "production safe".
package.loaded['lush_theme.akira'] = nil

-- include our theme file and pass it to lush to apply
require('lush')(require('lush_theme.akira'))

-- Terminal palette.
--
-- Highlight groups don't reach inside a :terminal buffer -- ANSI output is
-- resolved through g:terminal_color_0..15, which Neovim otherwise leaves at its
-- stock saturated primaries. Without this, the built-in terminal, :terminal and
-- anything emitting colour (git, ls, grep, test runners) ignores the theme.
--
-- The seven wires are restated here because lush returns a parsed spec, not the
-- palette; they must match the locals at the top of lua/lush_theme/akira.lua.
-- Everything else is derived, so only these seven can drift.
local hsl = require('lush').hsl
local red, green, yellow, blue = hsl('#ff6e6e'), hsl('#6be28d'), hsl('#fbdda7'), hsl('#b3e3f2')
local fg, bg, white = hsl('#9aa4ca'), hsl('#1f1f39'), hsl('#ffffff')

-- akira has no purple, so magenta is red bent toward it. blue_wire already sits
-- in cyan territory, so the blue slots are darkened to keep 4 and 6 distinct.
local magenta = red.rotate(-40)

local terminal = {
    [0] = bg,       [8]  = bg.lighten(28),
    [1] = red,      [9]  = red.lighten(15),
    [2] = green,    [10] = green.lighten(15),
    [3] = yellow,   [11] = yellow.lighten(15),
    [4] = blue.darken(30), [12] = blue.darken(10),
    [5] = magenta,  [13] = magenta.lighten(15),
    [6] = blue,     [14] = blue.lighten(15),
    [7] = fg,       [15] = white,
}
for slot, colour in pairs(terminal) do
    vim.g['terminal_color_' .. slot] = colour.hex
end

