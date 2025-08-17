local M = {}

function M.setup(P)
    return {
        CmpItemAbbr = { fg = P.fg },
        CmpItemAbbrDeprecated = { fg = P.comment, strikethrough = true },
        CmpItemAbbrMatch = { fg = P.keyword, bold = true },
        CmpItemKind = { fg = P.type },
    }
end

return M
