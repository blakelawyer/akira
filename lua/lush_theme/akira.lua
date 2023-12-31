--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

local lush = require("lush")
local hsl = lush.hsl

-------- akira color palette --------
hsl("#d76300") hsl("#1f1f38") hsl("#150208") hsl("#050b1e") hsl("#900001") hsl("#feb89b") hsl("#590003") hsl("#14293f") hsl("#490511") hsl("#490006")
hsl("#c7001f") hsl("#313c5b") hsl("#41090f") hsl("#061748") hsl("#4c0003") hsl("#fc9a1a") hsl("#af0004") hsl("#03385f") hsl("#b90101") hsl("#840b11")
hsl("#1f1f39") hsl("#336570") hsl("#940000") hsl("#2c4e69") hsl("#1d1622") hsl("#b20e00") hsl("#be236c") hsl("#769992") hsl("#866147") hsl("#d60000")
hsl("#263559") hsl("#306e60") hsl("#9087ac") hsl("#5d4058") hsl("#242645") hsl("#840000") hsl("#950040") hsl("#9cc2b8") hsl("#d5b484") hsl("#f9fd2f")
hsl("#406c91") hsl("#578d39") hsl("#655b87") hsl("#561634") hsl("#244672") hsl("#660009") hsl("#581458") hsl("#bec8c7") hsl("#c5b063") hsl("#a7938e")
hsl("#6c9fa7") hsl("#5e9058") hsl("#273154") hsl("#450d0c") hsl("#316890") hsl("#43062d") hsl("#3a093b") hsl("#da7bad") hsl("#effffe") hsl("#9aa4ca")
hsl("#a4759b") hsl("#70a16f") hsl("#173132") hsl("#a42903") hsl("#3e7c93") hsl("#2d1747") hsl("#1c041c") hsl("#c15890") hsl("#a1caae") hsl("#5e7eb5")
hsl("#4f3970") hsl("#84b38f") hsl("#1b5956") hsl("#fe0000") hsl("#4a90b3") hsl("#191a41") hsl("#071222") hsl("#92388e") hsl("#79a29e") hsl("#406775")
hsl("#1a3f2e") hsl("#b3e3f2") hsl("#79a06a") hsl("#d26b00") hsl("#7d6874") hsl("#0f0a2b") hsl("#4a5662") hsl("#c70e26") hsl("#527a81") hsl("#608e6e")
hsl("#489665") hsl("#890005") hsl("#6cbc9b") hsl("#bba12a") hsl("#4f3641") hsl("#170126") hsl("#6a8ca9") hsl("#ca5c26") hsl("#39434d") hsl("#6b7850")
--------------- wires ---------------
local lime_wire = hsl("#6be28d")
local red_wire = hsl("#ff2e2e")
local yellow_wire = hsl("#f8dc75")
local blue_wire = hsl("#5e7eb5")
local cyan_wire = hsl("#b3e3f2")
local green_wire = hsl("#608e6e")
----------------- other -------------
local foreground = hsl("#9aa4ca")
local background = hsl("#1f1f39")
local undecided = hsl("#ca5c26")
-------------------------------------

