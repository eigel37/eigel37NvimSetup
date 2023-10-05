local telescope = require('telescope')
telescope.setup {
	pickers = {
		find_files = {
			hidden = true,
			cwd = vim.fn.expand "%:p:h"
		}
	}
}
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>sf', builtin.find_files, {})
vim.keymap.set('n', '<leader>sb', builtin.buffers, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>sg', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
