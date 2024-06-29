return {
  {
    'sainnhe/everforest',
    priority = 1000, -- Colorscheme plugin is loaded first before any other plugins
    dependencies = {
      {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
      },
    },
    config = function()
      vim.opt.background = 'light'
      vim.cmd [[colorscheme everforest]]
      vim.cmd.hi 'SignColumn guibg=none'
      require('lualine').setup()
    end,
  },
}
