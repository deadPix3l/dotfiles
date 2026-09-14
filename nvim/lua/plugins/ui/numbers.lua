return { 
	-- toggles relativenumber off when in insert and command mode
	{ 
	    "sitiom/nvim-numbertoggle",
	    init = function()
	      vim.o.number = true
	    end,
	},

	-- changes current line color to match mode (subtle but very nice!)
	{
	  'mawkler/modicator.nvim',
	  --dependencies = { 'mawkler/onedark.nvim' }, -- Replace with your colorscheme
	  init = function()
	    vim.o.cursorline = true
	    vim.o.number = true
	    vim.o.termguicolors = true
	  end,
	  opts = {}, -- Dont Skip! Lazy wont load it if missing

	},

	-- add git indicators to line number gutter
	{
	  "lewis6991/gitsigns.nvim",
	  opts = {
	    current_line_blame = true, -- Enables inline git blame
	    current_line_blame_opts = {
	      delay = 500, -- Delay in milliseconds before blame shows up
	    },
	  },
	},
}

