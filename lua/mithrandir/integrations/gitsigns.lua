local M = {}

function M.setup(P)
    return {
        GitSignsAdd = { fg = P.green },
        GitSignsChange = { fg = P.blue },
        GitSignsDelete = { fg = P.red or "#B43A2E" },
    }
end

return M
