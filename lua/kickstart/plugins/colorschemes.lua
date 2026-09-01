local function gh(repo) return 'https://github.com/' .. repo end

-- [[ Colorscheme ]]
-- You can easily change to a different colorscheme.
-- Change the name of the colorscheme plugin below, and then
-- change the command under that to load whatever the name of that colorscheme is.
--
-- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
vim.pack.add { gh 'folke/tokyonight.nvim' }
---@diagnostic disable-next-line: missing-fields
require('tokyonight').setup {
  styles = {
    comments = { italic = false }, -- Disable italics in comments
 },
}

vim.pack.add { gh 'catppuccin/nvim' }
vim.pack.add { gh 'adibhanna/forest-night.nvim' }
vim.pack.add { gh 'AlexvZyl/nordic.nvim' }
vim.pack.add { gh 'savq/melange-nvim' }
vim.pack.add { gh 'bluz71/vim-nightfly-colors' }
vim.pack.add { gh 'shawilly/treescape.nvim' }
vim.pack.add { gh 'olimorris/onedarkpro.nvim' }
vim.pack.add { gh 'nyoom-engineering/oxocarbon.nvim' }
vim.pack.add { gh 'bluz71/vim-moonfly-colors' }
vim.pack.add { gh 'rebelot/kanagawa.nvim' }
vim.pack.add { gh 'kylesnowschwartz/cobalt-neon.nvim' }
-- Load the colorscheme here.
-- Like many other themes, this one has different styles, and you could load
-- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.

require("cobalt-neon").setup({
  terminal_colors = true,   -- Set terminal ANSI colors
  transparent_mode = true, -- Transparent background
  dim_inactive = false,     -- Dim inactive windows
  undercurl = true,         -- Use undercurl for diagnostics
  underline = true,         -- Use underline
  bold = true,              -- Use bold

  italic = {
    strings = false,
    comments = true,
    keywords = false,
    functions = false,
    variables = false,
  },

  palette_overrides = {
    -- bg = "#0D1E28",        -- Darker background
    green = "#00FF00",     -- Different green
  },
  overrides = {},           -- Override specific highlight groups
})
vim.cmd.colorscheme 'cobalt-neon'
-- vim: ts=2 sts=2 sw=2 et
