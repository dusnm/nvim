local builtin = require('telescope.builtin')

-- looks for all files that match the expression
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
-- looks only for files that match the expression and that git knows about
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})

-- finds files that have content that matches input
vim.keymap.set('n', '<leader>fp', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
