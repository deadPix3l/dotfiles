return {
  "folke/twilight.nvim",
  cmd = { "Twilight", "TwilightEnable", "TwilightDisable" },
  keys = {
    {
      "<leader>tw",
      "<cmd>Twilight<CR>",
      desc = "Toggle Twilight",
    },
  },

  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
}
