local telescope = require("telescope")

telescope.setup {
  extensions = {
    file_browser = {
      grouped = true,
      dir_icon = " "
    }
  }
}

require("telescope").load_extension("file_browser")
