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
        blink = true,
        lualine = true,
        trouble = true,
        which_key = true,
        render_markdown = true,
        nvim_tree = true,
        oil = true,
        harpoon = true,
        hovercraft = true,
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
    if M.config.plugins.blink then
        apply(require("mithrandir.integrations.blink").setup(P))
    end
    if M.config.plugins.trouble then
        apply(require("mithrandir.integrations.trouble").setup(P))
    end
    if M.config.plugins.which_key then
        apply(require("mithrandir.integrations.which-key").setup(P))
    end
    if M.config.plugins.render_markdown then
        apply(require("mithrandir.integrations.render-markdown").setup(P))
    end
    if M.config.plugins.nvim_tree then
        apply(require("mithrandir.integrations.nvim-tree").setup(P))
    end
    if M.config.plugins.oil then
        apply(require("mithrandir.integrations.oil").setup(P))
    end
    if M.config.plugins.harpoon then
        apply(require("mithrandir.integrations.harpoon").setup(P))
    end
    if M.config.plugins.hovercraft then
        apply(require("mithrandir.integrations.hovercraft").setup(P))
    end
end

return M
