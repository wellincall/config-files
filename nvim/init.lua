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

require("my-preferences")

require("lazy").setup({
  "tanvirtin/monokai.nvim",
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "BurntSushi/ripgrep"
    }
  },
  {
    "nvim-tree/nvim-web-devicons"
  },
  "ntpeters/vim-better-whitespace",
  "townk/vim-autoclose",
  "alvan/vim-closetag",
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim"
    }
  }
})

require("plugins/monokai")
require("plugins/telescope")
require("plugins/telescope-file-browser")
