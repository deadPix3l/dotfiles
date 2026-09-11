return {
  "rachartier/tiny-cmdline.nvim",
  lazy = false,
  init = function()
    -- cmdheight = 0 must be set before plugin initializes
    vim.o.cmdheight = 0
    require("vim._core.ui2").enable({}) -- requires >=0.12
  end,
  config = function()
    require("tiny-cmdline").setup({
      border = "rounded",
      title = {
        enabled = true,
        pos = "center",  -- "left" | "center" | "right"
      },
    })
  end,
}
