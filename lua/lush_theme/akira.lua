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

local lush = require('lush')
local hsl = lush.hsl

---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
    -------- akira color palette --------
    -- hsl("#d76300") hsl("#1f1f38") hsl("#150208") hsl("#050b1e") hsl("#900001") hsl("#feb89b") hsl("#590003") hsl("#14293f") hsl("#490511") hsl("#490006")
    -- hsl("#c7001f") hsl("#313c5b") hsl("#41090f") hsl("#061748") hsl("#4c0003") hsl("#fc9a1a") hsl("#af0004") hsl("#03385f") hsl("#b90101") hsl("#840b11")
    -- hsl("#1f1f39") hsl("#336570") hsl("#940000") hsl("#2c4e69") hsl("#1d1622") hsl("#b20e00") hsl("#be236c") hsl("#769992") hsl("#866147") hsl("#d60000")
    -- hsl("#263559") hsl("#306e60") hsl("#9087ac") hsl("#5d4058") hsl("#242645") hsl("#840000") hsl("#950040") hsl("#9cc2b8") hsl("#d5b484") hsl("#f9fd2f")
    -- hsl("#406c91") hsl("#578d39") hsl("#655b87") hsl("#561634") hsl("#244672") hsl("#660009") hsl("#581458") hsl("#bec8c7") hsl("#c5b063") hsl("#a7938e")
    -- hsl("#6c9fa7") hsl("#5e9058") hsl("#273154") hsl("#450d0c") hsl("#316890") hsl("#43062d") hsl("#3a093b") hsl("#da7bad") hsl("#effffe") hsl("#9aa4ca")
    -- hsl("#a4759b") hsl("#70a16f") hsl("#173132") hsl("#a42903") hsl("#3e7c93") hsl("#2d1747") hsl("#1c041c") hsl("#c15890") hsl("#a1caae") hsl("#5e7eb5")
    -- hsl("#4f3970") hsl("#84b38f") hsl("#1b5956") hsl("#fe0000") hsl("#4a90b3") hsl("#191a41") hsl("#071222") hsl("#92388e") hsl("#79a29e") hsl("#406775")
    -- hsl("#1a3f2e") hsl("#b3e3f2") hsl("#79a06a") hsl("#d26b00") hsl("#7d6874") hsl("#0f0a2b") hsl("#4a5662") hsl("#c70e26") hsl("#527a81") hsl("#608e6e")
    -- hsl("#489665") hsl("#890005") hsl("#6cbc9b") hsl("#bba12a") hsl("#4f3641") hsl("#170126") hsl("#6a8ca9") hsl("#ca5c26") hsl("#39434d") hsl("#6b7850")
    --------------- wires ---------------
    local red_wire =    hsl("#ff6e6e")
    local green_wire =  hsl("#6be28d")
    local yellow_wire = hsl("#fbdda7")
    local blue_wire =   hsl("#b3e3f2")
    local white_wire =  hsl("#ffffff")
    ----------------- other -------------
    local foreground = hsl("#9aa4ca")
    local background = hsl("#1f1f39")
    local undecided_fg = hsl("#ca5c26")
    local undecided_bg = hsl("#2d1747")
    -------------------------------------
    local sym = injected_functions.sym
    return {
        sym"@operator"              {fg=foreground}, -- Operator
        sym"@keyword"               {fg=blue_wire}, -- Keyword
        sym"@punctuation"           {fg=red_wire}, -- Delimiter
        sym"@punctuation.special"   {fg=red_wire}, -- Delimiter
        sym"@number"                {fg=yellow_wire}, -- Number
        sym"@function"              {fg=green_wire}, -- Function
        sym"@function.builtin"      {fg=green_wire}, -- Special
        sym"@variable"              {fg=white_wire}, -- Identifier
        sym"@string"                {fg=yellow_wire}, -- String
        sym"@comment"               {fg=foreground, gui="italic"}, -- Comment
        sym"@constructor"           {fg=blue_wire}, -- Special
        sym"@type"                  {fg=blue_wire}, -- Type
        sym"@type.builtin"          {fg=green_wire}, -- Type
        sym"@constant"              {fg=blue_wire}, -- Constant
        sym"@constant.builtin"      {fg=blue_wire}, -- Special
        sym"@boolean"               {fg=blue_wire}, -- Boolean  
        sym"@markup.heading.1"      {fg=blue_wire, gui="bold"},
        sym"@markup.heading.2"      {fg=blue_wire, gui="bold"},
        sym"@spell.markdown"        {fg=white_wire},
        sym"@markup.list"           {fg=red_wire},
        sym"@markup.list.checked"   {fg=green_wire},
        sym"@markup.list.unchecked" {fg=red_wire},
        
        NeoTreeNormal {fg=white_wire, bg=background},
        -- NeoTreeSignColumn {fg=yellow_wire, bg=yellow_wire},
        -- NeoTreeStatusLine {fg=yellow_wire, bg=yellow_wire},
        -- NeoTreeStatusLineNC {fg=yellow_wire, bg=yellow_wire},
        -- NeoTreeVertSplit {fg=yellow_wire, bg=yellow_wire},
        NeoTreeWinSeparator {fg=white_wire},
        NeoTreeEndOfBuffer {bg=background},
        NeoTreeFloatBorder {fg=blue_wire, bg=background},
        -- NeoTreeFloatTitle {fg=yellow_wire},
        NeoTreeTitleBar {fg=blue_wire, bg=background},
        -- NeoTreeBufferNumber {fg=yellow_wire, bg=yellow_wire},
        -- NeoTreeMessage {fg=yellow_wire, bg=yellow_wire},
        -- NeoTreeFadeText1 {fg=yellow_wire, bg=yellow_wire},
        -- NeoTreeFadeText2 {fg=yellow_wire, bg=yellow_wire},
        NeoTreeDotfile {fg=yellow_wire, bg=yellow_wire},
        NeoTreeHiddenByName {fg=yellow_wire, bg=yellow_wire},
        NeoTreeCursorLine {bg=background.lighten(10)},
        NeoTreeDimText {fg=red_wire},
        NeoTreeDirectoryName {fg=blue_wire},
        NeoTreeDirectoryIcon {fg=blue_wire},
        -- NeoTreeFileIcon {fg=yellow_wire, bg=yellow_wire},
        NeoTreeFileName {fg=white_wire},
        NeoTreeGitUntracked {fg=blue_wire},
        NeoTreeGitUnstaged {fg=blue_wire},
        NeoTreeGitModified {fg=yellow_wire},
        -- NeoTreeNameOpened {fg=yellow_wire, bg=yellow_wire},
        -- NeoTreeSymbolicLinkTarget {fg=yellow_wire, bg=yellow_wire},
        
        
        Normal         {bg=background, fg=foreground}, -- Normal text
        NormalNC         {bg=background, fg=foreground}, -- Normal text
        IblIndent         {fg=red_wire}, -- indent-blankline 
        EndOfBuffer    {fg=foreground, bg=background}, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
        
        CursorLine     {bg=background.lighten(10)}, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
        LineNr         {fg=white_wire, bg=background}, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
        LineNrAbove    {fg=white_wire, bg=background}, -- Line number for when the 'relativenumber' option is set, above the cursor line
        LineNrBelow    {fg=white_wire, bg=background}, -- Line number for when the 'relativenumber' option is set, below the cursor line
        -- NonText and Whitespace must NOT be fg==bg: snacks picker links its path,
        -- ignored-path and result-total groups to NonText, and listchars uses Whitespace.
        NonText        {fg=background.lighten(28)}, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
        Whitespace     {fg=background.lighten(20)}, -- "nbsp", "space", "tab" and "trail" in 'listchars'
        Comment        {fg=foreground, gui="italic"}, -- Any comment -- matches @comment
        StatusLine     {fg=background, bg=foreground}, -- Status line of current window
        PmenuSel       {fg=background, bg=blue_wire, gui="bold"}, -- Popup menu: Selected item.
        Search         {fg=background, bg=foreground}, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
        SignColumn     {fg=background.lighten(25), bg=background}, -- Column where |signs| are displayed
        CursorLineNr   {fg=white_wire, bg=background}, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
        CursorLineSign {bg=background}, -- Like SignColumn when 'cursorline' is set for the cursor line
        NormalFloat    {fg=foreground, bg=background.darken(15)}, -- Normal text in floating windows.
        FloatBorder    {fg=blue_wire, bg=background.darken(15)}, -- Border of floating windows.
        Pmenu          {fg=white_wire, bg=background.darken(15)}, -- Popup menu: Normal item.
        Visual         {fg=background, bg=foreground, gui="bold"}, -- Visual mode selection
        Float          {fg=yellow_wire}, --   A floating point constant: 2.3e10
        String         {fg=yellow_wire}, --   A string constant: "this is a string" -- matches @string
        Special        {fg=yellow_wire}, -- (*) Any special symbol

        -- Legacy syntax groups. These are load-bearing: nvim 0.12 bundles parsers for
        -- only c/lua/markdown/markdown_inline/query/vim/vimdoc, so python, bash, json,
        -- yaml and toml all fall through to runtime/syntax/*.vim and use these.
        -- They also back every @lsp.type.* group via runtime/colors/vim.lua.
        -- Colours mirror the @-capture choices above so lua and python look the same.
        Constant       {fg=blue_wire}, -- (*) Any constant
        Character      {fg=yellow_wire}, --   A character constant: 'c', '\n'
        Number         {fg=yellow_wire}, --   A number constant: 234, 0xff
        Boolean        {fg=blue_wire}, --   A boolean constant: TRUE, false

        Identifier     {fg=white_wire}, -- (*) Any variable name
        Function       {fg=green_wire}, --   Function name (also: methods for classes)

        Statement      {fg=blue_wire}, -- (*) Any statement
        Conditional    {fg=blue_wire, gui="italic"}, --   if, then, else, endif, switch, etc.
        Repeat         {fg=blue_wire}, --   for, do, while, etc.
        Label          {fg=blue_wire}, --   case, default, etc.
        Operator       {fg=foreground}, --   "sizeof", "+", "*", etc.
        Keyword        {fg=blue_wire}, --   any other keyword
        Exception      {fg=blue_wire}, --   try, catch, throw

        PreProc        {fg=blue_wire}, -- (*) Generic Preprocessor
        Include        {fg=blue_wire}, --   Preprocessor #include
        Define         {fg=blue_wire}, --   Preprocessor #define
        Macro          {fg=blue_wire}, --   Same as Define
        PreCondit      {fg=blue_wire}, --   Preprocessor #if, #else, #endif, etc.

        Type           {fg=blue_wire}, -- (*) int, long, char, etc.
        StorageClass   {fg=blue_wire}, --   static, register, volatile, etc.
        Structure      {fg=blue_wire}, --   struct, union, enum, etc.
        Typedef        {fg=blue_wire}, --   A typedef

        SpecialChar    {fg=red_wire}, --   Special character in a constant
        Tag            {fg=blue_wire, gui="bold"}, --   You can use CTRL-] on this
        Delimiter      {fg=red_wire}, --   Character that needs attention
        SpecialComment {fg=foreground, gui="italic"}, --   Special things inside a comment (e.g. '\n')
        Debug          {fg=red_wire}, --   Debugging statements

        -- Base groups the starter template left undefined. snacks, blink and gitsigns
        -- all link into these, so they have to exist.
        Underlined     {fg=blue_wire, gui="underline"},
        Error          {fg=red_wire},
        ErrorMsg       {fg=red_wire, gui="bold"},
        WarningMsg     {fg=yellow_wire},
        MoreMsg        {fg=green_wire},
        ModeMsg        {fg=green_wire, gui="bold"},
        Question       {fg=blue_wire},
        Todo           {fg=yellow_wire, bg=background.lighten(15), gui="bold"},
        Title          {fg=blue_wire, gui="bold"},
        Directory      {fg=blue_wire},
        Bold           {gui="bold"},
        Italic         {gui="italic"},
        Conceal        {fg=background.lighten(35)},
        MatchParen     {fg=red_wire, bg=background.lighten(20), gui="bold"},
        SpecialKey     {fg=background.lighten(30)},
        Ignore         {fg=background},
        ColorColumn    {bg=background.lighten(8)},
        CursorColumn   {bg=background.lighten(10)},
        VisualNOS      {fg=background, bg=foreground},

        -- ColorColumn    {fg=undecided_fg, bg=undecided_bg}, -- Columns set with 'colorcolumn'
        -- Conceal        {fg=undecided_fg, bg=undecided_bg}, -- Placeholder characters substituted for concealed text (see 'conceallevel')
        -- Cursor         {fg=undecided_fg, bg=undecided_bg}, -- Character under the cursor
        -- CurSearch      {fg=undecided_fg, bg=undecided_bg}, -- Highlighting a search pattern under the cursor (see 'hlsearch')
        -- lCursor        {fg=undecided_fg, bg=undecided_bg}, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
        -- CursorIM       {fg=undecided_fg, bg=undecided_bg}, -- Like Cursor, but used when in IME mode |CursorIM|
        -- CursorColumn   {fg=undecided_fg, bg=undecided_bg}, -- Screen-column at the cursor, when 'cursorcolumn' is set.
        -- Directory      {fg=undecided_fg, bg=undecided_bg}, -- Directory names (and other special names in listings)
        -- DiffAdd        {fg=undecided_fg, bg=undecided_bg}, -- Diff mode: Added line |diff.txt|
        -- DiffChange     {fg=undecided_fg, bg=undecided_bg}, -- Diff mode: Changed line |diff.txt|
        -- DiffDelete     {fg=undecided_fg, bg=undecided_bg}, -- Diff mode: Deleted line |diff.txt|
        -- DiffText       {fg=undecided_fg, bg=undecided_bg}, -- Diff mode: Changed text within a changed line |diff.txt|
        -- TermCursor     {gui="reverse"}, -- Cursor in a focused terminal
        -- TermCursorNC   {gui="reverse"}, -- Cursor in an unfocused terminal
        -- ErrorMsg       {fg=undecided_fg, bg=undecided_bg, gui="bold,italic"}, -- Error messages on the command line
        -- VertSplit      {fg=undecided_fg, bg=undecided_bg}, -- Column separating vertically split windows
        -- Folded         {fg=undecided_fg, bg=undecided_bg}, -- Line used for closed folds
        -- FoldColumn     {fg=undecided_fg, bg=undecided_bg}, -- 'foldcolumn'
        -- IncSearch      {fg=undecided_fg, bg=undecided_bg}, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
        -- Substitute     {fg=undecided_fg, bg=undecided_bg}, -- |:substitute| replacement text highlighting
        -- CursorLineFold {fg=undecided_fg, bg=undecided_bg}, -- Like FoldColumn when 'cursorline' is set for the cursor line
        -- MatchParen     {fg=undecided_fg, bg=undecided_bg, gui="bold"}, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
        -- ModeMsg        {fg=undecided_fg, bg=undecided_bg, gui="bold"}, -- 'showmode' message (e.g., "-- INSERT -- ")
        -- MsgArea        {fg=undecided_fg, bg=undecided_bg}, -- Area for messages and cmdline
        -- MsgSeparator   {fg=undecided_fg, bg=undecided_bg}, -- Separator for scrolled messages, `msgsep` flag of 'display'
        -- MoreMsg        {fg=undecided_fg, bg=undecided_bg}, -- |more-prompt|
        -- FloatTitle     {fg=undecided_fg, bg=undecided_bg}, -- Title of floating windows.
        -- NormalNC       {fg=undecided_fg, bg=undecided_bg}, -- normal text in non-current windows
        -- Question       {fg=undecided_fg, bg=undecided_bg}, -- |hit-enter| prompt and yes/no questions
        -- QuickFixLine   {fg=undecided_fg, bg=undecided_bg, gui="bold"}, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
        -- SpecialKey     {fg=undecided_fg, bg=undecided_bg}, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
        -- StatusLineNC   {fg=undecided_fg, bg=undecided_bg}, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
        -- TabLine        {fg=undecided_fg, bg=undecided_bg}, -- Tab pages line, not active tab page label
        -- TabLineFill    {fg=undecided_fg, bg=undecided_bg}, -- Tab pages line, where there are no labels
        -- TabLineSel     {fg=undecided_fg, bg=undecided_bg}, -- Tab pages line, active tab page label
        -- Title          {fg=undecided_fg, bg=undecided_bg, gui="bold"}, -- Titles for output from ":set all", ":autocmd" etc.
        -- VisualNOS      {fg=undecided_fg, bg=undecided_bg, gui="bold"}, -- Visual mode selection when vim is "Not Owning the Selection".
        -- WarningMsg     {fg=undecided_fg, bg=undecided_bg}, -- Warning messages
        -- Winseparator   {fg=undecided_fg, bg=undecided_bg}, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
        -- WildMenu       {fg=undecided_fg, bg=undecided_bg}, -- Current match in 'wildmenu' completion
        -- WinBar         {fg=undecided_fg, bg=undecided_bg}, -- Window bar of current window
        -- WinBarNC       {fg=undecided_fg, bg=undecided_bg}, -- Window bar of not-current windows
        -- PmenuKind      {fg=undecided_fg, bg=undecided_bg}, -- Popup menu: Normal item "kind"
        -- PmenuKindSel   {fg=undecided_fg, bg=undecided_bg, gui="bold"}, -- Popup menu: Selected item "kind"
        -- PmenuExtra     {fg=undecided_fg, bg=undecided_bg}, -- Popup menu: Normal item "extra text"
        -- PmenuExtraSel  {fg=undecided_fg, bg=undecided_bg, gui="bold"}, -- Popup menu: Selected item "extra text"
        -- PmenuSbar      {fg=undecided_fg, bg=undecided_bg}, -- Popup menu: Scrollbar.
        -- PmenuThumb     {fg=undecided_fg, bg=undecided_bg}, -- Popup menu: Thumb of the scrollbar.
        -- SpellBad       {gui="undercurl", sp=undecided_fg}, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
        -- SpellCap       {gui="undercurl", sp=undecided_fg}, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
        -- SpellLocal     {gui="undercurl", sp=undecided_fg}, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
        -- SpellRare      {gui="undercurl", sp=undecided_fg}, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
        -- Current capture names. lua and markdown are treesitter-highlighted on 0.12,
        -- so these fire in this editor every day.
        sym"@constant.macro"      {fg=blue_wire}, -- Define
        sym"@string.escape"       {fg=red_wire}, -- SpecialChar
        sym"@string.special"      {fg=red_wire}, -- SpecialChar
        sym"@string.special.url"  {fg=blue_wire, gui="underline"},
        sym"@character"           {fg=yellow_wire}, -- Character
        sym"@character.special"   {fg=red_wire}, -- SpecialChar
        sym"@number.float"        {fg=yellow_wire}, -- Float
        sym"@function.macro"      {fg=blue_wire}, -- Macro
        sym"@function.method"     {fg=green_wire}, -- Function
        sym"@function.call"       {fg=green_wire},
        sym"@variable.parameter"  {fg=white_wire, gui="italic"}, -- Identifier
        sym"@variable.member"     {fg=white_wire}, -- Identifier
        sym"@variable.builtin"    {fg=red_wire, gui="italic"}, -- self, this
        sym"@property"            {fg=white_wire}, -- Identifier
        sym"@keyword.conditional" {fg=blue_wire, gui="italic"}, -- Conditional
        sym"@keyword.repeat"      {fg=blue_wire}, -- Repeat
        sym"@keyword.exception"   {fg=blue_wire}, -- Exception
        sym"@keyword.import"      {fg=blue_wire}, -- Include
        sym"@keyword.return"      {fg=blue_wire},
        sym"@keyword.function"    {fg=blue_wire},
        sym"@keyword.operator"    {fg=blue_wire},
        sym"@keyword.directive"   {fg=blue_wire}, -- PreProc
        sym"@label"               {fg=blue_wire}, -- Label
        sym"@type.definition"     {fg=blue_wire}, -- Typedef
        sym"@module"              {fg=blue_wire, gui="italic"}, -- was @namespace
        sym"@tag"                 {fg=blue_wire}, -- Tag
        sym"@tag.attribute"       {fg=white_wire},
        sym"@tag.delimiter"       {fg=red_wire},
        sym"@attribute"           {fg=green_wire, gui="italic"},
        sym"@debug"               {fg=red_wire}, -- Debug
        sym"@comment.todo"        {fg=yellow_wire, bg=background.lighten(15), gui="bold"},
        sym"@comment.note"        {fg=blue_wire, gui="bold"},
        sym"@comment.warning"     {fg=yellow_wire, gui="bold"},
        sym"@comment.error"       {fg=red_wire, gui="bold"},

        -- Markup. The journal and the obsidian vault are markdown, so these matter.
        sym"@markup.heading.3"    {fg=blue_wire, gui="bold"},
        sym"@markup.heading.4"    {fg=blue_wire, gui="bold"},
        sym"@markup.heading.5"    {fg=blue_wire, gui="bold"},
        sym"@markup.heading.6"    {fg=blue_wire, gui="bold"},
        sym"@markup.strong"       {fg=white_wire, gui="bold"},
        sym"@markup.italic"       {gui="italic"},
        sym"@markup.strikethrough"{gui="strikethrough"},
        sym"@markup.underline"    {gui="underline"},
        sym"@markup.link"         {fg=blue_wire},
        sym"@markup.link.label"   {fg=green_wire},
        sym"@markup.link.url"     {fg=blue_wire, gui="underline"},
        sym"@markup.raw"          {fg=yellow_wire},
        sym"@markup.raw.block"    {fg=yellow_wire},
        sym"@markup.quote"        {fg=foreground, gui="italic"},
        sym"@markup.math"         {fg=yellow_wire},

        -- Diff captures (gitcommit, .diff files)
        sym"@diff.plus"           {fg=green_wire},
        sym"@diff.minus"          {fg=red_wire},
        sym"@diff.delta"          {fg=yellow_wire},
        ------------------------------- diagnostics -------------------------------
        -- Underline groups set sp= only, never fg=: an fg would override the
        -- underlying syntax colour of the token being flagged.
        DiagnosticError { fg=red_wire },
        DiagnosticWarn  { fg=yellow_wire },
        DiagnosticInfo  { fg=blue_wire },
        DiagnosticHint  { fg=foreground },
        DiagnosticOk    { fg=green_wire },

        DiagnosticVirtualTextError { fg=red_wire,    bg=background.lighten(6), gui="italic" },
        DiagnosticVirtualTextWarn  { fg=yellow_wire, bg=background.lighten(6), gui="italic" },
        DiagnosticVirtualTextInfo  { fg=blue_wire,   bg=background.lighten(6), gui="italic" },
        DiagnosticVirtualTextHint  { fg=foreground,  bg=background.lighten(6), gui="italic" },
        DiagnosticVirtualTextOk    { fg=green_wire,  bg=background.lighten(6), gui="italic" },

        DiagnosticVirtualLinesError { fg=red_wire },
        DiagnosticVirtualLinesWarn  { fg=yellow_wire },
        DiagnosticVirtualLinesInfo  { fg=blue_wire },
        DiagnosticVirtualLinesHint  { fg=foreground },
        DiagnosticVirtualLinesOk    { fg=green_wire },

        DiagnosticUnderlineError { gui="undercurl", sp=red_wire },
        DiagnosticUnderlineWarn  { gui="undercurl", sp=yellow_wire },
        DiagnosticUnderlineInfo  { gui="undercurl", sp=blue_wire },
        DiagnosticUnderlineHint  { gui="undercurl", sp=foreground },
        DiagnosticUnderlineOk    { gui="undercurl", sp=green_wire },

        DiagnosticFloatingError { fg=red_wire },
        DiagnosticFloatingWarn  { fg=yellow_wire },
        DiagnosticFloatingInfo  { fg=blue_wire },
        DiagnosticFloatingHint  { fg=foreground },
        DiagnosticFloatingOk    { fg=green_wire },

        DiagnosticSignError { fg=red_wire,    bg=background },
        DiagnosticSignWarn  { fg=yellow_wire, bg=background },
        DiagnosticSignInfo  { fg=blue_wire,   bg=background },
        DiagnosticSignHint  { fg=foreground,  bg=background },
        DiagnosticSignOk    { fg=green_wire,  bg=background },

        DiagnosticDeprecated  { gui="strikethrough", sp=foreground },
        DiagnosticUnnecessary { fg=background.lighten(35), gui="italic" },

        ---------------------------- lsp semantic tokens ---------------------------
        -- Defined explicitly rather than relying on runtime/colors/vim.lua's links,
        -- since colors/akira.lua never runs `hi clear`. basedpyright sends these,
        -- which is most of what makes python readable without a treesitter parser.
        sym"@lsp.type.namespace"     {fg=blue_wire, gui="italic"},
        sym"@lsp.type.type"          {fg=blue_wire},
        sym"@lsp.type.class"         {fg=blue_wire},
        sym"@lsp.type.enum"          {fg=blue_wire},
        sym"@lsp.type.interface"     {fg=blue_wire},
        sym"@lsp.type.struct"        {fg=blue_wire},
        sym"@lsp.type.typeParameter" {fg=blue_wire, gui="italic"},
        sym"@lsp.type.parameter"     {fg=white_wire, gui="italic"},
        sym"@lsp.type.variable"      {fg=white_wire},
        sym"@lsp.type.property"      {fg=white_wire},
        sym"@lsp.type.enumMember"    {fg=blue_wire},
        sym"@lsp.type.event"         {fg=yellow_wire},
        sym"@lsp.type.function"      {fg=green_wire},
        sym"@lsp.type.method"        {fg=green_wire},
        sym"@lsp.type.macro"         {fg=red_wire},
        sym"@lsp.type.keyword"       {fg=blue_wire},
        sym"@lsp.type.modifier"      {fg=blue_wire},
        sym"@lsp.type.comment"       {fg=foreground, gui="italic"},
        sym"@lsp.type.string"        {fg=yellow_wire},
        sym"@lsp.type.number"        {fg=yellow_wire},
        sym"@lsp.type.regexp"        {fg=red_wire},
        sym"@lsp.type.operator"      {fg=foreground},
        sym"@lsp.type.decorator"     {fg=green_wire, gui="italic"},
        sym"@lsp.type.selfKeyword"   {fg=red_wire, gui="italic"},
        sym"@lsp.type.builtinType"   {fg=green_wire},
        sym"@lsp.mod.deprecated"                  {gui="strikethrough"},
        sym"@lsp.typemod.variable.readonly"       {fg=blue_wire},
        sym"@lsp.typemod.variable.defaultLibrary" {fg=green_wire},
        sym"@lsp.typemod.function.defaultLibrary" {fg=green_wire},
        sym"@lsp.typemod.class.defaultLibrary"    {fg=green_wire},

        LspReferenceText            {bg=background.lighten(14)},
        LspReferenceRead            {bg=background.lighten(14)},
        LspReferenceWrite           {bg=background.lighten(18), gui="underline"},
        LspCodeLens                 {fg=background.lighten(35), gui="italic"},
        LspCodeLensSeparator        {fg=background.lighten(30)},
        LspSignatureActiveParameter {fg=yellow_wire, gui="bold"},
        LspInlayHint                {fg=background.lighten(35), bg=background.lighten(6), gui="italic"},

        ----------------------- floats, popups, window chrome ----------------------
        FloatTitle   {fg=blue_wire, bg=background.darken(15), gui="bold"},
        FloatFooter  {fg=foreground, bg=background.darken(15)},

        -- blink.cmp renders through the Pmenu* family
        PmenuKind    {fg=green_wire, bg=background.darken(15)},
        PmenuKindSel {fg=background, bg=blue_wire, gui="bold"},
        PmenuExtra   {fg=foreground, bg=background.darken(15)},
        PmenuExtraSel{fg=background, bg=blue_wire},
        PmenuSbar    {bg=background.lighten(8)},
        PmenuThumb   {bg=foreground},
        PmenuMatch   {fg=yellow_wire, gui="bold"},
        PmenuMatchSel{fg=background, bg=blue_wire, gui="bold"},
        WildMenu     {fg=background, bg=blue_wire},

        StatusLineNC {fg=foreground, bg=background.lighten(8)},
        TabLine      {fg=foreground, bg=background.lighten(6)},
        TabLineFill  {bg=background},
        TabLineSel   {fg=background, bg=blue_wire, gui="bold"},
        WinSeparator {fg=background.lighten(25)},
        VertSplit    {fg=background.lighten(25)},
        WinBar       {fg=foreground, bg=background, gui="bold"},
        WinBarNC     {fg=background.lighten(35), bg=background},
        MsgArea      {fg=foreground},
        MsgSeparator {fg=background.lighten(25)},
        QuickFixLine {bg=background.lighten(14), gui="bold"},

        IncSearch  {fg=background, bg=yellow_wire, gui="bold"},
        CurSearch  {fg=background, bg=yellow_wire, gui="bold"},
        Substitute {fg=background, bg=red_wire},

        Folded         {fg=foreground, bg=background.lighten(8), gui="italic"},
        FoldColumn     {fg=background.lighten(25), bg=background},
        CursorLineFold {fg=blue_wire, bg=background},

        SpellBad   {gui="undercurl", sp=red_wire},
        SpellCap   {gui="undercurl", sp=yellow_wire},
        SpellLocal {gui="undercurl", sp=blue_wire},
        SpellRare  {gui="undercurl", sp=green_wire},

        --------------------------------- diff / git -------------------------------
        -- gitsigns falls back to Added/Changed/Removed for every one of its sign,
        -- number, culhl and staged variants on nvim >= 0.10, so these four cover it.
        Added   {fg=green_wire},
        Changed {fg=yellow_wire},
        Removed {fg=red_wire},

        DiffAdd    {bg=green_wire.darken(70)},
        DiffChange {bg=yellow_wire.darken(75)},
        DiffDelete {fg=red_wire, bg=red_wire.darken(80)},
        DiffText   {bg=yellow_wire.darken(55), gui="bold"},

        GitSignsCurrentLineBlame {fg=background.lighten(30), gui="italic"},
        GitSignsAddInline    {bg=green_wire.darken(55)},
        GitSignsDeleteInline {bg=red_wire.darken(55)},
        GitSignsChangeInline {bg=yellow_wire.darken(55)},
        GitSignsDeleteVirtLn {fg=red_wire, bg=red_wire.darken(80)},
        GitSignsVirtLnum     {fg=background.lighten(25)},

        --------------------------------- blink.cmp --------------------------------
        -- BlinkCmpLabel and BlinkCmpLabelMatch are left undefined by blink unless
        -- appearance.use_nvim_cmp_as_default is on, so the theme must supply them
        -- or fuzzy-match characters render unhighlighted.
        BlinkCmpLabel           {fg=white_wire, bg=background.darken(15)},
        BlinkCmpLabelMatch      {fg=yellow_wire, gui="bold"},
        BlinkCmpLabelDeprecated {fg=background.lighten(35), gui="strikethrough"},
        BlinkCmpLabelDetail     {fg=background.lighten(35), gui="italic"},
        BlinkCmpLabelDescription{fg=background.lighten(35), gui="italic"},
        BlinkCmpSource          {fg=background.lighten(30)},
        BlinkCmpGhostText       {fg=background.lighten(30), gui="italic"},
        BlinkCmpMenuBorder      {fg=blue_wire, bg=background.darken(15)},
        BlinkCmpDocBorder       {fg=blue_wire, bg=background.darken(15)},
        BlinkCmpDocSeparator    {fg=background.lighten(25)},
        BlinkCmpSignatureHelpBorder {fg=blue_wire, bg=background.darken(15)},
        BlinkCmpKind         {fg=blue_wire},
        BlinkCmpKindFunction {fg=green_wire},
        BlinkCmpKindMethod   {fg=green_wire},
        BlinkCmpKindVariable {fg=white_wire},
        BlinkCmpKindField    {fg=white_wire},
        BlinkCmpKindProperty {fg=white_wire},
        BlinkCmpKindText     {fg=foreground},
        BlinkCmpKindSnippet  {fg=yellow_wire},
        BlinkCmpKindKeyword  {fg=blue_wire},
        BlinkCmpKindFile     {fg=blue_wire},
        BlinkCmpKindFolder   {fg=blue_wire},

        --------------------------------- snacks.nvim ------------------------------
        -- Most snacks groups link to base groups already themed above. These are the
        -- ones whose link target was ambiguous or (for the path/totals groups) was
        -- the previously-invisible NonText.
        SnacksPicker            {fg=foreground, bg=background.darken(15)},
        SnacksPickerBorder      {fg=blue_wire, bg=background.darken(15)},
        SnacksPickerTitle       {fg=blue_wire, bg=background.darken(15), gui="bold"},
        SnacksPickerInputBorder {fg=blue_wire, bg=background.darken(15)},
        SnacksPickerInputSearch {fg=yellow_wire},
        SnacksPickerListCursorLine    {fg=background, bg=foreground, gui="bold"},
        SnacksPickerPreviewCursorLine {bg=background.lighten(12)},
        SnacksPickerMatch       {fg=yellow_wire, gui="bold"},
        SnacksPickerDir         {fg=background.lighten(28)},
        SnacksPickerFile        {fg=white_wire},
        SnacksPickerDirectory   {fg=blue_wire},
        SnacksPickerPathHidden  {fg=background.lighten(28)},
        SnacksPickerPathIgnored {fg=background.lighten(22)},
        SnacksPickerTotals      {fg=background.lighten(28)},
        SnacksPickerSelected    {fg=red_wire},
        SnacksPickerUnselected  {fg=background.lighten(22)},
        SnacksPickerIdx         {fg=yellow_wire},
        SnacksPickerTree        {fg=background.lighten(25)},
        SnacksPickerPrompt      {fg=red_wire},
        SnacksPickerLabel       {fg=yellow_wire},

        SnacksIndent      {fg=background.lighten(18)},
        SnacksIndentScope {fg=red_wire},
        SnacksIndentChunk {fg=red_wire},

        SnacksNotifierInfo  {fg=blue_wire},   SnacksNotifierBorderInfo  {fg=blue_wire},
        SnacksNotifierWarn  {fg=yellow_wire}, SnacksNotifierBorderWarn  {fg=yellow_wire},
        SnacksNotifierError {fg=red_wire},    SnacksNotifierBorderError {fg=red_wire},
        SnacksNotifierDebug {fg=foreground},  SnacksNotifierBorderDebug {fg=foreground},
        SnacksNotifierTrace {fg=foreground},  SnacksNotifierBorderTrace {fg=foreground},
        SnacksNotifierHistoryTitle {fg=blue_wire, gui="bold"},

        -- The dashboard's own groups are `default = true` links onto Special,
        -- Number, Title and NonText. Nothing breaks without these, but Special
        -- and Number are both yellow_wire here, so the whole start screen comes
        -- out one colour. Set them explicitly instead.
        SnacksDashboardHeader  {fg=red_wire},
        SnacksDashboardIcon    {fg=blue_wire},
        SnacksDashboardKey     {fg=red_wire},
        SnacksDashboardDesc    {fg=foreground},
        SnacksDashboardFile    {fg=white_wire},
        SnacksDashboardDir     {fg=background.lighten(28)},
        SnacksDashboardTitle   {fg=blue_wire, gui="bold"},
        SnacksDashboardFooter  {fg=background.lighten(28)},
        SnacksDashboardSpecial {fg=yellow_wire},
        SnacksDashboardNormal  {fg=foreground, bg=background},
        SnacksDashboardTerminal {fg=foreground, bg=background},

        SnacksStatusColumnMark {fg=yellow_wire},
        SnacksWinSeparator     {fg=background.lighten(25)},
        SnacksBackdrop         {bg=background.darken(60)},
    }
end)

return theme

-- vi:nowrap
