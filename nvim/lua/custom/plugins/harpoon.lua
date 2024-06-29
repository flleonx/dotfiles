return {
  {
    'cbochs/grapple.nvim',
    opts = {
      scope = 'git', -- also try out "git_branch"
    },
    event = { 'BufReadPost', 'BufNewFile' },
    cmd = 'Grapple',
    keys = {
      { '<leader>m', '<cmd>Grapple toggle<cr>', desc = 'Grapple toggle tag' },
      { '<leader>M', '<cmd>Grapple toggle_tags<cr>', desc = 'Grapple open tags window' },
      { '<leader>n', '<cmd>Grapple cycle_tags next<cr>', desc = 'Grapple cycle next tag' },
      { '<leader>p', '<cmd>Grapple cycle_tags prev<cr>', desc = 'Grapple cycle previous tag' },
    },
  },
  { 'sitiom/nvim-numbertoggle' },
  { 'MattesGroeger/vim-bookmarks' },
  {
    'ibhagwan/fzf-lua',
    -- optional for icon support
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      -- calling `setup` is optional for customization
      require('fzf-lua').setup {}
      vim.keymap.set('n', '<leader>sf', ':FzfLua files<CR>')
      vim.keymap.set('n', '<leader>gd', ':FzfLua lsp_definitions<CR>')
      vim.keymap.set('n', '<leader>gr', ':FzfLua lsp_references<CR>')
      vim.keymap.set('n', '<leader>ds', ':FzfLua lsp_document_symbols<CR>')
      vim.keymap.set('n', '<leader>gi', ':FzfLua lsp_implementations<CR>')
      vim.keymap.set('n', '<leader>/', ':FzfLua blines<CR>')
    end,
  },
  {
    'nvim-telescope/telescope-live-grep-args.nvim',
    -- This will not install any breaking changes.
    -- For major updates, this must be adjusted manually.
    version = '^1.0.0',
    priority = 100, -- make sure to load this before all the other start plugins
    config = function()
      require('telescope').load_extension 'live_grep_args'
      vim.keymap.set('n', '<leader>sg', ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>", { silent = true })
    end,
  },
  {
    'folke/trouble.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },
}
