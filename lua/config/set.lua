vim.o.number = true
vim.o.relativenumber = true

vim.g.have_nerd_font = true
vim.o.mouse = "a"
vim.o.showmode = false
vim.o.signcolumn = "yes"
vim.o.list = false
vim.o.inccommand = "split"
vim.o.cursorline = false
vim.o.scrolloff = 10
vim.o.confirm = true
vim.o.winborder = "rounded"

vim.o.updatetime = 50
vim.o.timeoutlen = 300

vim.o.splitright = true
vim.o.splitbelow = true

vim.schedule(function()
    vim.o.clipboard = "unnamedplus"
end)

vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.wrap = false
vim.o.breakindent = true

vim.o.swapfile = false
vim.o.backup = false
vim.o.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.o.undofile = true

vim.o.hlsearch = false
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.termguicolors = true
vim.opt.isfname:append("@-@")
-- vim.o.colorcolumn = "80"
