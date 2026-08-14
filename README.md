# akira

A [lush](https://github.com/rktjmp/lush.nvim)-based neovim colorscheme, plus
generated palette exports for programs that cannot read a lush theme.

## Layout

Sources — edit these:

| Path | What it is |
|------|------------|
| `lua/lush_theme/akira.lua` | The theme. The seven palette wires are defined at the top. |
| `colors/akira.lua` | Colorscheme entry point; also sets `g:terminal_color_0..15`. |
| `lua/lualine/themes/akira.lua` | lualine theme. |
| `export.lua` | The generator that writes everything below. |

Generated outputs — **never hand-edited:**

| Path | Consumer |
|------|----------|
| `alacritty/alacritty.toml` | Alacritty |
| `ghostty/akira` | Ghostty |
| `i3/colors.conf`, `i3/akira.Xresources` | i3 and its bar |
| `bumblebee/akira.json` | bumblebee-status |

Every value in those files is derived from the theme. Editing one by hand is
lost the next time the generator runs, and it silently disagrees with neovim
until then.

## Regenerating

    nvim --headless -l export.lua

Run this after any change to the theme. The exports are checked in, so a theme
change that skips this step leaves the repo internally inconsistent.

## Palette

These are the values akira actually **renders**, not the literals typed into the
theme. lush passes every colour through integer HSL and back, so what reaches
the generated configs is the round-tripped set. It is the canonical set for this
repo, and it is what the tables below carry.

| Name       | Hex       |
|------------|-----------|
| Background | `#1E1E38` |
| Red        | `#FF7070` |
| Green      | `#6AE28C` |
| Yellow     | `#FBDEA7` |
| Blue       | `#B5E4F2` |
| Foreground | `#9BA5CA` |
| White      | `#FFFFFF` |

White round-trips to itself.

The terminal palette fills the remaining ANSI slots by deriving from those
wires: magenta is red rotated toward purple, slots 4 and 12 are the blue wire
darkened so they stay distinct from 6, and the bright half is the normal half
lightened. `ghostty/akira` lists all sixteen resolved slots.