local theme = lush(function(injected_functions)
	local sym = injected_functions.sym
	return {
		-- See :h highlight-groups

		Normal({ fg = foreground, bg = background }), -- Normal text

		-- Bars
		StatusLine({ fg = yellow_wire, bg = background.lighten(10) }), -- Status line of current window
		CursorLine({ bg = background.lighten(10) }), -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
		SignColumn({ bg = background }), -- Column where |signs| are displayed

		MsgArea({ bg = background }), -- Area for messages and cmdline
		Visual({ bg = background.lighten(10) }), -- Visual mode selection
		Search({ bg = yellow_wire }), -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.

		-- Cursor: None of these options will apply currently. Need to look for a config/alacritty conflict.
		Cursor({ fg = undecided, bg = undecided }), -- Character under the cursor
		TermCursor({ fg = undecided, bg = undecided }), -- Cursor in a focused terminal
		CurSearch({ fg = undecided, bg = undecided }), -- Highlighting a search pattern under the cursor (see 'hlsearch')
		lCursor({ fg = undecided, bg = undecided }), -- Character under the cursor when |language-mapping| is used (see 'guicursor')
		CursorIM({ fg = undecided, bg = undecided }), -- Like Cursor, but used when in IME mode |CursorIM|
		CursorColumn({ fg = undecided, bg = undecided }), -- Screen-column at the cursor, when 'cursorcolumn' is set.
		TermCursorNC({ fg = undecided, bg = undecided }), -- Cursor in an unfocused terminal

		-- Diffs
		DiffAdd({ fg = green_wire }), -- Diff mode: Added line |diff.txt|
		DiffDelete({ fg = red_wire }), -- Diff mode: Deleted line |diff.txt|
		DiffChange({ fg = blue_wire }), -- Diff mode: Changed line |diff.txt|
		DiffText({ fg = blue_wire }), -- Diff mode: Changed text within a changed line |diff.txt|

		-- Line Numbers
		LineNr({ fg = yellow_wire, bg = background.lighten(10) }), -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		LineNrAbove({ fg = yellow_wire, bg = background.lighten(10) }), -- Line number for when the 'relativenumber' option is set, above the cursor line
		LineNrBelow({ fg = yellow_wire, bg = background.lighten(10) }), -- Line number for when the 'relativenumber' option is set, below the cursor line
		CursorLineNr({ fg = yellow_wire, bg = background.lighten(10) }), -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.

		-- ColorColumn    {fg=undecided.darken(50), bg=undecided}, -- Columns set with 'colorcolumn'
		-- Conceal        {fg=undecided.darken(50), bg=undecided}, -- Placeholder characters substituted for concealed text (see 'conceallevel')
		-- Directory      {fg=undecided.darken(50), bg=undecided}, -- Directory names (and other special names in listings)
		-- EndOfBuffer    {fg=undecided.darken(50), bg=undecided}, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
		-- ErrorMsg       {fg=undecided.darken(50), bg=undecided}, -- Error messages on the command line
		-- VertSplit      {fg=undecided.darken(50), bg=undecided}, -- Column separating vertically split windows
		-- Folded         {fg=undecided.darken(50), bg=undecided}, -- Line used for closed folds FoldColumn     {fg=undecided.darken(50), bg=undecided}, -- 'foldcolumn'
		-- IncSearch      {fg=undecided.darken(50), bg=undecided}, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		-- Substitute     {fg=undecided.darken(50), bg=undecided}, -- |:substitute| replacement text highlighting
		CursorLineFold {}, -- Like FoldColumn when 'cursorline' is set for the cursor line
		CursorLineSign {}, -- Like SignColumn when 'cursorline' is set for the cursor line
		-- MatchParen     {fg=undecided.darken(50), bg=undecided}, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		-- ModeMsg        {fg=undecided.darken(50), bg=undecided}, -- 'showmode' message (e.g., "-- INSERT -- ")
		-- MsgSeparator   {fg=undecided.darken(50), bg=undecided}, -- Separator for scrolled messages, `msgsep` flag of 'display'
		-- MoreMsg        {fg=undecided.darken(50), bg=undecided}, -- |more-prompt|
		-- NonText        {fg=undecided.darken(50), bg=undecided}, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		-- NormalFloat    {fg=undecided.darken(50), bg=undecided}, -- Normal text in floating windows.
		-- FloatBorder    {fg=undecided.darken(50), bg=undecided}, -- Border of floating windows.
		-- FloatTitle     {fg=undecided.darken(50), bg=undecided}, -- Title of floating windows.
		-- NormalNC       {fg=undecided.darken(50), bg=undecided}, -- normal text in non-current windows
		Pmenu          {fg=cyan_wire, bg=background.lighten(10)}, -- Popup menu: Normal item.
		PmenuSel       {fg=background.lighten(10), bg=cyan_wire}, -- Popup menu: Selected item.
		PmenuKind      {fg=undecided.darken(50), bg=undecided}, -- Popup menu: Normal item "kind"
		PmenuKindSel   {fg=undecided.darken(50), bg=undecided}, -- Popup menu: Selected item "kind"
		PmenuExtra     {fg=undecided.darken(50), bg=undecided}, -- Popup menu: Normal item "extra text"
		PmenuExtraSel  {fg=undecided.darken(50), bg=undecided}, -- Popup menu: Selected item "extra text"
		PmenuSbar      {bg=background}, -- Popup menu: Scrollbar.
		PmenuThumb     {bg=blue_wire}, -- Popup menu: Thumb of the scrollbar.
		-- Question       {fg=undecided.darken(50), bg=undecided}, -- |hit-enter| prompt and yes/no questions
		-- QuickFixLine   {fg=undecided.darken(50), bg=undecided}, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		-- SpecialKey     {fg=undecided.darken(50), bg=undecided}, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
		-- SpellBad       {fg=undecided.darken(50), bg=undecided}, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		-- SpellCap       {fg=undecided.darken(50), bg=undecided}, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		-- SpellLocal     {fg=undecided.darken(50), bg=undecided}, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		-- SpellRare      {fg=undecided.darken(50), bg=undecided}, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
		-- StatusLineNC   {fg=undecided.darken(50), bg=undecided}, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		-- TabLine        {fg=undecided.darken(50), bg=undecided}, -- Tab pages line, not active tab page label
		-- TabLineFill    {fg=undecided.darken(50), bg=undecided}, -- Tab pages line, where there are no labels
		-- TabLineSel     {fg=undecided.darken(50), bg=undecided}, -- Tab pages line, active tab page label
		-- Title          {fg=undecided.darken(50), bg=undecided}, -- Titles for output from ":set all", ":autocmd" etc.
		-- VisualNOS      {fg=undecided.darken(50), bg=undecided}, -- Visual mode selection when vim is "Not Owning the Selection".
		-- WarningMsg     {fg=undecided.darken(50), bg=undecided}, -- Warning messages
		-- Whitespace     {fg=undecided.darken(50), bg=undecided}, -- "nbsp", "space", "tab" and "trail" in 'listchars'
		-- Winseparator   {fg=undecided.darken(50), bg=undecided}, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
		-- WildMenu       {fg=undecided.darken(50), bg=undecided}, -- Current match in 'wildmenu' completion
		-- WinBar         {fg=undecided.darken(50), bg=undecided}, -- Window bar of current window
		-- WinBarNC       {fg=undecided.darken(50), bg=undecided}, -- Window bar of not-current windows

		-- Common vim syntax groups used for all kinds of code and markup.
		-- Commented-out groups should chain up to their preferred (*) group
		-- by default.
		--
		-- See :h group-name
		--
		-- Uncomment and edit if you want more specific syntax highlighting.

		Comment({ fg = foreground }), -- Any comment

		Constant({ fg = cyan_wire }), -- (*) Any constant
		-- String         { }, --   A string constant: "this is a string"
		-- Character      { }, --   A character constant: 'c', '\n'
		-- Number         { }, --   A number constant: 234, 0xff
		-- Boolean        { }, --   A boolean constant: TRUE, false
		-- Float          { }, --   A floating point constant: 2.3e10

		Identifier({ fg = yellow_wire }), -- (*) Any variable name
		-- Function       { }, --   Function name (also: methods for classes)

		Statement({ fg = lime_wire }), -- (*) Any statement
		-- Conditional    { }, --   if, then, else, endif, switch, etc.
		-- Repeat         { }, --   for, do, while, etc.
		-- Label          { }, --   case, default, etc.
		-- Operator       { }, --   "sizeof", "+", "*", etc.
		-- Keyword        { }, --   any other keyword
		-- Exception      { }, --   try, catch, throw

		PreProc({ fg = lime_wire }), -- (*) Generic Preprocessor
		-- Include        { }, --   Preprocessor #include
		-- Define         { }, --   Preprocessor #define
		-- Macro          { }, --   Same as Define
		-- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.

		Type({ fg = yellow_wire }), -- (*) int, long, char, etc.
		-- StorageClass   { }, --   static, register, volatile, etc.
		-- Structure      { }, --   struct, union, enum, etc.
		-- Typedef        { }, --   A typedef

		Special({ fg = red_wire }), -- (*) Any special symbol
		-- SpecialChar    { }, --   Special character in a constant
		-- Tag            { }, --   You can use CTRL-] on this
		-- Delimiter      { }, --   Character that needs attention
		-- SpecialComment { }, --   Special things inside a comment (e.g. '\n')
		-- Debug          { }, --   Debugging statements

		-- Underlined     { gui = "underline" }, -- Text that stands out, HTML links
		-- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
		-- Error          { }, -- Any erroneous construct
		-- Todo           { }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

		-- These groups are for the native LSP client and diagnostic system. Some
		-- other LSP clients may use these groups, or use their own. Consult your
		-- LSP client's documentation.

		-- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
		--
		-- LspReferenceText            { } , -- Used for highlighting "text" references
		-- LspReferenceRead            { } , -- Used for highlighting "read" references
		-- LspReferenceWrite           { } , -- Used for highlighting "write" references
		-- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
		-- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
		-- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

		-- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
		--
		-- DiagnosticError            { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		-- DiagnosticWarn             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		-- DiagnosticInfo             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		-- DiagnosticHint             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		-- DiagnosticOk               { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		-- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
		-- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
		-- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
		-- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
		-- DiagnosticVirtualTextOk    { } , -- Used for "Ok" diagnostic virtual text.
		-- DiagnosticUnderlineError   { } , -- Used to underline "Error" diagnostics.
		-- DiagnosticUnderlineWarn    { } , -- Used to underline "Warn" diagnostics.
		-- DiagnosticUnderlineInfo    { } , -- Used to underline "Info" diagnostics.
		-- DiagnosticUnderlineHint    { } , -- Used to underline "Hint" diagnostics.
		-- DiagnosticUnderlineOk      { } , -- Used to underline "Ok" diagnostics.
		-- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
		-- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
		-- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
		-- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
		-- DiagnosticFloatingOk       { } , -- Used to color "Ok" diagnostic messages in diagnostics float.
		-- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
		-- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
		-- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
		-- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.
		-- DiagnosticSignOk           { } , -- Used for "Ok" signs in sign column.

		-- Tree-Sitter syntax groups.
		--
		-- See :h treesitter-highlight-groups, some groups may not be listed,
		-- submit a PR fix to lush-template!
		--
		-- Tree-Sitter groups are defined with an "@" symbol, which must be
		-- specially handled to be valid lua code, we do this via the special
		-- sym function. The following are all valid ways to call the sym function,
		-- for more details see https://www.lua.org/pil/5.html
		--
		-- sym("@text.literal")
		-- sym('@text.literal')
		-- sym"@text.literal"
		-- sym'@text.literal'
		--
		-- For more information see https://github.com/rktjmp/lush.nvim/issues/109

		-- sym"@text.literal"      { }, -- Comment
		-- sym"@text.reference"    { }, -- Identifier
		-- sym"@text.title"        { }, -- Title
		-- sym"@text.uri"          { }, -- Underlined
		-- sym"@text.underline"    { }, -- Underlined
		-- sym"@text.todo"         { }, -- Todo
		-- sym"@comment"           { }, -- Comment
		-- sym"@punctuation"       { }, -- Delimiter
		-- sym"@constant"          { }, -- Constant
		-- sym"@constant.builtin"  { }, -- Special
		-- sym"@constant.macro"    { }, -- Define
		-- sym"@define"            { }, -- Define
		-- sym"@macro"             { }, -- Macro
		-- sym"@string"            { }, -- String
		-- sym"@string.escape"     { }, -- SpecialChar
		-- sym"@string.special"    { }, -- SpecialChar
		-- sym"@character"         { }, -- Character
		-- sym"@character.special" { }, -- SpecialChar
		-- sym"@number"            { }, -- Number
		-- sym"@boolean"           { }, -- Boolean
		-- sym"@float"             { }, -- Float
		-- sym"@function"          { }, -- Function
		-- sym"@function.builtin"  { }, -- Special
		-- sym"@function.macro"    { }, -- Macro
		-- sym"@parameter"         { }, -- Identifier
		-- sym"@method"            { }, -- Function
		-- sym"@field"             { }, -- Identifier
		-- sym"@property"          { }, -- Identifier
		-- sym"@constructor"       { }, -- Special
		-- sym"@conditional"       { }, -- Conditional
		-- sym"@repeat"            { }, -- Repeat
		-- sym"@label"             { }, -- Label
		-- sym"@operator"          { }, -- Operator
		-- sym"@keyword"           { }, -- Keyword
		-- sym"@exception"         { }, -- Exception
		-- sym"@variable"          { }, -- Identifier
		-- sym"@type"              { }, -- Type
		-- sym"@type.definition"   { }, -- Typedef
		-- sym"@storageclass"      { }, -- StorageClass
		-- sym"@structure"         { }, -- Structure
		-- sym"@namespace"         { }, -- Identifier
		-- sym"@include"           { }, -- Include
		-- sym"@preproc"           { }, -- PreProc
		-- sym"@debug"             { }, -- Debug
		-- sym"@tag"               { }, -- Tag
	}
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
