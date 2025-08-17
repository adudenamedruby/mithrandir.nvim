local M = {}

function M.setup(P)
    return {
        WhichKey = { fg = P.keyword, bold = true },
        WhichKeyGroup = { fg = P.type },
        WhichKeyDesc = { fg = P.fg },
        WhichKeySeparator = { fg = P.bright_black },
        WhichKeyValue = { fg = P.comment },

        WhichKeyFloat = { bg = P.cursorline, fg = P.fg },
        WhichKeyBorder = { fg = P.bright_black, bg = P.bg },
    }
end

return M
