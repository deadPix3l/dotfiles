
local parsers = { "vim", "lua", "vimdoc", "html", "css", "python", "c" }
local filetypes = { "vim", "lua", "help", "vimdoc", "html", "css", "python", "c" }

return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false, -- nvim-treesitter main does not support lazy-loading
  build = ":TSUpdate",
  config = function()
    local treesitter = require "nvim-treesitter"

    treesitter.setup({
      -- A list of parser names, or "all"
      ensure_installed = parsers,

      -- Install parsers synchronously (only applied to `ensure_installed`)
      sync_install = false,

      -- Automatically install missing parsers when entering buffer
      auto_install = true,

      highlight = {
        enable = true, -- false will disable the whole extension
      },
    })

    vim.api.nvim_create_autocmd("FileType", {
      pattern = filetypes,
      callback = function()
        vim.treesitter.start()
      end,
    })
  end,
}
