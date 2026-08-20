vim.pack.add { 'https://github.com/mfussenegger/nvim-dap' }
vim.pack.add { 'https://github.com/mfussenegger/nvim-dap-python' }
require("dap-python").setup("uv")


vim.keymap.set('n', '<Leader>dc',
    function() require('dap').continue() end,
    { desc = "[C]ontinue/Start debug session."})
vim.keymap.set('n', '<Leader>ds',
    function() require('dap').step_over() end,
    { desc = "[S]tep over: "})
vim.keymap.set('n', '<Leader>di',
    function() require('dap').step_into() end,
    { desc = "Step [i]nto: "})
vim.keymap.set('n', '<Leader>du',
    function() require('dap').step_out() end,
    { desc = "Step o[u]t"})
vim.keymap.set('n', '<Leader>dt',
    function() require('dap').toggle_breakpoint() end,
    { desc = "[T]oggle breakpoint"})
vim.keymap.set('n', '<Leader>db',
    function() require('dap').set_breakpoint() end,
    { desc = "Set [b]reakpoint" })
-- vim.keymap.set('n', '<Leader>lp',
--     function() require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)
-- vim.keymap.set('n', '<Leader>dr', function() require('dap').repl.open() end)
-- vim.keymap.set('n', '<Leader>dl', function() require('dap').run_last() end)
-- vim.keymap.set({'n', 'v'}, '<Leader>dh', function()
--   require('dap.ui.widgets').hover()
-- end)
-- vim.keymap.set({'n', 'v'}, '<Leader>dp', function()
--   require('dap.ui.widgets').preview()
-- end)
-- vim.keymap.set('n', '<Leader>df', function()
--   local widgets = require('dap.ui.widgets')
--   widgets.centered_float(widgets.frames)
-- end)
-- vim.keymap.set('n', '<Leader>ds', function()
--   local widgets = require('dap.ui.widgets')
--   widgets.centered_float(widgets.scopes)
-- end)
