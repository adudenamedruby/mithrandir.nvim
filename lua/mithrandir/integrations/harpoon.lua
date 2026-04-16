local M = {}

function M.setup(P)
    return {
        -- Harpoon v1 & v2: menu window
        HarpoonWindow = { bg = P.bg, fg = P.fg },
        HarpoonBorder = { fg = P.bright_black, bg = P.bg },

        -- Harpoon v1 & v2: current file highlight in the menu
        HarpoonCurrentFile = { fg = P.keyword, bold = true },

        -- Harpoon v1: tabline
        HarpoonActive = { fg = P.fg, bg = P.selection, bold = true },
        HarpoonInactive = { fg = P.comment, bg = P.bg },
        HarpoonNumberActive = { fg = P.keyword, bg = P.selection, bold = true },
        HarpoonNumberInactive = { fg = P.bright_black, bg = P.bg },
    }
end

return M
