return {
  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    keys = {
      { "<leader><leader>", "<cmd>Telescope<CR>",                             desc = "Telescope" },
      { "<leader>ff", require("telescope.builtin").find_files,                desc = "Telescope find files" },
      { "<leader>fw", require("telescope.builtin").live_grep,                 desc = "Telescope live grep", },
      { "<leader>fb", require("telescope.builtin").buffers,                   desc = "Telescope find buffers", },
      { "<leader>fh", require("telescope.builtin").help_tags,                 desc = "Telescope help page", },
      { "<leader>ma", require("telescope.builtin").marks,                     desc = "Telescope find marks", },
      { "<leader>fo", require("telescope.builtin").oldfiles,                  desc = "Telescope old files", },
      { "<leader>cm", require("telescope.builtin").git_commits,               desc = "Telescope git commits", },
      { "<leader>gt", require("telescope.builtin").git_status,                desc = "Telescope git status", },
      { "<leader>fz", require("telescope.builtin").current_buffer_fuzzy_find, desc = "Telescope find in current buffer", },
    },
    opts = function()
      local actions = require "telescope.actions"

      return {
        defaults = {
          prompt_prefix = "   ",
          selection_caret = " ",
          entry_prefix = " ",
          sorting_strategy = "ascending",
          layout_config = {
            horizontal = {
              prompt_position = "top",
              preview_width = 0.55,
            },
            width = 0.87,
            height = 0.80,
          },
          mappings = {
            n = { q = actions.close },
          },
        },
      }
    end,
  },
}
