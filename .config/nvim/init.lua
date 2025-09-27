
-- Requirements?

require("config.lazy")

-- Basic settings
vim.opt.number = true                              -- Line numbers
vim.opt.relativenumber = true                      -- Relative line numbers
vim.opt.cursorline = false                         -- Highlight current line
vim.opt.wrap = false                               -- Don't wrap lines
vim.opt.scrolloff = 10                             -- Keep 10 lines above/below cursor 
vim.opt.sidescrolloff = 8                          -- Keep 8 columns left/right of cursor

-- Indentation
vim.opt.tabstop = 4                                -- Tab width
vim.opt.shiftwidth = 4                             -- Indent width
vim.opt.softtabstop = 2                            -- Soft tab stop
vim.opt.expandtab = true                           -- Use spaces instead of tabs
vim.opt.smartindent = true                         -- Smart auto-indenting
vim.opt.autoindent = true                          -- Copy indent from current line

-- Search settings
vim.opt.ignorecase = true                          -- Case insensitive search
vim.opt.smartcase = true                           -- Case sensitive if uppercase in search
vim.opt.hlsearch = false                           -- Don't highlight search results 
vim.opt.incsearch = true                           -- Show matches as you type
vim.o.wrapscan = true                              -- Don't keep searching if the end of the file

-- Visual settings
vim.opt.termguicolors = true                       -- Enable 24-bit colors
vim.opt.signcolumn = "no"                         -- Always show sign column
vim.opt.showmatch = true                           -- Highlight matching brackets
vim.opt.matchtime = 2                              -- How long to show matching bracket
vim.opt.cmdheight = 1                              -- Command line height
vim.opt.completeopt = "menuone,noinsert,noselect"  -- Completion options 
vim.opt.showmode = true                            -- Don't show mode in command line 
vim.opt.pumheight = 20                             -- Popup menu height 
vim.opt.pumblend = 10                              -- Popup menu transparency 
vim.opt.winblend = 0                               -- Floating window transparency 
vim.opt.conceallevel = 0                           -- Don't hide markup 
vim.opt.concealcursor = ""                         -- Don't hide cursor line markup 
vim.opt.lazyredraw = true                          -- Don't redraw during macros
vim.opt.synmaxcol = 300                            -- Syntax highlighting limit 


-- File handling
vim.opt.backup = false                             -- Don't create backup files
vim.opt.writebackup = false                        -- Don't create backup before writing
vim.opt.swapfile = false                           -- Don't create swap files
vim.opt.undofile = true                            -- Persistent undo
vim.opt.undodir = vim.fn.expand("~/.vim/undodir")  -- Undo directory
vim.opt.updatetime = 300                           -- Faster completion
vim.opt.timeoutlen = 500                           -- Key timeout duration
vim.opt.ttimeoutlen = 0                            -- Key code timeout
vim.opt.autoread = true                            -- Auto reload files changed outside vim
vim.opt.autowrite = false                          -- Don't auto save

-- Behavior settings
vim.opt.hidden = true                              -- Allow hidden buffers
vim.opt.errorbells = false                         -- No error bells
vim.opt.backspace = "indent,eol,start"             -- Better backspace behavior
vim.opt.autochdir = false                          -- Don't auto change directory
vim.opt.path:append("**")                          -- include subdirectories in search
vim.opt.selection = "exclusive"                    -- Selection behavior
vim.opt.mouse = "a"                                -- Enable mouse support
vim.opt.clipboard:append("unnamedplus")            -- Use system clipboard
vim.opt.modifiable = true                          -- Allow buffer modifications
vim.opt.encoding = "UTF-8"                         -- Set encoding

-- Cursor settings
vim.opt.guicursor = "n-v-c:block,i:ver30-blinkon250"

-- Force pitch black background for all themes
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    local set_hl = vim.api.nvim_set_hl
    set_hl(0, "Normal",      { bg = "#000000" })
    set_hl(0, "NormalFloat", { bg = "#000000" })
    set_hl(0, "SignColumn",  { bg = "#000000" })
    set_hl(0, "LineNr",      { bg = "#000000" })
    set_hl(0, "EndOfBuffer",{ bg = "#000000" })
    set_hl(0, "WinSeparator",{ bg = "#000000" })
    set_hl(0, "StatusLine",  { bg = "#000000" })
  end,
})

-- Set the theme
vim.cmd("colorscheme gruvbox-material")

------------------
-- KEY BINDINGS --
------------------

-- Normal, Visual, Operator-pending modes
vim.keymap.set({'n', 'v', 'o'}, 'w', 'h', { noremap = true })
vim.keymap.set({'n', 'v', 'o'}, 'e', 'j', { noremap = true })
vim.keymap.set({'n', 'v', 'o'}, 'a', 'k', { noremap = true })
vim.keymap.set({'n', 'v', 'o'}, 'r', 'l', { noremap = true })

----------------------
-- CUSTOM KEY BINDS --
----------------------

-- Change dw to jh
vim.keymap.set({'n', 'v', 'o'}, "j", "d", { noremap = true })  -- Delete operator mapped to j
vim.keymap.set({'n', 'v', 'o'}, "h", "w", { noremap = true })  -- Word motion mapped to h

-- Change A to Ñ
vim.keymap.set({'n', 'v', 'o'}, "Ñ", "A", { noremap = true })  -- Append operator mapped to Ñ
vim.keymap.set({'n', 'v', 'o'}, "ñ", "a", { noremap = true })  -- Append operator mapped to Ñ
vim.keymap.set({'n', 'v', 'o'}, "l", "e", { noremap = true })  -- e (end of word) motion mapped to l
-------------------
-- MOVEMENT KEYS --
-------------------

-- Change Ctrl+y to ctrl+a, scrolling up and down
vim.keymap.set('n', '<C-a>', '<C-y>', { noremap = true })  -- scroll up

-- Change Ctr+u from scroll to redo
vim.keymap.set('n', '<C-u>',' <C-r>', { noremap = true })  -- Redo

