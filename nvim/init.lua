require("config.lazy")


-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- colors
vim.opt.termguicolors = true

vim.keymap.set("n", ";", ":", {desc = "Colon-Command (slightly easier, no shift)", remap = false})
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
