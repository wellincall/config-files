local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  "tanvirtin/monokai.nvim",
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim"
    }
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "BurntSushi/ripgrep"
    }
  },
  {
    "nvim-tree/nvim-web-devicons"
  },
  "dyng/ctrlsf.vim",
  "ntpeters/vim-better-whitespace",
  "townk/vim-autoclose",
  "alvan/vim-closetag"
})

require("monokai").setup { italics = false }
require("neo-tree").setup({
  filesystem = {
    hijack_netrw_behavior = "open_default"
  }
})

require("telescope")

-- updating leader key
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

-- mapping for Neotree
vim.keymap.set("n", "<C-n>", ":Neotree toggle<CR>")

-- using compact mode for CtrlSF
vim.g.ctrlsf_default_view_mode = "compact"

-- substitute current selection
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
