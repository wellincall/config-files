-- updating leader keniy

vim.g.mapleader = " "

-- cursor line
vim.opt.cursorline = true
vim.opt.termguicolors = true

-- copying content internally/externally
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- scrolling
vim.opt.scrolloff = 8
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- moving selection around file
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- identing text
vim.opt.smarttab = true
vim.opt.autoindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- splitting windows
vim.opt.splitbelow = true
vim.opt.splitright = true

-- "smart search"
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- reference for line length
vim.opt.colorcolumn = "80"

-- mapping for navigating between windows
vim.keymap.set("n", "<C-H>", "<C-W><C-H>")
vim.keymap.set("n", "<C-J>", "<C-W><C-J>")
vim.keymap.set("n", "<C-K>", "<C-W><C-K>")
vim.keymap.set("n", "<C-L>", "<C-W><C-L>")

-- using compact mode for CtrlSF
vim.g.ctrlsf_default_view_mode = "compact"

-- substitute current selection
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- time to execute bindings
vim.opt.updatetime = 50
