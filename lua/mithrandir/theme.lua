local M = {}

local function maybe_none(c, transparent)
    return transparent and "NONE" or c
end

function M.build(P, cfg)
    local it = cfg.italics
    local bg = maybe_none(P.bg, cfg.transparent)

    local core = {
        Normal = { fg = P.fg, bg = bg },
        NormalFloat = { fg = P.fg, bg = bg },
        Cursor = { fg = P.bg, bg = P.cursor },
        CursorLine = { bg = P.cursorline },
        CursorColumn = { bg = P.cursorline },
        ColorColumn = { bg = P.cursorline },
        Visual = { bg = P.selection },
        Search = { bg = P.yellow, fg = P.black },
        IncSearch = { bg = P.yellow, fg = P.black, bold = true },
        MatchParen = { fg = P.function_, bold = true },

        LineNr = { fg = P.bright_black },
        CursorLineNr = { fg = P.yellow, bold = true },
        SignColumn = { bg = bg },

        VertSplit = { fg = P.bright_black },
        WinSeparator = { fg = P.bright_black },

        Pmenu = { fg = P.fg, bg = P.cursorline },
        PmenuSel = { fg = P.black, bg = P.blue, bold = true },
        PmenuSbar = { bg = P.cursorline },
        PmenuThumb = { bg = P.blue },

        StatusLine = { fg = P.fg, bg = P.cursorline },
        StatusLineNC = { fg = P.bright_black, bg = P.cursorline },
        TabLine = { fg = P.fg, bg = P.cursorline },
        TabLineSel = { fg = P.black, bg = P.blue, bold = true },
        TabLineFill = { bg = P.cursorline },

        Comment = { fg = P.comment, italic = it.comments },
        Constant = { fg = P.constant },
        String = { fg = P.string },
        Character = { fg = P.string },
        Number = { fg = P.number },
        Boolean = { fg = P.constant },
        Float = { fg = P.number },

        Identifier = { fg = P.fg, italic = it.variables },
        Function = { fg = P.function_, italic = it.functions },

        Statement = { fg = P.keyword },
        Conditional = { link = "Statement" },
        Repeat = { link = "Statement" },
        Label = { link = "Statement" },
        Operator = { fg = P.fg },
        Keyword = { fg = P.keyword, italic = it.keywords },
        Exception = { link = "Statement" },

        PreProc = { fg = P.preproc },
        Include = { link = "PreProc" },
        Define = { link = "PreProc" },
        Macro = { link = "PreProc" },
        PreCondit = { link = "PreProc" },

        Type = { fg = P.type },
        StorageClass = { fg = P.type },
        Structure = { fg = P.type },
        Typedef = { fg = P.type },

        Special = { fg = P.attribute },
        SpecialChar = { link = "Special" },
        Tag = { fg = P.keyword },
        Delimiter = { fg = P.fg },
        SpecialComment = { fg = P.comment, italic = true },
        Debug = { fg = P.red or "#B43A2E" },

        Underlined = { underline = true },
        Bold = { bold = true },
        Italic = { italic = true },
        Error = { fg = P.red or "#B43A2E", bold = true },
        Todo = { fg = P.yellow, bg = bg, bold = true },
        NonText = { fg = P.bright_black },
        Whitespace = { fg = P.bright_black },
        Folded = { fg = P.comment, bg = P.cursorline },
        FoldColumn = { fg = P.comment, bg = bg },
        Directory = { fg = P.blue },
    }

    return { core = core }
end

return M
