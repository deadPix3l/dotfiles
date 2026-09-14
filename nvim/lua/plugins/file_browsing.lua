return {
  -- pretty FileTree sidebar
  {
    "nvim-tree/nvim-tree.lua",
    cmd = { "NvimTreeToggle", "NvimTreeFocus" },
    keys = {
      { "<leader>e", "<cmd>NvimTreeToggle<CR>", desc = "NvimTree" },
    },
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("nvim-tree").setup({})
    end,
  },

  -- intuitive buffer-based file ops
  {
    'stevearc/oil.nvim',
    opts = {
      view_options = { show_hidden = true }
    },
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = false, -- doesnt always load properly 
  },

}
