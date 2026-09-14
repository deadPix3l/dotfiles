return {
	-- only highlight current focused treesitter node and/or some surrounding context
	-- good for focus
	{
	  "folke/twilight.nvim",
	  cmd = { "Twilight", "TwilightEnable", "TwilightDisable" },
	  keys = {
	    { "<leader>tw", "<cmd>Twilight<CR>", desc = "Toggle Twilight", },
	  },

	  opts = {},
	},
}
