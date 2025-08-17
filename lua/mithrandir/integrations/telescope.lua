local M = {}

function M.setup(P)
    return {
        TelescopeSelection = { bg = P.selection, fg = P.fg },
        TelescopeMatching = { fg = P.keyword, bold = true },
        TelescopeBorder = { fg = P.bright_black, bg = P.bg },
        TelescopePromptBorder = { link = "TelescopeBorder" },
        TelescopeResultsBorder = { link = "TelescopeBorder" },
        TelescopePreviewBorder = { link = "TelescopeBorder" },
        TelescopePromptPrefix = { fg = P.blue },
    }
end

return M
