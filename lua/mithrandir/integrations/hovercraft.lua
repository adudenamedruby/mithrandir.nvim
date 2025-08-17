local M = {}

function M.setup(P)
    return {
        HovercraftNormal = { bg = P.cursorline, fg = P.fg },
        HovercraftBorder = { fg = P.bright_black, bg = P.bg },
        HovercraftTitle = { fg = P.function_, bold = true },
        HovercraftCode = { bg = P.cursorline, fg = P.fg },
        HovercraftHint = { fg = P.cyan },
        HovercraftInfo = { fg = P.blue },
        HovercraftWarn = { fg = P.yellow },
        HovercraftError = { fg = P.red or "#B43A2E" },
    }
end

return M
