return {
  "nvim-treesitter/nvim-treesitter-textobjects",
  branch = "main",
  lazy = false,
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  config = function()
    require("nvim-treesitter-textobjects").setup {
      select = {
        lookahead = true,
        selection_modes = {
          ["@parameter.outer"] = "v",
          ["@function.outer"] = "V",
          ["@class.outer"] = "V",
          ["@conditional.outer"] = "V",
          ["@loop.outer"] = "V",
          ["@block.outer"] = "V",
        },
        include_surrounding_whitespace = false,
      },
      move = {
        set_jumps = true,
      },
    }

    local select = require "nvim-treesitter-textobjects.select"
    local move = require "nvim-treesitter-textobjects.move"

    local map = vim.keymap.set

    -- Text objects
    map({ "x", "o" }, "af", function()
      select.select_textobject("@function.outer", "textobjects")
    end, { desc = "Select around function" })

    map({ "x", "o" }, "if", function()
      select.select_textobject("@function.inner", "textobjects")
    end, { desc = "Select inside function" })

    map({ "x", "o" }, "ac", function()
      select.select_textobject("@class.outer", "textobjects")
    end, { desc = "Select around class" })

    map({ "x", "o" }, "ic", function()
      select.select_textobject("@class.inner", "textobjects")
    end, { desc = "Select inside class" })

    map({ "x", "o" }, "aa", function()
      select.select_textobject("@parameter.outer", "textobjects")
    end, { desc = "Select around argument" })

    map({ "x", "o" }, "ia", function()
      select.select_textobject("@parameter.inner", "textobjects")
    end, { desc = "Select inside argument" })

    map({ "x", "o" }, "ai", function()
      select.select_textobject("@conditional.outer", "textobjects")
    end, { desc = "Select around conditional" })

    map({ "x", "o" }, "ii", function()
      select.select_textobject("@conditional_body.inner", "textobjects")
    end, { desc = "Select inside conditional body" })

    map({ "x", "o" }, "al", function()
      select.select_textobject("@loop.outer", "textobjects")
    end, { desc = "Select around loop" })

    map({ "x", "o" }, "il", function()
      select.select_textobject("@loop.inner", "textobjects")
    end, { desc = "Select inside loop" })

    map({ "x", "o" }, "ab", function()
      select.select_textobject("@block.outer", "textobjects")
    end, { desc = "Select around block" })

    map({ "x", "o" }, "ib", function()
      select.select_textobject("@block.inner", "textobjects")
    end, { desc = "Select inside block" })

    map({ "x", "o" }, "at", function()
      select.select_textobject("@try.outer", "textobjects")
    end, { desc = "Select around try" })

    map({ "x", "o" }, "it", function()
      select.select_textobject("@try.inner", "textobjects")
    end, { desc = "Select inside try" })

    map({ "x", "o" }, "ae", function()
      select.select_textobject("@except.outer", "textobjects")
    end, { desc = "Select around except" })

    map({ "x", "o" }, "ie", function()
      select.select_textobject("@except.inner", "textobjects")
    end, { desc = "Select inside except" })

    -- Motions
    map({ "n", "x", "o" }, "]f", function()
      move.goto_next_start("@function.outer", "textobjects")
    end, { desc = "Next function start" })

    map({ "n", "x", "o" }, "[f", function()
      move.goto_previous_start("@function.outer", "textobjects")
    end, { desc = "Previous function start" })

    map({ "n", "x", "o" }, "]F", function()
      move.goto_next_end("@function.outer", "textobjects")
    end, { desc = "Next function end" })

    map({ "n", "x", "o" }, "[F", function()
      move.goto_previous_end("@function.outer", "textobjects")
    end, { desc = "Previous function end" })

    map({ "n", "x", "o" }, "]c", function()
      move.goto_next_start("@class.outer", "textobjects")
    end, { desc = "Next class start" })

    map({ "n", "x", "o" }, "[c", function()
      move.goto_previous_start("@class.outer", "textobjects")
    end, { desc = "Previous class start" })

    map({ "n", "x", "o" }, "]C", function()
      move.goto_next_end("@class.outer", "textobjects")
    end, { desc = "Next class end" })

    map({ "n", "x", "o" }, "[C", function()
      move.goto_previous_end("@class.outer", "textobjects")
    end, { desc = "Previous class end" })

  end,
}
