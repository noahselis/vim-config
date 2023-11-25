local builtin = require('telescope.builtin')
local theme = require('telescope.themes')

require('telescope').setup {
	defaults = {
		file_ignore_patterns = {
			"node_modules",
			"undodir"
		}
	}
}

vim.keymap.set('n', '<leader>sf', builtin.find_files, {})
vim.keymap.set('n', '<leader>sg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>/', function()
	builtin.current_buffer_fuzzy_find(theme.get_dropdown {
		winblend = 10,
		previewer = false,
	})
end, { desc = '[/] Fuzzily search in current buffer' })
vim.keymap.set('n', '<leader>sh', builtin.help_tags, {})
