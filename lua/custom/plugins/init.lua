-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local harpoon = require 'harpoon'

      harpoon:setup()

      vim.keymap.set('n', '<leader>h', function()
        harpoon:list():add()
      end, { desc = '' })
      vim.keymap.set('n', '<C-e>', function()
        harpoon.ui.toggle_quick_menu(harpoon:list())
      end)
      vim.keymap.set('n', '<C-S-P>', function()
        harpoon:list():prev()
      end)
      vim.keymap.set('n', '<C-S-P>', function()
        harpoon:list():prev()
      end)
    end,
  },
}
