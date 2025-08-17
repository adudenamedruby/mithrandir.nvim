local M = {}

function M.setup(P)
    return {
        BlinkCmpMenu = { bg = P.cursorline, fg = P.fg },
        BlinkCmpMenuBorder = { fg = P.bright_black, bg = P.bg },
        BlinkCmpMenuSelected = { bg = P.blue, fg = P.black, bold = true },
        BlinkCmpDoc = { bg = P.cursorline, fg = P.fg },
        BlinkCmpDocBorder = { fg = P.bright_black, bg = P.bg },

        BlinkCmpItemAbbr = { fg = P.fg },
        BlinkCmpItemAbbrMatch = { fg = P.keyword, bold = true },
        BlinkCmpItemKind = { fg = P.type },
        BlinkCmpItemMenu = { fg = P.comment },

        BlinkCmpKindFunction = { fg = P.function_ },
        BlinkCmpKindMethod = { fg = P.function_ },
        BlinkCmpKindConstructor = { fg = P.type },
        BlinkCmpKindVariable = { fg = P.fg },
        BlinkCmpKindField = { fg = P.fg },
        BlinkCmpKindProperty = { fg = P.fg },
        BlinkCmpKindClass = { fg = P.type },
        BlinkCmpKindInterface = { fg = P.type },
        BlinkCmpKindModule = { fg = P.preproc },
        BlinkCmpKindValue = { fg = P.constant },
        BlinkCmpKindEnum = { fg = P.type },
        BlinkCmpKindKeyword = { fg = P.keyword },
        BlinkCmpKindSnippet = { fg = P.attribute },
        BlinkCmpKindColor = { fg = P.magenta },
        BlinkCmpKindFile = { fg = P.fg },
        BlinkCmpKindReference = { fg = P.cyan },
        BlinkCmpKindFolder = { fg = P.blue },
        BlinkCmpKindEnumMember = { fg = P.constant },
        BlinkCmpKindConstant = { fg = P.constant },
        BlinkCmpKindStruct = { fg = P.type },
        BlinkCmpKindEvent = { fg = P.keyword },
        BlinkCmpKindOperator = { fg = P.fg },
        BlinkCmpKindTypeParameter = { fg = P.type },
    }
end

return M
