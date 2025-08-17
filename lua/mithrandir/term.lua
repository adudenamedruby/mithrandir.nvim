local M = {}

function M.apply(P)
    vim.g.terminal_color_0 = P.black
    vim.g.terminal_color_1 = P.red
    vim.g.terminal_color_2 = P.green
    vim.g.terminal_color_3 = P.yellow
    vim.g.terminal_color_4 = P.blue
    vim.g.terminal_color_5 = P.magenta
    vim.g.terminal_color_6 = P.cyan
    vim.g.terminal_color_7 = P.white
    vim.g.terminal_color_8 = P.bright_black
    vim.g.terminal_color_9 = P.bright_red
    vim.g.terminal_color_10 = P.bright_green
    vim.g.terminal_color_11 = P.bright_yellow
    vim.g.terminal_color_12 = P.bright_blue
    vim.g.terminal_color_13 = P.bright_magenta
    vim.g.terminal_color_14 = P.bright_cyan
    vim.g.terminal_color_15 = P.bright_white
end

return M
