return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    keys = function()
      local builtin = require("telescope.builtin")

      return {
        { "<leader><leader>", "<cmd>Telescope<CR>",  desc = "Telescope" },
        { "<leader>ff",       builtin.find_files,    desc = "Telescope find files" },
        { "<leader>fw",       builtin.live_grep,     desc = "Telescope live grep" },
        { "<leader>fb",       builtin.buffers,       desc = "Telescope find buffers" },
        { "<leader>fh",       builtin.help_tags,     desc = "Telescope help page" },
        { "<leader>ma",       builtin.marks,         desc = "Telescope find marks" },
        { "<leader>fo",       builtin.oldfiles,      desc = "Telescope old files" },
        { "<leader>cm",       builtin.git_commits,   desc = "Telescope git commits" },
        { "<leader>gt",       builtin.git_status,    desc = "Telescope git status" },
        { "<leader>fz",       builtin.current_buffer_fuzzy_find,
          desc = "Telescope find in current buffer" },
      }
    end,
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
