vim.g.mapleader = " "
vim.keymap.set("n", "<leader>q", vim.cmd.Ex)

-- Mapping <Leader>f to format the buffer
vim.keymap.set("n", "<Leader>f", function()
    vim.lsp.buf.format({ async = true })
end)

-- Mapping Ctrl-] to jump to definition
vim.api.nvim_buf_set_keymap(0, 'n', '<C-]>',
    '<cmd>lua vim.lsp.buf.definition()<CR>',
    { noremap = true, silent = true })

-- Move highlighted text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- buffers
vim.keymap.set("n", "<leader>n", ":bn<cr>")
vim.keymap.set("n", "<leader>p", ":bp<cr>")
vim.keymap.set("n", "<leader>x", ":bd<cr>")

-- yank to clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])

-- nvim-comment
vim.keymap.set({"n", "v"}, "<leader>kc", ":CommentToggle<cr>")
