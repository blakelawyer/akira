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
        NonText        {fg=background, bg=background}, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
        Whitespace     {fg=background, bg=background}, -- "nbsp", "space", "tab" and "trail" in 'listchars'
        Comment        {fg=white_wire, gui="italic"}, -- Any comment
        StatusLine     {bg=foreground}, -- Status line of current window
        PmenuSel       {bg=foreground, gui="bold"}, -- Popup menu: Selected item.
        Search         {fg=background, bg=foreground}, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
        SignColumn     {fg=undecided_fg, bg=background}, -- Column where |signs| are displayed
        CursorLineNr   {fg=white_wire, bg=background}, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
        CursorLineSign {bg=background}, -- Like SignColumn when 'cursorline' is set for the cursor line
        NormalFloat    {fg=red_wire, bg=background}, -- Normal text in floating windows.
        FloatBorder    {fg=red_wire, bg=background}, -- Border of floating windows.
        Pmenu          {fg=white_wire}, -- Popup menu: Normal item.
        Visual         {fg=background, bg=foreground, gui="bold"}, -- Visual mode selection
        Float          {fg=yellow_wire}, --   A floating point constant: 2.3e10
        String         {fg=green_wire}, --   A string constant: "this is a string"
        Special        {fg=yellow_wire}, -- (*) Any special symbol

        Constant       {fg=undecided_fg}, -- (*) Any constant
        Character      {fg=undecided_fg}, --   A character constant: 'c', '\n'
        Number         {fg=undecided_fg}, --   A number constant: 234, 0xff
        Boolean        {fg=undecided_fg}, --   A boolean constant: TRUE, false

        Identifier     {fg=undecided_fg}, -- (*) Any variable name
        Function       {fg=undecided_fg}, --   Function name (also: methods for classes)

        Statement      {fg=undecided_fg}, -- (*) Any statement
        Conditional    {fg=undecided_fg, gui="italic"}, --   if, then, else, endif, switch, etc.
        Repeat         {fg=undecided_fg}, --   for, do, while, etc.
        Label          {fg=undecided_fg}, --   case, default, etc.
        Operator       {fg=undecided_fg}, --   "sizeof", "+", "*", etc.
        Keyword        {fg=undecided_fg}, --   any other keyword
        Exception      {fg=undecided_fg}, --   try, catch, throw

        PreProc        {fg=undecided_fg}, -- (*) Generic Preprocessor
        Include        {fg=undecided_fg}, --   Preprocessor #include
        Define         {fg=undecided_fg}, --   Preprocessor #define
        Macro          {fg=undecided_fg}, --   Same as Define
        PreCondit      {fg=undecided_fg}, --   Preprocessor #if, #else, #endif, etc.

        Type           {fg=undecided_fg}, -- (*) int, long, char, etc.
        StorageClass   {fg=undecided_fg}, --   static, register, volatile, etc.
        Structure      {fg=undecided_fg}, --   struct, union, enum, etc.
        Typedef        {fg=undecided_fg}, --   A typedef

        SpecialChar    {fg=undecided_fg}, --   Special character in a constant
        Tag            {fg=undecided_fg, gui="bold"}, --   You can use CTRL-] on this
        Delimiter      {fg=undecided_fg}, --   Character that needs attention
        SpecialComment {fg=undecided_fg}, --   Special things inside a comment (e.g. '\n')
        Debug          {fg=undecided_fg}, --   Debugging statements

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
        sym"@text.literal"      {fg=undecided_fg}, -- Comment
        sym"@text.reference"    {fg=undecided_fg, gui="bold"}, -- Identifier
        sym"@text.title"        {fg=undecided_fg, gui="bold"}, -- Title
        sym"@text.uri"          {fg=undecided_fg}, -- Underlined
        sym"@text.underline"    {fg=undecided_fg, gui="underline"}, -- Underlined
        sym"@text.todo"         {fg=undecided_fg}, -- Todo
        sym"@constant.macro"    {fg=undecided_fg}, -- Define
        sym"@define"            {fg=undecided_fg}, -- Define
        sym"@macro"             {fg=undecided_fg}, -- Macro
        sym"@string.escape"     {fg=undecided_fg}, -- SpecialChar
        sym"@string.special"    {fg=undecided_fg}, -- SpecialChar
        sym"@character"         {fg=undecided_fg}, -- Character
        sym"@character.special" {fg=undecided_fg}, -- SpecialChar
        sym"@float"             {fg=undecided_fg}, -- Float
        sym"@function.macro"    {fg=undecided_fg}, -- Macro
        sym"@parameter"         {fg=undecided_fg}, -- Identifier
        sym"@method"            {fg=undecided_fg}, -- Function
        sym"@field"             {fg=undecided_fg}, -- Identifier
        sym"@property"          {fg=undecided_fg}, -- Identifier
        sym"@conditional"       {fg=undecided_fg}, -- Conditional
        sym"@repeat"            {fg=undecided_fg}, -- Repeat
        sym"@label"             {fg=undecided_fg}, -- Label
        sym"@exception"         {fg=undecided_fg}, -- Exception
        sym"@type.definition"   {fg=undecided_fg}, -- Typedef
        sym"@storageclass"      {fg=undecided_fg}, -- StorageClass
        sym"@structure"         {fg=undecided_fg}, -- Structure
        sym"@namespace"         {fg=undecided_fg, gui="italic"}, -- Identifier
        sym"@include"           {fg=undecided_fg}, -- Include
        sym"@preproc"           {fg=undecided_fg}, -- PreProc
        sym"@debug"             {fg=undecided_fg}, -- Debug
        sym"@tag"               {fg=undecided_fg}, -- Tag
        -- Underlined     { gui = "underline" }, -- Text that stands out, HTML links
        -- Ignore         {fg=undecided_fg, bg=undecided_bg}, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
        -- Error          {fg=undecided_fg}, -- Any erroneous construct
        -- Todo           {fg=undecided_fg, gui="bold"}, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX
        -- LspReferenceText            {bg=undecided_bg}, -- Used for highlighting "text" references
        -- LspReferenceRead            {bg=undecided_bg}, -- Used for highlighting "read" references
        -- LspReferenceWrite           {bg=undecided_bg}, -- Used for highlighting "write" references
        -- LspCodeLens                 {fg=undecided_fg}, -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
        -- LspCodeLensSeparator        {fg=undecided_fg}, -- Used to color the seperator between two or more code lens.
        -- LspSignatureActiveParameter {fg=undecided_fg}, -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.
        -- DiagnosticError            {fg=red_wire, gui="italic"}, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
        -- DiagnosticVirtualTextError {fg=red_wire, gui="italic"}, -- Used for "Error" diagnostic virtual text.
        -- DiagnosticUnderlineError   {fg=red_wire, gui="italic"}, -- Used to underline "Error" diagnostics.
        -- DiagnosticFloatingError    {fg=red_wire, gui="italic"}, -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
        -- DiagnosticSignError        {fg=red_wire, gui="italic"}, -- Used for "Error" signs in sign column.
        -- DiagnosticWarn             {fg=yellow_wire, gui="italic"}, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
        -- DiagnosticVirtualTextWarn  {fg=yellow_wire, gui="italic"}, -- Used for "Warn" diagnostic virtual text.
        -- DiagnosticFloatingWarn     {fg=yellow_wire, gui="italic"}, -- Used to color "Warn" diagnostic messages in diagnostics float.
        -- DiagnosticSignWarn         {fg=yellow_wire, gui="italic"}, -- Used for "Warn" signs in sign column.
        -- DiagnosticUnderlineWarn    {fg=yellow_wire, gui="italic"}, -- Used to underline "Warn" diagnostics.
        -- DiagnosticInfo             {fg=blue_wire, gui="italic"}, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
        -- DiagnosticVirtualTextInfo  {fg=blue_wire, gui="italic"}, -- Used for "Info" diagnostic virtual text.
        -- DiagnosticUnderlineInfo    {fg=blue_wire, gui="italic"}, -- Used to underline "Info" diagnostics.
        -- DiagnosticFloatingInfo     {fg=blue_wire, gui="italic"}, -- Used to color "Info" diagnostic messages in diagnostics float.
        -- DiagnosticSignInfo         {fg=blue_wire, gui="italic"}, -- Used for "Info" signs in sign column.
        -- DiagnosticHint             {fg=blue_wire, gui="italic"}, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
        -- DiagnosticVirtualTextHint  {fg=blue_wire, gui="italic"}, -- Used for "Hint" diagnostic virtual text.
        -- DiagnosticUnderlineHint    {fg=blue_wire, gui="italic"}, -- Used to underline "Hint" diagnostics.
        -- DiagnosticFloatingHint     {fg=blue_wire, gui="italic"}, -- Used to color "Hint" diagnostic messages in diagnostics float.
        -- DiagnosticSignHint         {fg=blue_wire, gui="italic"}, -- Used for "Hint" signs in sign column.
        -- DiagnosticOk               {fg=green_wire, gui="italic"}, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
        -- DiagnosticVirtualTextOk    {fg=green_wire, gui="italic"}, -- Used for "Ok" diagnostic virtual text.
        -- DiagnosticUnderlineOk      {fg=green_wire, gui="italic"}, -- Used to underline "Ok" diagnostics.
        -- DiagnosticFloatingOk       {fg=green_wire, gui="italic"}, -- Used to color "Ok" diagnostic messages in diagnostics float.
        -- DiagnosticSignOk           {fg=green_wire, gui="italic"}, -- Used for "Ok" signs in sign column.
    }
end)

return theme

-- vi:nowrap
