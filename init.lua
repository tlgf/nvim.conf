-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- init.lua
local lazy = require("lazy")

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})


vim.api.nvim_set_keymap('n', 'gr', '<cmd>lua require("telescope.builtin").lsp_references()<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gq', '<cmd>lua require("telescope.builtin").lsp_document_symbols()<cr>', { noremap = true, silent = true })


