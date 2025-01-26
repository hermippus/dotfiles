vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- UTF-8
opt.encoding = "UTF-8"
opt.fileencoding = "UTF-8"

-- tab & indent
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.wrap = false

-- search
opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

-- turn off swapfile & backup
opt.swapfile = false
opt.backup = false

-- turn on mouse
opt.mouse:append("a")
