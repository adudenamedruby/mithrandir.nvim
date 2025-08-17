-- lualine theme table (use in your lualine config: theme = require("mithrandir.integrations.lualine").theme(P))
local M = {}

function M.theme(P)
    local bg = P.bg
    local fg = P.fg
    local dim = P.cursorline
    return {
        normal = {
            a = { fg = P.black, bg = P.blue, gui = "bold" },
            b = { fg = fg, bg = dim },
            c = { fg = fg, bg = bg },
        },
        insert = {
            a = { fg = P.black, bg = P.green, gui = "bold" },
            b = { fg = fg, bg = dim },
            c = { fg = fg, bg = bg },
        },
        visual = {
            a = { fg = P.black, bg = P.magenta, gui = "bold" },
            b = { fg = fg, bg = dim },
            c = { fg = fg, bg = bg },
        },
        replace = {
            a = { fg = P.black, bg = P.red or "#B43A2E", gui = "bold" },
            b = { fg = fg, bg = dim },
            c = { fg = fg, bg = bg },
        },
        command = {
            a = { fg = P.black, bg = P.yellow, gui = "bold" },
            b = { fg = fg, bg = dim },
            c = { fg = fg, bg = bg },
        },
        inactive = {
            a = { fg = P.bright_black, bg = bg },
            b = { fg = P.bright_black, bg = bg },
            c = { fg = P.bright_black, bg = bg },
        },
    }
end

return M
