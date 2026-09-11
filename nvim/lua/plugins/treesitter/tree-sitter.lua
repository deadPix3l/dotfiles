
local parsers = { "vim", "lua", "vimdoc", "html", "css", "python", "c" }
local filetypes = { "vim", "lua", "help", "vimdoc", "html", "css", "python", "c" }

return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false, -- nvim-treesitter main does not support lazy-loading
  build = ":TSUpdate",
  config = function()
    local treesitter = require "nvim-treesitter"

    treesitter.setup()

    if vim.fn.executable "tree-sitter" == 1 then
      treesitter.install(parsers)
    end

    vim.api.nvim_create_autocmd("FileType", {
      pattern = filetypes,
      callback = function()
        vim.treesitter.start()
      end,
    })
  end,
}
