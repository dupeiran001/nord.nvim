local theme = {}

function theme.highlights(colors, config)
  local named_colors = colors.named_colors
  local nord = colors.nord

  local italic = config.italic == false and "NONE" or "italic"
  local italic_undercurl = config.italic_undercurl == false and "undercurl" or "italic,undercurl"
  local bold = config.bold == false and "NONE" or "bold"
  local reverse_bold = config.bold == false and "reverse" or "reverse,bold"
  local bold_underline = config.bold == false and "underline" or "bold,underline"
  local bold_italic;
  if config.bold == false then
    bold_italic = config.italic == false and "NONE" or "italic"
  elseif config.italic == false then
    bold_italic = "bold"
  else
    bold_italic = "bold,italic"
  end


  local function remove_background(group)
    group["bg"] = colors.none
  end

  local function load_syntax()
    local syntax = {
      Type = { fg = nord.nord9_gui },                                             -- int, long, char, etc.
      StorageClass = { fg = nord.nord9_gui },                                     -- static, register, volatile, etc.
      Structure = { fg = nord.nord9_gui },                                        -- struct, union, enum, etc.
      Constant = { fg = nord.nord4_gui },                                         -- any constant
      Character = { fg = nord.nord14_gui },                                       -- any character constant: 'c', '\n'
      Number = { fg = nord.nord15_gui },                                          -- a number constant: 5
      Boolean = { fg = nord.nord9_gui },                                          -- a boolean constant: TRUE, false
      Float = { fg = nord.nord15_gui },                                           -- a floating point constant: 2.3e10
      Statement = { fg = nord.nord9_gui },                                        -- any statement
      Label = { fg = nord.nord9_gui },                                            -- case, default, etc.
      Operator = { fg = nord.nord9_gui },                                         -- sizeof", "+", "*", etc.
      Exception = { fg = nord.nord9_gui },                                        -- try, catch, throw
      PreProc = { fg = nord.nord9_gui },                                          -- generic Preprocessor
      Include = { fg = nord.nord9_gui },                                          -- preprocessor #include
      Define = { fg = nord.nord9_gui },                                           -- preprocessor #define
      Macro = { fg = nord.nord9_gui },                                            -- same as Define
      Typedef = { fg = nord.nord9_gui },                                          -- A typedef
      PreCondit = { fg = nord.nord13_gui },                                       -- preprocessor #if, #else, #endif, etc.
      Special = { fg = nord.nord4_gui },                                          -- any special symbol
      SpecialChar = { fg = nord.nord13_gui },                                     -- special character in a constant
      Tag = { fg = nord.nord4_gui },                                              -- you can use CTRL-] on this
      Delimiter = { fg = nord.nord6_gui },                                        -- character that needs attention like , or .
      SpecialComment = { fg = nord.nord8_gui },                                   -- special things inside a comment
      Debug = { fg = nord.nord11_gui },                                           -- debugging statements
      Underlined = { fg = nord.nord14_gui, bg = nord.none, style = "underline" }, -- text that stands out, HTML links
      Ignore = { fg = nord.nord1_gui },                                           -- left blank, hidden
      Error = { fg = nord.nord11_gui, bg = nord.none, style = bold_underline },   -- any erroneous construct
      Todo = { fg = nord.nord13_gui, bg = nord.none, style = bold_italic },       -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
      Comment = { fg = nord.nord3_gui_bright, style = italic },                   -- italic comments
      Conditional = { fg = nord.nord9_gui, style = italic },                      -- italic if, then, else, endif, switch, etc.
      Keyword = { fg = nord.nord9_gui, style = italic },                          -- italic for, do, while, etc.
      Repeat = { fg = nord.nord9_gui, style = italic },                           -- italic any other keyword
      Function = { fg = nord.nord8_gui, style = italic },                         -- italic funtion names
      Identifier = { fg = nord.nord9_gui, style = italic },                       -- any variable name
      String = { fg = nord.nord14_gui, style = italic },                          -- any string
      htmlLink = { fg = nord.nord14_gui, style = "underline" },
      htmlArg = { fg = nord.nord9_gui },
      htmlTag = { fg = nord.nord4_gui },
      htmlEndTag = { fg = nord.nord4_gui },
      htmlTagN = { fg = nord.nord4_gui },
      htmlTagName = { fg = nord.nord4_gui },
      htmlSpecialTagName = { fg = nord.nord4_gui },
      htmlH1 = { fg = nord.nord12_gui, style = bold },
      htmlH2 = { fg = nord.nord13_gui, style = bold },
      htmlH3 = { fg = nord.nord14_gui, style = bold },
      htmlH4 = { fg = nord.nord8_gui, style = bold },
      htmlH5 = { fg = nord.nord9_gui, style = bold },


      markdownBlockquote = { fg = nord.nord3_gui_bright },
      markdownBold = { fg = nord.nord10_gui, style = bold },
      markdownCode = { fg = nord.nord5_gui },
      markdownCodeBlock = { fg = nord.nord5_gui },
      markdownCodeDelimiter = { fg = nord.nord9_gui },
      markdownH1 = { fg = nord.nord12_gui, style = bold },
      markdownH2 = { fg = nord.nord13_gui, style = bold },
      markdownH3 = { fg = nord.nord14_gui, style = bold },
      markdownH4 = { fg = nord.nord8_gui, style = bold },
      markdownH5 = { fg = nord.nord9_gui, style = bold },
      markdownH6 = { fg = nord.nord15_gui, style = bold },
      markdownH1Delimiter = { fg = nord.nord12_gui },
      markdownH2Delimiter = { fg = nord.nord13_gui },
      markdownH3Delimiter = { fg = nord.nord14_gui },
      markdownH4Delimiter = { fg = nord.nord8_gui },
      markdownH5Delimiter = { fg = nord.nord9_gui },
      markdownH6Delimiter = { fg = nord.nord15_gui },
      markdownId = { fg = nord.nord13_gui },
      markdownIdDeclaration = { fg = nord.nord15_gui },
      markdownIdDelimiter = { fg = nord.nord5_gui },
      markdownLinkDelimiter = { fg = nord.nord14_gui },
      markdownItalic = { fg = nord.nord13_gui, style = italic },
      markdownLinkText = { fg = nord.nord4_gui },
      markdownListMarker = { fg = nord.nord12 },
      markdownOrderedListMarker = { fg = nord.nord12 },
      markdownRule = { fg = nord.nord15_gui },
      markdownUrl = { fg = nord.nord14_gui, style = "underline" },
    }

    return syntax
  end

  local function load_editor()
    -- Editor highlight groups

    local editor = {
      NormalFloat = { fg = nord.nord4_gui, bg = nord.nord1_gui },                        -- normal text and background color for floating windows
      FloatBorder = { fg = nord.nord4_gui, bg = nord.nord1_gui },                        -- floating window border
      ColorColumn = { fg = nord.none, bg = nord.nord1_gui },                             -- used for the columns set with 'colorcolumn'
      Conceal = { fg = nord.nord1_gui },                                                 -- placeholder characters substituted for concealed text (see 'conceallevel')
      Cursor = { fg = nord.nord4_gui, bg = nord.none, style = "reverse" },               -- the character under the cursor
      CursorIM = { fg = nord.nord5_gui, bg = nord.none, style = "reverse" },             -- like Cursor, but used when in IME mode
      Directory = { fg = nord.nord7_gui, bg = nord.none },                               -- directory names (and other special names in listings)
      DiffAdd = { fg = nord.nord14_gui, bg = nord.nord1_gui },                           -- diff mode: Added line
      DiffChange = { fg = nord.nord13_gui, bg = nord.nord1_gui },                        -- diff mode: Changed line
      DiffDelete = { fg = nord.nord11_gui, bg = nord.nord1_gui },                        -- diff mode: Deleted line
      DiffText = { fg = nord.nord15_gui, bg = nord.nord1_gui },                          -- diff mode: Changed text within a changed line
      ErrorMsg = { fg = nord.none },                                                     -- error messages
      Folded = { fg = nord.nord3_gui_bright, bg = nord.none, style = italic },           -- line used for closed folds
      FoldColumn = { fg = nord.nord7_gui },                                              -- 'foldcolumn'
      IncSearch = { fg = nord.nord6_gui, bg = nord.nord10_gui, style = bold_underline }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
      LineNr = { fg = nord.nord3_gui_bright },                                           -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
      CursorLineNr = { fg = nord.nord4_gui },                                            -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
      MatchParen = { fg = nord.nord15_gui, bg = nord.none, style = bold },               -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
      ModeMsg = { fg = nord.nord4_gui, style = bold },                                   -- 'showmode' message (e.g., "-- INSERT -- ")
      MoreMsg = { fg = nord.nord4_gui, style = "bold" },                                 -- |more-prompt|
      -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist
      -- in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line).
      NonText = { fg = nord.nord1_gui },                                           -- See also |hl-EndOfBuffer|.
      Pmenu = { fg = nord.nord4_gui, bg = nord.nord2_gui },                        -- normal item |hl-Pmenu|
      PmenuSel = { fg = nord.nord4_gui, bg = nord.nord10_gui },                    -- selected item |hl-PmenuSel|
      PmenuSbar = { fg = nord.nord4_gui, bg = nord.nord2_gui },                    -- scrollbar |hl-PmenuSbar|
      PmenuThumb = { fg = nord.nord4_gui, bg = nord.nord4_gui },                   -- thumb of the scrollbar  |hl-PmenuThumb|
      PmenuMatch = { fg = nord.nord15_gui, bg = nord.nord2_gui, style = bold },    -- matched text in normal item
      PmenuMatchSel = { fg = nord.nord8_gui, bg = nord.nord10_gui, style = bold }, -- matched text in selected item
      Question = { fg = nord.nord14_gui },                                         -- |hit-enter| prompt and yes/no questions
      QuickFixLine = { fg = nord.nord4_gui, bg = nord.none, style = "reverse" },   -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
      qfLineNr = { fg = nord.nord4_gui, bg = nord.none, style = "reverse" },
      Search = { fg = nord.nord6_gui, bg = nord.nord10_gui },                      -- Unprintable characters: text displayed differently from what it really is.
      Substitute = { fg = nord.nord0_gui, bg = nord.nord12_gui },
      SpecialKey = { fg = nord.nord9_gui },
      SpellBad = { fg = nord.nord11_gui, bg = nord.none, style = italic_undercurl },
      SpellCap = { fg = nord.nord7_gui, bg = nord.none, style = italic_undercurl },
      SpellLocal = { fg = nord.nord8_gui, bg = nord.none, style = italic_undercurl },
      SpellRare = { fg = nord.nord9_gui, bg = nord.none, style = italic_undercurl },
      StatusLine = { fg = nord.nord4_gui, bg = nord.nord2_gui },
      StatusLineNC = { fg = nord.nord4_gui, bg = nord.nord1_gui },
      StatusLineTerm = { fg = nord.nord4_gui, bg = nord.nord2_gui },
      StatusLineTermNC = { fg = nord.nord4_gui, bg = nord.nord1_gui },
      TabLineFill = { fg = nord.nord4_gui, bg = nord.none },
      TablineSel = { fg = nord.nord1_gui, bg = nord.nord9_gui },
      Tabline = { fg = nord.nord4_gui, bg = nord.nord1_gui },
      Title = { fg = nord.nord14_gui, bg = nord.none, style = bold },
      Visual = { fg = nord.none, bg = nord.nord2_gui },
      VisualNOS = { fg = nord.none, bg = nord.nord2_gui },
      WarningMsg = { fg = nord.nord15_gui },
      WildMenu = { fg = nord.nord12_gui, bg = nord.none, style = bold },
      CursorColumn = { fg = nord.none, bg = nord.cursorlinefg },
      CursorLine = { fg = nord.none, bg = nord.cursorlinefg },
      ToolbarLine = { fg = nord.nord4_gui, bg = nord.nord1_gui },
      ToolbarButton = { fg = nord.nord4_gui, bg = nord.none, style = bold },
      NormalMode = { fg = nord.nord4_gui, bg = nord.none, style = "reverse" },
      InsertMode = { fg = nord.nord14_gui, bg = nord.none, style = "reverse" },
      ReplacelMode = { fg = nord.nord11_gui, bg = nord.none, style = "reverse" },
      VisualMode = { fg = nord.nord9_gui, bg = nord.none, style = "reverse" },
      CommandMode = { fg = nord.nord4_gui, bg = nord.none, style = "reverse" },
      Warnings = { fg = nord.nord15_gui },

      healthError = { fg = nord.nord11_gui },
      healthSuccess = { fg = nord.nord14_gui },
      healthWarning = { fg = nord.nord15_gui },


      DashboardShortCut = { fg = nord.nord7_gui },
      DashboardHeader = { fg = nord.nord9_gui },
      DashboardCenter = { fg = nord.nord8_gui },
      DashboardFooter = { fg = nord.nord14_gui, style = italic },

      -- normal text and background color
      Normal = { fg = nord.nord4_gui, bg = nord.nord0_gui },
      NormalNC = { bg = nord.nord0_gui },
      SignColumn = { fg = nord.nord4_gui, bg = nord.none },

      -- the column separating vertically split windows
      VertSplit = { fg = nord.nord0_gui },
      WinSeparator = { fg = nord.nord0_gui },

      EndOfBuffer = { fg = nord.nord1_gui },
    }

    if config.contrast then
      editor.NormalFloat["bg"] = nord.nord0_gui
      editor.FloatBorder["bg"] = nord.nord0_gui
    end

    -- Set transparent background
    if config.disable.background then
      remove_background(editor.Normal)
      remove_background(editor.NormalNC)
      remove_background(editor.SignColumn)
      remove_background(editor.WinBar)
      remove_background(editor.WinBarNC)
    end

    -- Set transparent float backgrounds
    if config.disable.float_background then
      remove_background(editor.NormalFloat)
      remove_background(editor.FloatBorder)
    end

    -- Set transparent cursorline
    if config.disable.cursorline then
      remove_background(editor.CursorLine)
    end

    -- Set transparent eob lines
    if config.disable.eob_lines then
      editor.EndOfBuffer["fg"] = nord.nord0_gui
    end

    -- Inverse highlighting
    if config.inverse.match_paren then
      editor.MatchParen["style"] = "reverse,bold"
    end

    -- Add window split borders
    if config.borders then
      editor.VertSplit["fg"] = nord.nord3_gui_bright
      editor.WinSeparator["fg"] = nord.nord3_gui_bright
    end

    return editor
  end

  local function load_treesitter()
    -- TreeSitter highlight groups

    local treesitter = {
      ["@attribute"] = { fg = nord.nord15_gui },                          -- Annotations that can be attached to the code to denote some kind of meta information. e.g. C++/Dart attributes.
      ["@boolean"] = { fg = nord.nord9_gui, style = bold },               -- Boolean literals: `True` and `False` in Python.
      ["@character"] = { fg = nord.nord14_gui, style = italic },          -- Character literals: `'a'` in C.
      ["@comment"] = { fg = nord.nord3_gui_bright, style = italic },      -- Line comments and block comments.
      ["@keyword.conditional"] = { fg = nord.nord9_gui, style = italic }, -- Keywords related to conditionals: `if`, `when`, `cond`, etc.
      ["@constant"] = { fg = nord.nord13_gui },                           -- Constants identifiers. These might not be semantically constant. E.g. uppercase variables in Python.
      ["@constant.builtin"] = { fg = nord.nord7_gui, style = bold },      -- Built-in constant values: `nil` in Lua.
      ["@constant.macro"] = { fg = nord.nord7_gui, style = bold },        -- Constants defined by macros: `NULL` in C.
      ["@constructor"] = { fg = nord.nord9_gui },                         -- Constructor calls and definitions: `{}` in Lua, and Java constructors.
      -- Syntax/parser errors. This might highlight large sections of code while the user is typing
      -- still incomplete code, use a sensible highlight.
      ["@error"] = { fg = nord.nord11_gui },
      ["@keyword.exception"] = { fg = nord.nord15_gui },                    -- Exception related keywords: `try`, `except`, `finally` in Python.
      ["@variable.member"] = { fg = nord.nord4_gui },                       -- Object and struct fields.
      ["@number.float"] = { fg = nord.nord15_gui },                         -- Floating-point number literals.
      ["@function"] = { fg = nord.nord8_gui, style = italic },              -- Function calls and definitions.
      ["@function.builtin"] = { fg = nord.nord8_gui, style = italic },      -- Built-in functions: `print` in Lua.
      ["@function.macro"] = { fg = nord.nord8_gui, style = bold_italic },   -- Macro defined functions (calls and definitions): each `macro_rules` in Rust.
      ["@keyword.import"] = { fg = nord.nord8_gui, style = italic },        -- File or module inclusion keywords: `#include` in C, `use` or `extern crate` in Rust.
      ["@keyword"] = { fg = nord.nord9_gui, style = italic },               -- Keywords that don't fit into other categories.
      ["@keyword.function"] = { fg = nord.nord8_gui, style = italic, },     -- Keywords used to define a function: `function` in Lua, `def` and `lambda` in Python.
      ["@keyword.operator"] = { fg = nord.nord8_gui, style = italic },      -- Unary and binary operators that are English words: `and`, `or` in Python; `sizeof` in C.
      ["@keyword.return"] = { fg = nord.nord8_gui, style = italic },        -- Keywords like `return` and `yield`.
      ["@label"] = { fg = nord.nord15_gui },                                -- GOTO labels: `label:` in C, and `::label::` in Lua.
      ["@function.method"] = { fg = nord.nord8_gui, style = italic },       -- Method calls and definitions.
      ["@module"] = { fg = nord.nord4_gui, style = italic },                -- Identifiers referring to modules and namespaces.
      ["@number"] = { fg = nord.nord15_gui },                               -- Numeric literals that don't fit into other categories.
      ["@operator"] = { fg = nord.nord9_gui },                              -- Binary or unary operators: `+`, and also `->` and `*` in C.
      ["@variable.parameter"] = { fg = nord.nord8_gui },                    -- Parameters of a function.
      ["@parameter.reference"] = { fg = nord.nord4_gui },                   -- References to parameters of a function.
      ["@property"] = { fg = nord.nord10_gui, style = italic },             -- Same as `@field`.
      ["@punctuation.delimiter"] = { fg = nord.nord8_gui },                 -- Punctuation delimiters: Periods, commas, semicolons, etc.
      ["@punctuation.bracket"] = { fg = nord.nord8_gui },                   -- Brackets, braces, parentheses, etc.
      ["@punctuation.special"] = { fg = nord.nord8_gui },                   -- Special punctuation that doesn't fit into the previous categories.
      ["@keyword.repeat"] = { fg = nord.nord9_gui, style = italic },        -- Keywords related to loops: `for`, `while`, etc.
      ["@string"] = { fg = nord.nord14_gui, style = italic },               -- String literals.
      ["@string.regexp"] = { fg = nord.nord7_gui, style = italic },         -- Regular expression literals.
      ["@string.escape"] = { fg = nord.nord15_gui, style = italic },        -- Escape characters within a string: `\n`, `\t`, etc.
      ["@string.special.symbol"] = { fg = nord.nord15_gui },                -- Identifiers referring to symbols or atoms.
      ["@tag"] = { fg = nord.nord4_gui },                                   -- Tags like HTML tag names.
      ["@tag.attribute"] = { fg = nord.nord15_gui },                        -- HTML tag attributes.
      ["@tag.delimiter"] = { fg = nord.nord15_gui },                        -- Tag delimiters like `<` `>` `/`.
      ["@markup"] = { fg = nord.nord4_gui },                                -- Non-structured text. Like text in a markup language.
      ["@markup.strong"] = { fg = nord.nord10_gui, style = bold },          -- Text to be represented in bold.
      ["@markup.italic"] = { fg = nord.nord13_gui, style = italic },        -- Text to be represented with emphasis.
      ["@markup.underline"] = { fg = nord.nord4_gui, style = "underline" }, -- Text to be represented with an underline.
      ["@markup.heading"] = { fg = nord.nord9_gui, style = bold },          -- Text that is part of a title.
      ["@markup.raw"] = { fg = nord.nord14_gui },                           -- Literal or verbatim text.
      ["@diff.plus"] = { fg = nord.nord14_gui },                            -- added text (for diff files)
      ["@diff.minus"] = { fg = nord.nord11_gui },                           -- deleted text (for diff files)
      ["@markup.link.url"] = { fg = nord.nord14_gui, style = "underline" }, -- URIs like hyperlinks or email addresses.
      ["@markup.math"] = { fg = nord.nord7_gui },                           -- Math environments like LaTeX's `$ ... $`
      ["@markup.link"] = { fg = nord.nord15_gui },                          -- Footnotes, text references, citations, etc.
      ["@markup.environment"] = { fg = nord.nord4_gui },                    -- Text environments of markup languages.
      ["@markup.environment.name"] = { fg = nord.nord4_gui },               -- Text/string indicating the type of text environment. Like the name of a `\begin` block in LaTeX.
      ["@markup.list.checked"] = { fg = nord.nord14_gui },                  -- Checked todo notes.
      ["@markup.list.unchecked"] = { fg = nord.nord9_gui },                 -- Unchecked todo notes.
      ["@comment.todo"] = { fg = nord.nord14_gui },                         -- Text TODOS
      ["@comment.note"] = { fg = nord.nord13_gui, style = bold },           -- Text representation of an informational note.
      ["@comment.warning"] = { fg = nord.nord12_gui, style = bold },        -- Text representation of a warning note.
      ["@comment.error"] = { fg = nord.nord11_gui, style = bold },          -- Text representation of a danger note.
      ["@type"] = { fg = nord.nord9_gui },                                  -- Type (and class) definitions and annotations.
      ["@type.builtin"] = { fg = nord.nord9_gui },                          -- Built-in types: `i32` in Rust.
      ["@variable"] = { fg = nord.nord4_gui, style = bold },                -- Variable names that don't fit into other categories.
      ["@variable.builtin"] = { fg = nord.nord4_gui, style = bold, },       -- Variable names defined by the language: `this` or `self` in Javascript.

      -- Specific to Markdown: different levels of headings
      ["@markup.heading.1.markdown"] = { link = "markdownH1" },
      ["@markup.heading.2.markdown"] = { link = "markdownH2" },
      ["@markup.heading.3.markdown"] = { link = "markdownH3" },
      ["@markup.heading.4.markdown"] = { link = "markdownH4" },
      ["@markup.heading.5.markdown"] = { link = "markdownH5" },
      ["@markup.heading.6.markdown"] = { link = "markdownH6" },
      ["@markup.heading.1.marker.markdown"] = { link = "markdownH1Delimiter" },
      ["@markup.heading.2.marker.markdown"] = { link = "markdownH2Delimiter" },
      ["@markup.heading.3.marker.markdown"] = { link = "markdownH3Delimiter" },
      ["@markup.heading.4.marker.markdown"] = { link = "markdownH4Delimiter" },
      ["@markup.heading.5.marker.markdown"] = { link = "markdownH5Delimiter" },
      ["@markup.heading.6.marker.markdown"] = { link = "markdownH6Delimiter" },

      -- Legacy highlights
      ["@conditional"] = { link = "@keyword.conditional" },
      ["@exception"] = { link = "@keyword.exception" },
      ["@field"] = { link = "@variable.member" },
      ["@float"] = { link = "@number.float" },
      ["@include"] = { link = "@keyword.import" },
      ["@method"] = { link = "@function.method" },
      ["@namespace"] = { link = "@module" },
      ["@parameter"] = { link = "@variable.parameter" },
      ["@repeat"] = { link = "@keyword.repeat" },
      ["@string.regex"] = { link = "@string.regexp" },
      ["@symbol"] = { link = "@string.special.symbol" },
      ["@text"] = { link = "@markup" },
      ["@text.strong"] = { link = "@markup.strong" },
      ["@text.emphasis"] = { link = "@markup.italic" },
      ["@text.underline"] = { link = "@markup.underline" },
      ["@text.title"] = { link = "@markup.heading" },
      ["@text.literal"] = { link = "@markup.raw" },
      ["@text.diff.add"] = { link = "@diff.plus" },
      ["@text.diff.delete"] = { link = "@diff.minus" },
      ["@text.uri"] = { link = "@markup.link.url" },
      ["@text.math"] = { link = "@markup.math" },
      ["@text.reference"] = { link = "@markup.link" },
      ["@text.environment"] = { link = "@markup.environment" },
      ["@text.environment.name"] = { link = "@markup.environment.name" },
      ["@text.todo"] = { link = "@comment.todo" },
      ["@text.warning"] = { link = "@comment.warning" },
      ["@text.note"] = { link = "@comment.note" },
      ["@text.danger"] = { link = "@comment.error" },
    }

    return treesitter
  end

  local function load_lsp()
    -- Lsp highlight groups

    local lsp = {
      LspDiagnosticsDefaultError = { fg = nord.nord11_gui },                              -- used for "Error" diagnostic virtual text
      LspDiagnosticsSignError = { fg = nord.nord11_gui },                                 -- used for "Error" diagnostic signs in sign column
      LspDiagnosticsFloatingError = { fg = nord.nord11_gui },                             -- used for "Error" diagnostic messages in the diagnostics float
      LspDiagnosticsVirtualTextError = { fg = nord.nord11_gui },                          -- Virtual text "Error"
      LspDiagnosticsUnderlineError = { style = "undercurl", sp = nord.nord11_gui },       -- used to underline "Error" diagnostics.
      LspDiagnosticsDefaultWarning = { fg = nord.nord15_gui },                            -- used for "Warning" diagnostic signs in sign column
      LspDiagnosticsSignWarning = { fg = nord.nord15_gui },                               -- used for "Warning" diagnostic signs in sign column
      LspDiagnosticsFloatingWarning = { fg = nord.nord15_gui },                           -- used for "Warning" diagnostic messages in the diagnostics float
      LspDiagnosticsVirtualTextWarning = { fg = nord.nord15_gui },                        -- Virtual text "Warning"
      LspDiagnosticsUnderlineWarning = { style = "undercurl", sp = nord.nord15_gui },     -- used to underline "Warning" diagnostics.
      LspDiagnosticsDefaultInformation = { fg = nord.nord10_gui },                        -- used for "Information" diagnostic virtual text
      LspDiagnosticsSignInformation = { fg = nord.nord10_gui },                           -- used for "Information" diagnostic signs in sign column
      LspDiagnosticsFloatingInformation = { fg = nord.nord10_gui },                       -- used for "Information" diagnostic messages in the diagnostics float
      LspDiagnosticsVirtualTextInformation = { fg = nord.nord10_gui },                    -- Virtual text "Information"
      LspDiagnosticsUnderlineInformation = { style = "undercurl", sp = nord.nord10_gui }, -- used to underline "Information" diagnostics.
      LspDiagnosticsDefaultHint = { fg = nord.nord9_gui },                                -- used for "Hint" diagnostic virtual text
      LspDiagnosticsSignHint = { fg = nord.nord9_gui },                                   -- used for "Hint" diagnostic signs in sign column
      LspDiagnosticsFloatingHint = { fg = nord.nord9_gui },                               -- used for "Hint" diagnostic messages in the diagnostics float
      LspDiagnosticsVirtualTextHint = { fg = nord.nord9_gui },                            -- Virtual text "Hint"
      LspDiagnosticsUnderlineHint = { style = "undercurl", sp = nord.nord10_gui },        -- used to underline "Hint" diagnostics.
      LspReferenceText = { fg = nord.nord4_gui, bg = nord.nord1_gui },                    -- used for highlighting "text" references
      LspReferenceRead = { fg = nord.nord4_gui, bg = nord.nord1_gui },                    -- used for highlighting "read" references
      LspReferenceWrite = { fg = nord.nord4_gui, bg = nord.nord1_gui },                   -- used for highlighting "write" references
      LspSignatureActiveParameter = { fg = nord.none, bg = nord.nord2_gui, style = bold },
      LspCodeLens = { fg = nord.nord3_gui_bright },
      LspInlayHint = { fg = nord.nord3_gui_bright, bg = nord.none },

      -- LSP Semantic Token Groups
      ["@lsp.type.namespace"] = { link = "@namespace" },
      ["@lsp.type.type"] = { link = "@type" },
      ["@lsp.type.class"] = { link = "@type" },
      ["@lsp.type.enum"] = { link = "@type" },
      ["@lsp.type.interface"] = { link = "@type" },
      ["@lsp.type.struct"] = { link = "@type" },
      ["@lsp.type.typeParameter"] = { link = "@type" },
      ["@lsp.type.parameter"] = { link = "@parameter" },
      ["@lsp.type.variable"] = { link = "@variable" },
      ["@lsp.type.property"] = { link = "@property" },
      ["@lsp.type.enumMember"] = { link = "@constant" },
      ["@lsp.type.function"] = { link = "@function" },
      ["@lsp.type.method"] = { link = "@method" },
      ["@lsp.type.macro"] = { link = "@constant.macro" },
      ["@lsp.type.keyword"] = { link = "@keyword" },
      ["@lsp.type.comment"] = { link = "@comment" },
      ["@lsp.type.string"] = { link = "@string" },
      ["@lsp.type.number"] = { link = "@number" },
      ["@lsp.type.regexp"] = { link = "@string.regex" },
      ["@lsp.type.operator"] = { link = "@operator" },
      ["@lsp.type.decorator"] = { link = "@function.macro" },
      ["@lsp.mod.deprecated"] = { style = "strikethrough" },
      ["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
      ["@lsp.typemod.method.defaultLibrary"] = { link = "@function.builtin" },
      ["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },

      DiagnosticError = { link = "LspDiagnosticsDefaultError" },
      DiagnosticWarn = { link = "LspDiagnosticsDefaultWarning" },
      DiagnosticInfo = { link = "LspDiagnosticsDefaultInformation" },
      DiagnosticHint = { link = "LspDiagnosticsDefaultHint" },
      DiagnosticVirtualTextWarn = { link = "LspDiagnosticsVirtualTextWarning" },
      DiagnosticUnderlineWarn = { link = "LspDiagnosticsUnderlineWarning" },
      DiagnosticFloatingWarn = { link = "LspDiagnosticsFloatingWarning" },
      DiagnosticSignWarn = { link = "LspDiagnosticsSignWarning" },
      DiagnosticVirtualTextError = { link = "LspDiagnosticsVirtualTextError" },
      DiagnosticUnderlineError = { link = "LspDiagnosticsUnderlineError" },
      DiagnosticFloatingError = { link = "LspDiagnosticsFloatingError" },
      DiagnosticSignError = { link = "LspDiagnosticsSignError" },
      DiagnosticVirtualTextInfo = { link = "LspDiagnosticsVirtualTextInformation" },
      DiagnosticUnderlineInfo = { link = "LspDiagnosticsUnderlineInformation" },
      DiagnosticFloatingInfo = { link = "LspDiagnosticsFloatingInformation" },
      DiagnosticSignInfo = { link = "LspDiagnosticsSignInformation" },
      DiagnosticVirtualTextHint = { link = "LspDiagnosticsVirtualTextHint" },
      DiagnosticUnderlineHint = { link = "LspDiagnosticsUnderlineHint" },
      DiagnosticFloatingHint = { link = "LspDiagnosticsFloatingHint" },
      DiagnosticSignHint = { link = "LspDiagnosticsSignHint" },
    }

    return lsp
  end

  local function load_plugins()
    -- Plugins highlight groups

    local plugins = {

      -- rainbow delimiter
      RainbowDelimiterOne               = { fg = nord.nord12_gui },
      RainbowDelimiterTwo               = { fg = nord.nord13_gui },
      RainbowDelimiterThree             = { fg = nord.nord14_gui },
      RainbowDelimiterFour              = { fg = nord.nord7_gui },
      RainbowDelimiterFive              = { fg = nord.nord8_gui },
      RainbowDelimiterSix               = { fg = nord.nord9_gui },
      RainbowDelimiterSeven             = { fg = nord.nord15_gui },

      -- nvim-ts-rainbow
      rainbowcol1                       = { fg = nord.nord12_gui },
      rainbowcol2                       = { fg = nord.nord13_gui },
      rainbowcol3                       = { fg = nord.nord14_gui },
      rainbowcol4                       = { fg = nord.nord7_gui },
      rainbowcol5                       = { fg = nord.nord8_gui },
      rainbowcol6                       = { fg = nord.nord9_gui },
      rainbowcol7                       = { fg = nord.nord15_gui },

      -- neorg
      ["@neorg.headings.1.prefix"]      = { link = "markdownH1" },
      ["@neorg.headings.1.title"]       = { link = "markdwonH1" },
      ["@neorg.headings.2.prefix"]      = { link = "markdownH2" },
      ["@neorg.headings.2.title"]       = { link = "markdwonH2" },
      ["@neorg.headings.3.prefix"]      = { link = "markdownH3" },
      ["@neorg.headings.3.title"]       = { link = "markdwonH3" },
      ["@neorg.headings.4.prefix"]      = { link = "markdownH4" },
      ["@neorg.headings.4.title"]       = { link = "markdwonH4" },
      ["@neorg.headings.5.prefix"]      = { link = "markdownH5" },
      ["@neorg.headings.5.title"]       = { link = "markdwonH5" },
      ["@neorg.headings.6.prefix"]      = { link = "markdownH6" },
      ["@neorg.headings.6.title"]       = { link = "markdwonH6" },

      -- Cmp
      CmpItemAbbr                       = { fg = nord.nord4_gui },
      CmpItemAbbrDeprecated             = { fg = nord.nord4_gui },
      CmpItemAbbrMatch                  = { fg = nord.nord3_gui_bright, style = bold },
      CmpItemAbbrMatchFuzzy             = { fg = nord.nord9_gui, underline = true },
      CmpItemMenu                       = { fg = nord.nord3_gui_bright },

      CmpItemKindText                   = { fg = nord.nord12_gui },
      CmpItemKindMethod                 = { fg = nord.nord8_gui },
      CmpItemKindFunction               = { fg = nord.nord8_gui },
      CmpItemKindConstructor            = { fg = nord.nord13_gui },
      CmpItemKindField                  = { fg = nord.nord8_gui },
      CmpItemKindClass                  = { fg = nord.nord13_gui },
      CmpItemKindInterface              = { fg = nord.nord13_gui },
      CmpItemKindModule                 = { fg = nord.nord8_gui },
      CmpItemKindProperty               = { fg = nord.nord8_gui },
      CmpItemKindValue                  = { fg = nord.nord12_gui },
      CmpItemKindEnum                   = { fg = nord.nord13_gui },
      CmpItemKindKeyword                = { fg = nord.nord15_gui },
      CmpItemKindSnippet                = { fg = nord.nord14_gui },
      CmpItemKindFile                   = { fg = nord.nord8_gui },
      CmpItemKindEnumMember             = { fg = nord.nord7_gui },
      CmpItemKindConstant               = { fg = nord.nord12_gui },
      CmpItemKindStruct                 = { fg = nord.nord13_gui },
      CmpItemKindTypeParameter          = { fg = nord.nord13_gui },
      CmpItemKindCopilot                = { fg = nord.nord14_gui },

      -- blink.nvim
      BlinkCmpDoc                       = { fg = nord.nord4_gui, bg = nord.nord1_gui },
      BlinkCmpDocBorder                 = { fg = nord.nord3_gui_bright, bg = nord.nord1_gui },
      BlinkCmpGhostText                 = { fg = nord.nord3_gui_bright },
      BlinkCmpKindCodeium               = { fg = nord.nord9_gui, bg = nord.none },
      BlinkCmpKindCopilot               = { fg = nord.nord7_gui, bg = nord.none },
      BlinkCmpKindDefault               = { fg = nord.nord5_gui, bg = nord.none },
      BlinkCmpKindSupermaven            = { fg = nord.nord7_gui, bg = nord.none },
      BlinkCmpKindTabNine               = { fg = nord.nord7_gui, bg = nord.none },
      BlinkCmpLabel                     = { fg = nord.nord4_gui, bg = nord.none },
      BlinkCmpLabelDeprecated           = { fg = nord.nord3_gui_bright, bg = nord.none, strikethrough = true },
      BlinkCmpLabelMatch                = { fg = nord.nord8_gui, bg = nord.none },
      BlinkCmpMenu                      = { fg = nord.nord4_gui, bg = nord.nord1_gui },
      BlinkCmpMenuBorder                = { fg = nord.nord3_gui_bright, bg = nord.nord1_gui },
      BlinkCmpSignatureHelp             = { fg = nord.nord4_gui, bg = nord.nord1_gui },
      BlinkCmpSignatureHelpBorder       = { fg = nord.nord3_gui_bright, bg = nord.none },

      -- Notify
      NotifyBackground                  = { fg = nord.nord6_gui, bg = nord.nord0_gui },
      NotifyERRORBorder                 = { fg = nord.nord12_gui },
      NotifyWARNBorder                  = { fg = nord.nord13_gui },
      NotifyINFOBorder                  = { fg = nord.nord14_gui },
      NotifyDEBUGBorder                 = { fg = nord.nord15_gui },
      NotifyTRACEBorder                 = { fg = nord.nord10_gui },
      NotifyERRORIcon                   = { fg = nord.nord12_gui },
      NotifyWARNIcon                    = { fg = nord.nord13_gui },
      NotifyINFOIcon                    = { fg = nord.nord14_gui },
      NotifyDEBUGIcon                   = { fg = nord.nord15_gui },
      NotifyTRACEIcon                   = { fg = nord.nord10_gui },
      NotifyERRORTitle                  = { fg = nord.nord12_gui },
      NotifyWARNTitle                   = { fg = nord.nord13_gui },
      NotifyINFOTitle                   = { fg = nord.nord14_gui },
      NotifyDEBUGTitle                  = { fg = nord.nord15_gui },
      NotifyTRACETitle                  = { fg = nord.nord10_gui },

      -- Trouble
      TroubleCount                      = { fg = nord.nord15_gui },
      TroubleNormal                     = { fg = nord.nord4_gui },
      TroubleText                       = { fg = nord.nord4_gui },

      -- Diff
      diffAdded                         = { fg = colors.diff_add },
      diffRemoved                       = { fg = colors.diff_remove },
      diffChanged                       = { fg = colors.diff_change },
      diffOldFile                       = { fg = colors.yellow },
      diffNewFile                       = { fg = colors.orange },
      diffFile                          = { fg = colors.blue },
      diffLine                          = { fg = colors.light_gray },
      diffIndexLine                     = { fg = colors.purple },

      -- Neogit
      NeogitBranch                      = { fg = colors.purple },
      NeogitRemote                      = { fg = colors.orange },
      NeogitHunkHeader                  = { fg = colors.fg, bg = colors.highlight },
      NeogitHunkHeaderHighlight         = { fg = colors.yellow, bg = colors.highlight },
      NeogitDiffContextHighlight        = { bg = colors.active },
      NeogitDiffDeleteHighlight         = { fg = colors.diff_remove, bg = colors.diff_remove_bg },
      NeogitDiffAddHighlight            = { fg = colors.diff_add, bg = colors.diff_add_bg },

      NeogitNotificationInfo            = { fg = colors.info },
      NeogitNotificationWarning         = { fg = colors.warn },
      NeogitNotificationError           = { fg = colors.error },

      -- GitGutter
      GitGutterAdd                      = { fg = colors.diff_add },    -- diff mode: Added line |diff.txt|
      GitGutterChange                   = { fg = colors.diff_change }, -- diff mode: Changed line |diff.txt|
      GitGutterDelete                   = { fg = colors.diff_remove }, -- diff mode: Deleted line |diff.txt|

      -- GitSigns
      GitSignsAdd                       = { fg = colors.diff_add },    -- diff mode: Added line |diff.txt|
      GitSignsAddNr                     = { fg = colors.diff_add },    -- diff mode: Added line |diff.txt|
      GitSignsAddLn                     = { fg = colors.diff_add },    -- diff mode: Added line |diff.txt|
      GitSignsChange                    = { fg = colors.diff_change }, -- diff mode: Changed line |diff.txt|
      GitSignsChangeNr                  = { fg = colors.diff_change }, -- diff mode: Changed line |diff.txt|
      GitSignsChangeLn                  = { fg = colors.diff_change }, -- diff mode: Changed line |diff.txt|
      GitSignsDelete                    = { fg = colors.diff_remove }, -- diff mode: Deleted line |diff.txt|
      GitSignsDeleteNr                  = { fg = colors.diff_remove }, -- diff mode: Deleted line |diff.txt|
      GitSignsDeleteLn                  = { fg = colors.diff_remove }, -- diff mode: Deleted line |diff.txt|

      -- Telescope
      TelescopeNormal                   = { fg = colors.fg, bg = colors.bg },
      TelescopePromptPrefix             = { fg = colors.purple },
      TelescopePromptBorder             = { fg = colors.blue },
      TelescopeResultsBorder            = { fg = colors.blue },
      TelescopePreviewBorder            = { fg = colors.blue },
      TelescopeSelectionCaret           = { fg = colors.cyan },
      TelescopeSelection                = { fg = colors.cyan },
      TelescopeMatching                 = { fg = colors.yellow, style = "bold" },

      -- NvimTree
      NvimTreeSymlink                   = { fg = colors.cyan, style = "bold" },
      NvimTreeRootFolder                = { fg = colors.green, style = "bold" },
      NvimTreeFolderName                = { fg = colors.blue },
      NvimTreeFolderIcon                = { fg = colors.dark_blue },
      NvimTreeEmptyFolderName           = { fg = colors.light_gray },
      NvimTreeOpenedFolderName          = { fg = colors.yellow, style = "italic" },
      NvimTreeIndentMarker              = { fg = colors.blue },
      NvimTreeGitDirty                  = { fg = colors.yellow },
      NvimTreeGitNew                    = { fg = colors.diff_add },
      NvimTreeGitStaged                 = { fg = colors.purple },
      NvimTreeGitDeleted                = { fg = colors.diff_remove },
      NvimTreeExecFile                  = { fg = colors.green, style = "bold" },
      NvimTreeOpenedFile                = { fg = colors.none },
      NvimTreeSpecialFile               = { fg = colors.orange, style = "underline" },
      NvimTreeImageFile                 = { fg = colors.purple, style = "bold" },
      NvimTreeNormal                    = { fg = colors.fg, bg = colors.active },
      NvimTreeCursorLine                = { link = "Visual" },
      NvimTreeVertSplit                 = { fg = colors.active, bg = colors.active },
      LspDiagnosticsError               = { fg = colors.error },
      LspDiagnosticsWarning             = { fg = colors.warn },
      LspDiagnosticsInformation         = { fg = colors.info },
      LspDiagnosticsHint                = { fg = colors.hint },

      -- NeoTree
      NeoTreeDirectoryIcon              = { fg = colors.dark_blue },
      NeoTreeDirectoryName              = { fg = colors.blue },
      NeoTreeDirectoryNameOpened        = { fg = colors.yellow, style = "italic" },
      NeoTreeRootName                   = { fg = colors.green, style = "bold" },
      NeoTreeFileName                   = { fg = colors.none },
      NeoTreeFileIcon                   = { fg = colors.blue, style = "bold" },
      NeoTreeFileNameOpened             = { fg = colors.none },
      NeoTreeIndentMarker               = { fg = colors.blue },
      NeoTreeGitAdded                   = { fg = colors.purple },
      NeoTreeGitConflict                = { fg = colors.red },
      NeoTreeGitModified                = { fg = colors.yellow },
      NeoTreeGitUntracked               = { fg = colors.green },
      NeoTreeNormal                     = { fg = colors.fg, bg = colors.active },
      NeoTreeNormalNC                   = { fg = colors.fg, bg = colors.active },
      NeoTreeSymbolicLinkTarget         = { fg = colors.cyan, style = "bold" },
      NeoTreeCursorLine                 = { link = "Visual" },

      -- WhichKey
      WhichKey                          = { fg = nord.nord15_gui, style = bold },
      WhichKeyGroup                     = { fg = nord.nord7_gui },
      WhichKeyDesc                      = { fg = nord.nord9_gui, style = italic },
      WhichKeySeperator                 = { fg = nord.nord14_gui },
      WhichKeyFloat                     = { bg = nord.nord0_gui },

      -- LspSaga
      TitleString                       = { fg = colors.fg },
      TitleIcon                         = { fg = colors.red },
      SagaBorder                        = { bg = colors.bg, fg = colors.blue },
      SagaNormal                        = { bg = colors.bg },
      SagaExpand                        = { fg = colors.dark_blue },
      SagaCollapse                      = { fg = colors.dark_blue },
      SagaBeacon                        = { bg = colors.purple },
      ActionPreviewNormal               = { link = "SagaNormal" },
      ActionPreviewBorder               = { link = "SagaBorder" },
      ActionPreviewTitle                = { fg = colors.yellow, bg = colors.bg },
      CodeActionNormal                  = { link = "SagaNormal" },
      CodeActionBorder                  = { link = "SagaBorder" },
      CodeActionText                    = { fg = colors.orange },
      CodeActionNumber                  = { fg = colors.green },
      FinderSelection                   = { fg = colors.cyan, style = "bold" },
      FinderFileName                    = { fg = colors.fg_light },
      FinderCount                       = { link = "Label" },
      FinderIcon                        = { fg = colors.cyan },
      FinderType                        = { fg = colors.yellow },
      FinderSpinnerTitle                = { fg = colors.purple, style = "bold" },
      FinderSpinner                     = { fg = colors.purple, style = "bold" },
      FinderPreviewSearch               = { link = "Search" },
      FinderVirtText                    = { fg = colors.dark_blue },
      FinderNormal                      = { link = "SagaNormal" },
      FinderBorder                      = { link = "SagaBorder" },
      FinderPreviewBorder               = { link = "SagaBorder" },
      DefinitionBorder                  = { link = "SagaBorder" },
      DefinitionNormal                  = { link = "SagaNormal" },
      DefinitionSearch                  = { link = "Search" },
      HoverNormal                       = { link = "SagaNormal" },
      HoverBorder                       = { link = "SagaBorder" },
      RenameBorder                      = { link = "SagaBorder" },
      RenameNormal                      = { fg = colors.orange, bg = colors.bg },
      RenameMatch                       = { link = "Search" },
      DiagnosticBorder                  = { link = "SagaBorder" },
      DiagnosticSource                  = { fg = "gray" },
      DiagnosticNormal                  = { link = "SagaNormal" },
      DiagnosticErrorBorder             = { link = "DiagnosticError" },
      DiagnosticWarnBorder              = { link = "DiagnosticWarn" },
      DiagnosticHintBorder              = { link = "DiagnosticHint" },
      DiagnosticInfoBorder              = { link = "DiagnosticInfo" },
      DiagnosticPos                     = { fg = colors.light_gray },
      DiagnosticWord                    = { fg = colors.fg },
      CallHierarchyNormal               = { link = "SagaNormal" },
      CallHierarchyBorder               = { link = "SagaBorder" },
      CallHierarchyIcon                 = { fg = colors.purple },
      CallHierarchyTitle                = { fg = colors.red },
      LspSagaLightBulb                  = { link = "DiagnosticSignHint" },
      SagaShadow                        = { bg = colors.float },
      OutlineIndent                     = { fg = colors.dark_blue },
      OutlinePreviewBorder              = { link = "SagaNormal" },
      OutlinePreviewNormal              = { link = "SagaBorder" },
      TerminalBorder                    = { link = "SagaBorder" },
      TerminalNormal                    = { link = "SagaNormal" },
      LspSagaWinbarSep                  = { fg = colors.cyan },
      LspSagaWinbarFile                 = { fg = colors.fg },
      LspSagaWinbarWord                 = { fg = colors.fg_light },
      LspSagaWinbarFolderName           = { fg = colors.fg },

      -- BufferLine
      BufferLineIndicatorSelected       = { fg = colors.yellow },

      -- nvim-treesitter-context
      TreesitterContext                 = { fg = colors.none, bg = colors.active },

      -- barbar
      BufferCurrent                     = { fg = colors.fg, bg = colors.bg },
      BufferCurrentIndex                = { fg = colors.fg, bg = colors.bg },
      BufferCurrentMod                  = { fg = colors.yellow, bg = colors.bg, style = "bold" },
      BufferCurrentSign                 = { fg = colors.cyan, bg = colors.bg },
      BufferCurrentTarget               = { fg = colors.red, bg = colors.bg, style = "bold" },
      BufferVisible                     = { fg = colors.fg, bg = colors.bg },
      BufferVisibleIndex                = { fg = colors.fg, bg = colors.bg },
      BufferVisibleMod                  = { fg = colors.yellow, bg = colors.bg, style = "bold" },
      BufferVisibleSign                 = { fg = colors.light_gray, bg = colors.bg },
      BufferVisibleTarget               = { fg = colors.red, bg = colors.bg, style = "bold" },
      BufferInactive                    = { fg = colors.light_gray, bg = colors.active },
      BufferInactiveIndex               = { fg = colors.light_gray, bg = colors.active },
      BufferInactiveMod                 = { fg = colors.yellow, bg = colors.active },
      BufferInactiveSign                = { fg = colors.light_gray, bg = colors.active },
      BufferInactiveTarget              = { fg = colors.red, bg = colors.active, style = "bold" },

      -- Sneak
      Sneak                             = { fg = colors.bg, bg = colors.fg },
      SneakScope                        = { bg = colors.selection },

      -- Indent Blankline
      IndentBlanklineChar               = { fg = colors.selection, style = "nocombine" },
      IndentBlanklineSpaceChar          = { fg = colors.gray, style = "nocombine" },
      IndentBlanklineSpaceCharBlankline = { fg = colors.gray, style = "nocombine" },
      IndentBlanklineContextChar        = { fg = colors.purple, style = "nocombine" },
      IndentBlanklineContextStart       = { style = "underline", sp = colors.purple },

      -- Indent Blankline 3
      IblIndent                         = { fg = colors.selection },
      IblWhitespace                     = { fg = colors.gray },
      IblScope                          = { fg = colors.purple },

      -- Nvim dap
      DapBreakpoint                     = { fg = colors.red },
      DapStopped                        = { fg = colors.green },

      -- Illuminate
      illuminatedWord                   = { bg = colors.highlight },
      illuminatedCurWord                = { bg = colors.highlight },

      -- Hop
      HopNextKey                        = { fg = colors.fg_light, style = "bold" },
      HopNextKey1                       = { fg = colors.cyan, style = "bold" },
      HopNextKey2                       = { fg = colors.purple },
      HopUnmatched                      = { fg = colors.light_gray },

      -- Fern
      FernBranchText                    = { fg = colors.blue },

      -- Lightspeed
      LightspeedLabel                   = { fg = colors.pink, style = "bold,underline" },
      LightspeedLabelOverlapped         = { fg = colors.dark_pink, style = "underline" },
      LightspeedLabelDistant            = { fg = colors.cyan, style = "bold,underline" },
      LightspeedLabelDistantOverlapped  = { fg = colors.blue, style = "underline" },
      LightspeedShortcut                = { fg = "#E5E9F0", bg = colors.pink, style = "bold,underline" },
      LightspeedMaskedChar              = { fg = colors.light_purple },
      LightspeedGreyWash                = { fg = colors.gray },
      LightspeedUnlabeledMatch          = { fg = colors.fg_light, style = "bold" },
      LightspeedOneCharMatch            = { fg = colors.yellow, style = "bold,reverse" },



      -- Navic
      NavicIconsFile = { bg = nord.nord0_gui, fg = nord.nord14_gui },
      NavicIconsModule = { bg = nord.nord0_gui, fg = nord.nord15_gui },
      NavicIconsNamespace = { bg = nord.nord0_gui, fg = nord.nord15_gui },
      NavicIconsPackage = { bg = nord.nord0_gui, fg = nord.nord15_gui },
      NavicIconsClass = { bg = nord.nord0_gui, fg = nord.nord8_gui },
      NavicIconsMethod = { bg = nord.nord0_gui, fg = nord.nord7_gui },
      NavicIconsProperty = { bg = nord.nord0_gui, fg = nord.nord15_gui },
      NavicIconsField = { bg = nord.nord0_gui, fg = nord.nord15_gui },
      NavicIconsConstructor = { bg = nord.nord0_gui, fg = nord.nord8_gui },
      NavicIconsEnum = { bg = nord.nord0_gui, fg = nord.nord8_gui },
      NavicIconsInterface = { bg = nord.nord0_gui, fg = nord.nord8_gui },
      NavicIconsFunction = { bg = nord.nord0_gui, fg = nord.nord7_gui },
      NavicIconsVariable = { bg = nord.nord0_gui, fg = nord.nord15_gui },
      NavicIconsConstant = { bg = nord.nord0_gui, fg = nord.nord13_gui },
      NavicIconsString = { bg = nord.nord0_gui, fg = nord.nord14_gui },
      NavicIconsNumber = { bg = nord.nord0_gui, fg = nord.nord15_gui },
      NavicIconsBoolean = { bg = nord.nord0_gui, fg = nord.nord8_gui },
      NavicIconsArray = { bg = nord.nord0_gui, fg = nord.nord13_gui },
      NavicIconsObject = { bg = nord.nord0_gui, fg = nord.nord8_gui },
      NavicIconsKey = { bg = nord.nord0_gui, fg = nord.nord8_gui },
      NavicIconsNull = { bg = nord.nord0_gui, fg = nord.nord12_gui },
      NavicIconsEnumMember = { nord.nord0_gui, fg = nord.nord15_gui },
      NavicIconsStruct = { bg = nord.nord0_gui, fg = nord.nord8_gui },
      NavicIconsEvent = { bg = nord.nord0_gui, fg = nord.nord8_gui },
      NavicIconsOperator = { bg = nord.nord0_gui, fg = nord.nord8_gui },
      NavicIconsTypeParameter = { bg = nord.nord0_gui, fg = nord.nord9_gui },
      NavicText = { bg = nord.nord0_gui, fg = nord.nord4_gui },
      NavicSeparator = { bg = nord.nord0_gui, fg = nord.nord3_gui_bright },

    }

    -- Options:


    -- Disable nvim-tree background
    if config.disable.background then
      remove_background(plugins.NvimTreeNormal)
      remove_background(plugins.NeoTreeNormal)
      remove_background(plugins.NeoTreeNormalNC)
    end

    -- Set transparent float backgrounds
    if config.disable.float_background then
      remove_background(plugins.TelescopeNormal)
      remove_background(plugins.WhichKeyFloat)
    end

    return plugins
  end

  local function load_terminal()
    vim.g.terminal_color_0 = nord.nord1_gui
    vim.g.terminal_color_1 = nord.nord11_gui
    vim.g.terminal_color_2 = nord.nord14_gui
    vim.g.terminal_color_3 = nord.nord13_gui
    vim.g.terminal_color_4 = nord.nord9_gui
    vim.g.terminal_color_5 = nord.nord15_gui
    vim.g.terminal_color_6 = nord.nord8_gui
    vim.g.terminal_color_7 = nord.nord5_gui
    vim.g.terminal_color_8 = nord.nord3_gui
    vim.g.terminal_color_9 = nord.nord11_gui
    vim.g.terminal_color_10 = nord.nord14_gui
    vim.g.terminal_color_11 = nord.nord13_gui
    vim.g.terminal_color_12 = nord.nord9_gui
    vim.g.terminal_color_13 = nord.nord15_gui
    vim.g.terminal_color_14 = nord.nord7_gui
    vim.g.terminal_color_15 = nord.nord6_gui
  end


  if config.terminal then
    load_terminal()
  end

  return vim.tbl_deep_extend('error', load_syntax(), load_editor(), load_treesitter(), load_lsp(), load_plugins())
end

return theme
