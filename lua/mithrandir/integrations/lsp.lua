local M = {}

function M.setup(P, cfg)
    return {
        DiagnosticError = { fg = P.red or "#B43A2E" },
        DiagnosticWarn = { fg = P.yellow },
        DiagnosticInfo = { fg = P.blue },
        DiagnosticHint = { fg = P.cyan },
        DiagnosticOk = { fg = P.green },

        DiagnosticVirtualTextError = { fg = P.red or "#B43A2E" },
        DiagnosticVirtualTextWarn = { fg = P.yellow },
        DiagnosticVirtualTextInfo = { fg = P.blue },
        DiagnosticVirtualTextHint = { fg = P.cyan },

        DiagnosticUnderlineError = { sp = P.red or "#B43A2E", undercurl = true },
        DiagnosticUnderlineWarn = { sp = P.yellow, undercurl = true },
        DiagnosticUnderlineInfo = { sp = P.blue, undercurl = true },
        DiagnosticUnderlineHint = { sp = P.cyan, undercurl = true },

        LspSignatureActiveParameter = { bg = P.selection },
        LspReferenceText = { bg = P.selection },
        LspReferenceRead = { bg = P.selection },
        LspReferenceWrite = { bg = P.selection },

        ["@lsp.type.class"] = { link = "Type" },
        ["@lsp.type.interface"] = { link = "Type" },
        ["@lsp.type.enum"] = { link = "Type" },
        ["@lsp.type.typeParameter"] = { link = "Type" },
        ["@lsp.type.variable"] = { link = "Identifier" },
        ["@lsp.type.parameter"] = { fg = P.fg },
        ["@lsp.type.function"] = { link = "Function" },
        ["@lsp.type.property"] = { link = "Identifier" },
        ["@lsp.typemod.variable.readonly"] = { fg = P.constant },
    }
end

return M
