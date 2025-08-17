local M = {}

function M.setup(P)
    return {
        OilHeader = { fg = P.keyword, bold = true },
        OilDir = { fg = P.blue },
        OilFile = { fg = P.fg },
        OilHidden = { fg = P.bright_black },
        OilLink = { fg = P.cyan, underline = true },
        OilLinkTarget = { fg = P.url, underline = true },

        OilCreate = { fg = P.green },
        OilDelete = { fg = P.red or "#B43A2E" },
        OilChange = { fg = P.yellow },

        OilFloat = { bg = P.cursorline, fg = P.fg },
        OilFloatBorder = { fg = P.bright_black, bg = P.bg },
        OilCount = { fg = P.black, bg = P.blue, bold = true },
    }
end

return M
