-- See `:help vim.o`
local set = vim.opt

set.number = true -- set line numbers
set.relativenumber = true -- set relative line numbers
set.scrolloff = 8 -- no less than 8 lines before end of file
set.sidescrolloff = 15 -- no less than 15 lines before edge of screen
set.autoindent = true -- indent new line same amount as the last
set.swapfile = false -- disable default behavior of creating swap file
set.shiftwidth = 4 -- determines how many columns are indented with the 'shift + >>' command
set.tabstop = 4 -- set tabs to four columns instead of eight
set.expandtab = true
set.softtabstop=4
set.backup = false -- disables default behavior of creating a backup for edited files
set.incsearch = true -- while searching, incrementally highlight matching characters
set.ignorecase = true -- ignore capital letters during search
set.smartcase = true -- override ignorecase option if searching for capital letters
set.showcmd = true -- show partial command you type in the last line of the screen
set.showmode = true -- show the mode you are in on the last line
set.showmatch = true -- show matching words during a search
set.hlsearch = false -- use highlighting while doing a search
set.incsearch = true -- incrementally highlights as you search
set.history = 25 -- set number of commands to keep in history (default is 25)
set.wildmenu = true -- enable auto completion after pressing TAB
set.wildmode = "list:longest" -- make wildmenu behave similar to bash completion
set.wildignore = "*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx" -- file types that wildmenu will ignore
set.syntax = 'true' -- default syntax highlighting 
set.termguicolors = true -- enables richer colors
set.errorbells = false -- stops bells from going off when an error happens
vim.o.undodir = vim.fn.stdpath('config') .. '/undodir' -- sets the path of the undo directory
set.autoread = false -- stop nvim from auto reloading whenever the config file is changed

-- [[ Setting options ]]
set.completeopt='menuone,noinsert,noselect' -- idk. :help completeopt 
set.viewoptions = 'cursor,folds,slash,unix' -- Save and restore cursor position
set.completeopt = 'menuone,noselect' -- Set completeopt to have a better completion experience

-- Enable break indent
set.breakindent = true
set.undofile = true -- Save undo history

-- Decrease update time
set.updatetime = 250
set.timeout = true
set.timeoutlen = 300

-- enable blinking cursor in terminal
vim.o.guicursor = "a:blinkwait0-blinkon0-blinkoff0"

-- make the cursor skinny in insert mode
set.guicursor = [[n-v-c:block,i-ci-ve:ver25,r-cr-o:hor20]]

-- Save and load the view automatically
vim.cmd([[au BufWinLeave * silent! mkview]])
vim.cmd([[au BufWinEnter * silent! loadview]])
vim.cmd('filetype plugin indent on') -- load an indent file for the detected file type

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'
