vim.keymap.set('n', '<leader>re', function()
  vim.cmd([[syntax match EscapeChar /\%x1b/ conceal cchar=⎋]])
  vim.opt_local.conceallevel = 1
  vim.opt_local.concealcursor = "nvic"
  print("Escape char concealed with ⎋.")
end, { desc = "Conceal Esc char with ⎋." })

vim.o.fileformats='unix,mac,dos'
vim.o.fileencodings='ucs-bom,utf-8,macroman'

vim.keymap.set('n', '<leader>rm', function()
  vim.cmd('edit ++enc=macroman')
  print("File reloaded with encoding set to Macroman")
end, { desc = "Reload with [M]acroman encoding" })

vim.keymap.set('n', '<leader>rl', function()
  vim.opt_local.fileformat = 'mac'
  vim.cmd('edit ++ff=mac')
  print("File reloaded with format (End-of-lines) set to mac (Carriage Return).")
end, { desc = "Reload with Carriage Return EOLs." })

vim.keymap.set('n', '<leader>rw', function()
  vim.cmd('write')
  vim.cmd('!run')
end, { desc = "[W]rite file and run Python script(s)." })

