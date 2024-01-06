-- Our lua/utils.lua file

local M = {}

function M.map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

function M.unmap(mode, lhs)
    local options = { noremap = true }
    vim.api.nvim_set_keymap(mode, lhs, "<Nop>", options)
end

return M
