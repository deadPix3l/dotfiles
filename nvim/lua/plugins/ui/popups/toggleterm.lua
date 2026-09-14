local terminal
local lazygit

local function terminal_height()
  return math.floor(vim.o.lines * 0.25)
end

local function ensure_terminal_height()
  if terminal and terminal.window and vim.api.nvim_win_is_valid(terminal.window) then
    vim.api.nvim_win_set_height(terminal.window, terminal_height())
  end
end

local term_size_group = vim.api.nvim_create_augroup("ToggleTermSizeLimits", { clear = true })
vim.api.nvim_create_autocmd({ "WinResized", "VimResized" }, {
  group = term_size_group,
  callback = function()
    vim.schedule(ensure_terminal_height)
  end,
})

return {
  "akinsho/toggleterm.nvim",
  version = "*",
  cmd = {
    "ToggleTerm",
    "ToggleTermToggleAll",
    "TermExec",
    "TermSelect",
    "ToggleTermSendCurrentLine",
    "ToggleTermSendVisualLines",
    "ToggleTermSendVisualSelection",
  },
  keys = {
    {
      "<leader>tt",
      function()
        local Terminal = require("toggleterm.terminal").Terminal
        terminal = terminal or Terminal:new {
          count = 1,
          direction = "horizontal",
          on_open = function(term)
            vim.cmd "wincmd J"
            vim.api.nvim_win_set_height(term.window, terminal_height())
          end,
        }
        terminal:toggle(terminal_height(), "horizontal")
        vim.schedule(ensure_terminal_height)
      end,
      desc = "Terminal",
    },
    {
      "<leader>tf",
      function()
        local Terminal = require("toggleterm.terminal").Terminal
        term = term or Terminal:new({ 
	  cmd = "python3", -- Replace with your desired command (e.g., "htop", "python")
	  direction = "float",
	  hidden = true,
	  float_opts = {
	    border = "rounded",
	    -- Dynamically calculate height but clamp it to a maximum
	    height = function()
	      local target_height = math.floor(vim.o.lines * 0.8) -- 80% of screen
	      local max_height = 25                               -- Hard limit of 25 lines
	      
	      return math.min(target_height, max_height)
	    end,
	    width = function()
	      return math.floor(vim.o.columns * 0.8)
	    end,
	  },
	})

        term:toggle()
      end,
      desc = "FLoating Terminal",
    },
    {
      "<leader>g",
      function()
        local Terminal = require("toggleterm.terminal").Terminal
        lazygit = lazygit or Terminal:new { cmd = "lazygit", hidden = true, direction = "float", }
        lazygit:toggle()
      end,
      desc = "Toggle Lazygit",
    },
  },
  opts = {
    persist_size = true,
  },
}
