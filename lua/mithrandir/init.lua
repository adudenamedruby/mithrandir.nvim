local M = {}

M.config = {
    style = "dark",
    transparent = false,
    italics = {
        comments = true,
        keywords = false,
        functions = false,
        variables = false,
    },
    terminal_colors = true,
    plugins = {
        treesitter = true,
        lsp = true,
        telescope = true,
        cmp = true,
        gitsigns = true,
    },
}

function M.setup(opts)
    M.config = vim.tbl_deep_extend("force", M.config, opts or {})
end

local function apply(tbl)
    for group, spec in pairs(tbl) do
        vim.api.nvim_set_hl(0, group, spec)
    end
end

function M.load()
    vim.opt.termguicolors = true
    local P = require("mithrandir.palette").get(M.config.style)
    local theme = require("mithrandir.theme").build(P, M.config)
    vim.g.colors_name = "mithrandir"

    if M.config.terminal_colors then
        require("mithrandir.term").apply(P)
    end

    apply(theme.core)

    if M.config.plugins.treesitter then
        apply(require("mithrandir.integrations.treesitter").setup(P, M.config))
    end
    if M.config.plugins.lsp then
        apply(require("mithrandir.integrations.lsp").setup(P, M.config))
    end
    if M.config.plugins.telescope then
        apply(require("mithrandir.integrations.telescope").setup(P))
    end
    if M.config.plugins.cmp then
        apply(require("mithrandir.integrations.cmp").setup(P))
    end
    if M.config.plugins.gitsigns then
        apply(require("mithrandir.integrations.gitsigns").setup(P))
    end
end

return M
