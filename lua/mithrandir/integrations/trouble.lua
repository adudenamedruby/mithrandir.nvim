local M = {}

function M.setup(P)
    return {
        TroubleNormal = { bg = P.bg, fg = P.fg },
        TroubleText = { fg = P.fg },
        TroubleCount = { fg = P.black, bg = P.blue, bold = true },
        TroubleFile = { fg = P.blue },
        TroubleFoldIcon = { fg = P.bright_black },
        TroubleIndent = { fg = P.bright_black },

        TroubleCode = { fg = P.comment },
        TroubleLocation = { fg = P.comment },
        TroublePreview = { fg = P.fg },

        TroubleSignError = { fg = P.red or "#B43A2E" },
        TroubleSignWarn = { fg = P.yellow },
        TroubleSignInfo = { fg = P.blue },
        TroubleSignHint = { fg = P.cyan },

        TroubleIconError = { link = "TroubleSignError" },
        TroubleIconWarning = { link = "TroubleSignWarn" },
        TroubleIconInfo = { link = "TroubleSignInfo" },
        TroubleIconHint = { link = "TroubleSignHint" },
    }
end

return M
