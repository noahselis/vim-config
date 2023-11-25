vim.api.nvim_create_autocmd({"BufWritePost"}, {
	pattern = { "*.css", "*.scss" },
	callback = function() vim.cmd('Prettier') end,
})
