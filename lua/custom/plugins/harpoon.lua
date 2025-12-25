return {
  'ThePrimeagen/harpoon',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local mark = require('harpoon.mark')
    local ui = require('harpoon.ui')

    require('harpoon').setup {
      global_settings = {
        save_on_toggle = true,
        save_on_change = true,
        tmux_autoclose_windows = false,
      },
    }

    -- Harpoon core
    vim.keymap.set('n', '<leader>ma', mark.add_file, { desc = 'Harpoon add file' })
    vim.keymap.set('n', '<leader>mm', ui.toggle_quick_menu, { desc = 'Harpoon menu' })

    -- Jump to slots 1-10
    vim.keymap.set('n', '<leader>m1', function() ui.nav_file(1) end, { desc = 'Harpoon file 1' })
    vim.keymap.set('n', '<leader>m2', function() ui.nav_file(2) end, { desc = 'Harpoon file 2' })
    vim.keymap.set('n', '<leader>m3', function() ui.nav_file(3) end, { desc = 'Harpoon file 3' })
    vim.keymap.set('n', '<leader>m4', function() ui.nav_file(4) end, { desc = 'Harpoon file 4' })
    vim.keymap.set('n', '<leader>m5', function() ui.nav_file(5) end, { desc = 'Harpoon file 5' })
    vim.keymap.set('n', '<leader>m6', function() ui.nav_file(6) end, { desc = 'Harpoon file 6' })
    vim.keymap.set('n', '<leader>m7', function() ui.nav_file(7) end, { desc = 'Harpoon file 7' })
    vim.keymap.set('n', '<leader>m8', function() ui.nav_file(8) end, { desc = 'Harpoon file 8' })
    vim.keymap.set('n', '<leader>m9', function() ui.nav_file(9) end, { desc = 'Harpoon file 9' })
    vim.keymap.set('n', '<leader>m0', function() ui.nav_file(10) end, { desc = 'Harpoon file 10' })

    -- Optional next/prev
    vim.keymap.set('n', '<leader>mn', ui.nav_next, { desc = 'Harpoon next' })
    vim.keymap.set('n', '<leader>mp', ui.nav_prev, { desc = 'Harpoon prev' })
  end,
}
