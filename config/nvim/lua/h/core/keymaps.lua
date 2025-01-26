vim.g.mapleader = " "

local keymap = vim.keymap

-- Clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- Increment & dicrement numbers
keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

-- Save current file
keymap.set("n", "<leader>ww", ":w!<CR>")

-- Split
keymap.set("n", "<leader>sv", "<C-w>s") -- Split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- Spit window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- Make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>") -- Close current split window

-- Tabs
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>") -- Open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>") -- Close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>") -- Go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>") -- Go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>") -- Move current buffer to new tab

-- Nvim-tree
keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>") -- toggle file explorer
keymap.set("n", "<leader>ef", "<cmd>NvimTreeFocus<CR>") -- focus

-- Telescope (finder)
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>") -- Find files
keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<CR>") -- Find recent files
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<CR>") -- Find string
