vim.g.mapleader = ' ' -- map the leader key to the spacebar

vim.keymap.set('i', 'kj', '<ESC>') -- remap 'jf' to the <esc> key in insert mode 
vim.keymap.set('v', 'kj', '<ESC>') -- remap 'jf' to the <esc> key in visual mode

vim.keymap.set("n", "<leader>pv", ':Ex<CR>') -- map <leader>pv to the command that opens the explorer 

-- highlight text and move it around
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep cursor in the middle of the page while jumping by half pages
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- keep cursor in the middle while cycling through returned search terms
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- delete hightlighted word into void paste buffer
-- effectively, copy foo, paste over bar, keep foo in vim clipboard rather than have bar replace it
vim.keymap.set('x', '<leader>p', "\"_dP")

-- yank into system clipboard instead of vim's
vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set('v', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>Y', '"+Y')

-- delete to void register 
vim.keymap.set('n', '<leader>d', '\'_d')
vim.keymap.set('v', '<leader>d', '\'_d')

-- don't ever press Q. Apparantly it really sucks.
vim.keymap.set('n', 'Q', '<nop>')

-- replace the word that your cursor is on
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- split window vertically
vim.keymap.set("n", "<leader>|", ":vsp<CR>")

-- split window horizontally
vim.keymap.set("n", "<leader>-", ":split<CR>")

--remove search highlight
vim.keymap.set("n", "<leader>nhl", ":nohlsearch<CR>")

-- if the spacebar is pressed in normal or visual mode without anything after it, do nothing.
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap (from tj-devries' 0-LSP video, not sure how it differs from native vim)
-- vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
-- vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Highlight on yank
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})
