-- configuration settings - https://docs.github.com/en/copilot/configuring-github-copilot/configuring-github-copilot-in-your-environment?tool=vimneovim

vim.g.copilot_no_tab_map = true
vim.keymap.set(
	'i',
	'<C-J>',
	'copilot#Accept("")',
	{ noremap = true, silent = true, expr = true, replace_keycodes = false, desc = "Copilot accept" }
)
