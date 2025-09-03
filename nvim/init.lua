vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.netrw_bufsettings = 'noma nomod nu nobl nowrap ro rnu'

vim.o.number = true
vim.o.relativenumber = true
vim.o.autoindent = true
vim.o.ruler = true
vim.o.wrap = false
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.spell = true
vim.o.showmode = false
-- Persistent undo is usually not what I want...
vim.o.undofile = false
vim.o.signcolumn = 'yes'
vim.o.list = false
vim.o.splitright = true
vim.o.splitbelow = true
-- Preview substitutions live, as you type!
-- I'm not really sure what this affects
vim.o.inccommand = 'split'
vim.o.confirm = true
vim.o.ignorecase = true
vim.o.smartcase = true
-- I believe this controls persistent highlighting
vim.o.incsearch = false
vim.o.cursorline = false
vim.o.guicursor = 'n-v-sm-i:block'

vim.cmd.colorscheme 'industry'

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end)

-- This is nice
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Highlight when yanking (copying) text
--  See `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

vim.pack.add({'https://github.com/JuliaEditorSupport/julia-vim'})
