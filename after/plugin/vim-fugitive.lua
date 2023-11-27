return {
	vim.keymap.set('n', '<leader>gb', ':Git blame<CR>'),
	vim.keymap.set('n', '<leader>gs', ':Git<CR>'),
	vim.keymap.set('n', '<leader>gd', ':Gdiff<CR>'),
	vim.keymap.set('n', '<leader>ga', ':Git add .<CR>'),
	vim.keymap.set('n', '<leader>gcm', ':Git commit -m '),
	vim.keymap.set('n', '<leader>gpo', ':Git push origin main<CR>'),
}
