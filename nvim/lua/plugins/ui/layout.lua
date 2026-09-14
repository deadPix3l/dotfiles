return {
	  -- a much lighter alternative to noice
	{
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
	},

	-- pretty status bar at bottom
	{
	    "nvim-lualine/lualine.nvim",
	    event = "VeryLazy",
	    dependencies = { "nvim-tree/nvim-web-devicons" },
	    opts = {
	      options = {
		theme = "auto",
		globalstatus = true,
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
	      },
	    },
	},

	-- TODO: replace this with a custom plugin (this works like 80% as well as i had hoped)
	-- scroll past first line (great for small files on vertical monitors)
	{
    	  'nullromo/go-up.nvim',
    	  opts = { goUpLimit = "center", },

    	  config = function(_, opts)
            require('go-up').setup(opts)

	    local my_group = vim.api.nvim_create_augroup("LargeMonitorSmallFileGoUpCenter", { clear = true })
	    vim.api.nvim_create_autocmd("BufReadPost", {
		group = my_group,
		callback = function()
	          local win_height = vim.api.nvim_win_get_height(0)
	          local buf_height = vim.api.nvim_buf_line_count(0)

		  if win_height/2 > buf_height then
		    vim.schedule(function()
		      require("go-up").centerScreen()
		    end)
		  end

		end,
            })

    	  end,
	},

}
