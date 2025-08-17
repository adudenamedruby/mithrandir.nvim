local M = {}

function M.setup(P)
    return {
        NvimTreeNormal = { bg = P.bg, fg = P.fg },
        NvimTreeWinSeparator = { fg = P.bright_black, bg = P.bg },
        NvimTreeEndOfBuffer = { fg = P.bright_black },
        NvimTreeRootFolder = { fg = P.keyword, bold = true },
        NvimTreeFolderName = { fg = P.blue },
        NvimTreeFolderIcon = { fg = P.blue },
        NvimTreeOpenedFolderName = { fg = P.blue, bold = true },
        NvimTreeIndentMarker = { fg = P.bright_black },
        NvimTreeSymlink = { fg = P.cyan, underline = true },

        NvimTreeGitDirty = { fg = P.yellow },
        NvimTreeGitStaged = { fg = P.green },
        NvimTreeGitMerge = { fg = P.magenta },
        NvimTreeGitRenamed = { fg = P.blue },
        NvimTreeGitNew = { fg = P.green },
        NvimTreeGitDeleted = { fg = P.red or "#B43A2E" },
        NvimTreeGitIgnored = { fg = P.bright_black },

        NvimTreeSpecialFile = { fg = P.attribute, bold = true },
        NvimTreeExecFile = { fg = P.green, bold = true },
        NvimTreeImageFile = { fg = P.magenta },
        NvimTreeOpenedFile = { fg = P.fg, bold = true },
    }
end

return M
