local M = {}

function M.setup(P, cfg)
    return {
        ["@comment"] = { link = "Comment" },
        ["@string"] = { link = "String" },
        ["@character"] = { link = "Character" },
        ["@number"] = { link = "Number" },
        ["@boolean"] = { link = "Boolean" },
        ["@float"] = { link = "Float" },

        ["@variable"] = { link = "Identifier" },
        ["@variable.builtin"] = { fg = P.constant },
        ["@constant"] = { link = "Constant" },
        ["@constant.builtin"] = { fg = P.constant },
        ["@constant.macro"] = { link = "Macro" },

        ["@type"] = { link = "Type" },
        ["@type.builtin"] = { fg = P.type },
        ["@type.definition"] = { link = "Typedef" },
        ["@property"] = { fg = P.fg },

        ["@function"] = { link = "Function" },
        ["@function.builtin"] = { fg = P.function_, bold = true },
        ["@constructor"] = { fg = P.type },

        ["@keyword"] = { link = "Keyword" },
        ["@keyword.function"] = { link = "Keyword" },
        ["@keyword.operator"] = { link = "Operator" },
        ["@operator"] = { link = "Operator" },
        ["@punctuation.delimiter"] = { link = "Delimiter" },
        ["@punctuation.bracket"] = { link = "Delimiter" },
        ["@tag"] = { link = "Tag" },
    }
end

return M
