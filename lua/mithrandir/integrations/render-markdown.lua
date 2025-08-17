local M = {}

function M.setup(P)
    return {
        RenderMarkdownH1 = { fg = P.keyword, bold = true },
        RenderMarkdownH2 = { fg = P.function_, bold = true },
        RenderMarkdownH3 = { fg = P.type, bold = true },
        RenderMarkdownH4 = { fg = P.variable, bold = true },
        RenderMarkdownH5 = { fg = P.attribute, bold = true },
        RenderMarkdownH6 = { fg = P.comment, bold = true },

        RenderMarkdownCode = { bg = P.cursorline, fg = P.fg },
        RenderMarkdownCodeInline = { bg = P.cursorline, fg = P.fg },
        RenderMarkdownQuote = { fg = P.comment, italic = true },
        RenderMarkdownBullet = { fg = P.keyword },
        RenderMarkdownLink = { fg = P.blue, underline = true },
        RenderMarkdownUrl = { fg = P.url, underline = true },
        RenderMarkdownTableHead = { fg = P.attribute, bold = true },
        RenderMarkdownTableRow = { fg = P.fg },
        RenderMarkdownHR = { fg = P.bright_black },
    }
end

return M
