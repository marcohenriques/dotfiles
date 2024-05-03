return {
  {
    'tpope/vim-fugitive', -- Git commands in nvim
    config = function()
      vim.keymap.set('n', '<leader>gg', ':G<cr>', { desc = 'Git status' })
      vim.keymap.set('n', '<leader>dh', ':diffget //2<cr>', { desc = 'Git Diff Hunk' })
      vim.keymap.set('n', '<leader>dl', ':diffget //3<cr>', { desc = 'Git Diff Left' })
      vim.keymap.set('n', '<leader>ga', '<cmd>G aa<cr>', { desc = 'Git stage all' })
      vim.keymap.set('n', '<leader>gc', '<cmd>Git commit<cr>', { desc = 'Git commit' })
      vim.keymap.set('n', '<leader>gca', '<cmd>Git ca<cr>', { desc = 'Git commit amend' })
      vim.keymap.set('n', '<leader>gd', '<cmd>Gdiffsplit<cr>', { desc = 'Git diff' })
      vim.keymap.set('n', '<leader>gl', '<cmd>Git log --graph --oneline --decorate --all<cr>', { desc = 'Git log' })
      vim.keymap.set('n', '<leader>gu', '<cmd>Git pull<cr>', { desc = 'Git pull' })
      vim.keymap.set('n', '<leader>gp', '<cmd>Git ps<cr>', { desc = 'Git push' })
      vim.keymap.set('n', '<leader>gP', '<cmd>Git pf<cr>', { desc = 'Git push force' })
    end,
  },

  {
    'lewis6991/gitsigns.nvim',
    config = function()
      -- Enable gitsigns
      require('gitsigns').setup()

      -- Keymaps
      vim.keymap.set('n', '<leader>gt', ':Gitsigns blame_line<cr>', { desc = 'Git Blame' })
    end,
  },
}
