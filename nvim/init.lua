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
--  This syncs all yanks to system clipboard. I can presumably still yank to
--  the system clipboard with "*y
--vim.schedule(function()
--  vim.o.clipboard = 'unnamedplus'
--end)

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

-- Faster write
vim.keymap.set('n', '<leader>w', ':write<CR>')

vim.pack.add({ 'https://github.com/JuliaEditorSupport/julia-vim' })
vim.pack.add({ 'https://github.com/nvim-lua/plenary.nvim' })
vim.pack.add({
    { src = 'https://github.com/nvim-telescope/telescope.nvim' },
})
vim.pack.add({ 'https://github.com/neovim/nvim-lspconfig' })
vim.pack.add({ 'https://github.com/vim-latex/vim-latex' })
vim.pack.add({
    { src = 'https://github.com/lewis6991/gitsigns.nvim' },
})
require('gitsigns').setup {
    signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
    },
}

builtin = require 'telescope.builtin'
vim.keymap.set('n', '<leader>sf', builtin.find_files, {})
vim.keymap.set('n', '<leader>sg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>sd', function()
    builtin.find_files({ find_command = { 'find', '.', '-type', 'd' } })
end, {})

-- TODO: config matlab_ls
--vim.lsp.config('matlab_ls', {
--    cmd = {
--    matlab = {
--        installPath = '/Applications/MATLAB_R2025a.app/bin',
--    },
--})

vim.diagnostic.config({ signs = false })
vim.lsp.enable('lua_ls')
vim.lsp.enable('ruff')
vim.lsp.enable('julials')
--vim.lsp.enable('matlab_ls')

vim.keymap.set('n', '<leader>f', vim.lsp.buf.format)

vim.cmd('set completeopt+=noselect')
