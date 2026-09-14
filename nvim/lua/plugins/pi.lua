return { 
    "pablopunk/pi.nvim",
    
    keys = {
        { "<leader>ai", ":PiAsk<CR>", desc = "Ask pi"},
        { "<leader>ai", ":PiAskSelection<CR>", mode = {"v"}, desc = "Ask pi (selection)"}, 
    }    
}
