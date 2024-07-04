vim.keymap.set("n", "<C-n>", function()
	require("telescope").extensions.file_browser.file_browser()
end)

local telescope = require("telescope")

telescope.setup {
  extensions = {
    file_browser = {
      hijack_netrw = true
    }
  }
}

require("telescope").load_extension("file_browser")
