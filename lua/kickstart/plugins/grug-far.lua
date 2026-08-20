local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add { gh 'MagicDuck/grug-far.nvim' }
require('grug-far').setup {
}

vim.keymap.set({'n', 'x'}, '<leader>gv', function()
  require('grug-far').with_visual_selection({ prefills = { paths = vim.fn.expand("%") } })
end, { desc = 'grug-far: with [V]isual selection from current file' })

vim.keymap.set({'n', 'x'}, '<leader>gc', function()
  require('grug-far').open({ prefills = { paths = vim.fn.expand("%") } })
end, { desc = 'grug-far: Search in [C]urrent file' })

vim.keymap.set({'n', 'x'}, '<leader>gw', function()
  require('grug-far').open({ visualSelectionUsage = 'operate-within-range' })
end, { desc = 'grug-far: Search [W]ithin range' })

vim.keymap.set({'n', 'x'}, '<leader>ga', function()
  require('grug-far').open({ prefills = { search = vim.fn.expand("<cword>") } })
end, { desc = 'grug-far: Search [A]ll files in dir' })
-- vim: ts=2 sts=2 sw=2 et
