vim.keymap.set("n", "<C-n>", ":Neotree toggle<cr>")
require("neo-tree").setup({
  window = {
    mappings = {
      ["p"] = { "toggle_preview", config = { use_float = true, use_image_nvim = true } },
      ["s"] = "open_split",
      ["v"] = "open_vsplit"
    },
    fuzzy_finder_mappings = {
      ["<C-j>"] = "move_cursor_down",
      ["<C-k>"] = "move_cursor_up",
    }
  }
})
