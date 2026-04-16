local M = {}

function M.setup(P)
    return {
        FzfLuaNormal = { bg = P.bg, fg = P.fg },
        FzfLuaBorder = { fg = P.bright_black, bg = P.bg },
        FzfLuaTitle = { fg = P.keyword, bold = true },
        FzfLuaPreviewTitle = { fg = P.function_, bold = true },
        FzfLuaCursor = { link = "Cursor" },
        FzfLuaCursorLine = { bg = P.cursorline },
        FzfLuaCursorLineNr = { fg = P.yellow, bg = P.cursorline },
        FzfLuaSearch = { fg = P.keyword, bold = true },
        FzfLuaScrollBorderEmpty = { fg = P.bright_black },
        FzfLuaScrollBorderFull = { fg = P.blue },
        FzfLuaScrollFloatEmpty = { fg = P.bright_black },
        FzfLuaScrollFloatFull = { fg = P.blue },
        FzfLuaHelpNormal = { link = "FzfLuaNormal" },
        FzfLuaHelpBorder = { link = "FzfLuaBorder" },
        FzfLuaHeaderBind = { fg = P.green },
        FzfLuaHeaderText = { fg = P.comment },
        FzfLuaPathColNr = { fg = P.number },
        FzfLuaPathLineNr = { fg = P.number },
        FzfLuaBufName = { fg = P.blue },
        FzfLuaBufNr = { fg = P.number },
        FzfLuaBufFlagCur = { fg = P.keyword },
        FzfLuaBufFlagAlt = { fg = P.magenta },
        FzfLuaTabTitle = { fg = P.fg, bold = true },
        FzfLuaTabMarker = { fg = P.keyword },
        FzfLuaLiveSym = { fg = P.variable },
        FzfLuaFzfMatch = { fg = P.keyword, bold = true },
    }
end

return M
