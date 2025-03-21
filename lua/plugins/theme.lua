return {
  {
    'datsfilipe/vesper.nvim',
    config = function()
      vim.cmd 'colorscheme vesper'
    end,
  },
  {
    'zenbones-theme/zenbones.nvim',
    -- Optionally install Lush. Allows for more configuration or extending the colorscheme
    -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
    -- In Vim, compat mode is turned on as Lush only works in Neovim.
    dependencies = 'rktjmp/lush.nvim',
    lazy = false,
    priority = 1000,
    -- you can set set configuration options here
    -- config = function()
    --   vim.g.zenbones_darken_comments = 45
    --   vim.cmd.colorscheme 'zenbones'
    -- end,
  },
  {
    'shaunsingh/moonlight.nvim',
    lazy = false, -- load during startup
    priority = 1000,
    opts = {
      transparent_background = false, -- if true, background will be transparent
      highlights = {
        -- Customize specific highlight groups
        Search = { bg = '#3e68d7' }, -- search highlight
        Visual = { bg = '#2d3f76' }, -- visual selection
        IncSearch = { bg = '#283593' }, -- incremental search
        CursorLine = { bg = '#222436' }, -- current line highlight
      },
    },
    config = function()
      -- vim.cmd.colorscheme 'moonlight'
    end,
  },
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'folke/tokyonight.nvim',
    -- priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      -- vim.cmd.colorscheme 'tokyonight-night'

      -- You can configure highlights by doing something like:
      vim.cmd.hi 'Comment gui=none'
    end,
  },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    opts = {
      color_overrides = {
        mocha = {
          base = '#000000',
          mantle = '#000000',
          crust = '#000000',
        },
      },
    },
    -- config = function()
    -- vim.cmd 'colorscheme catppuccin'
    -- end,
  },
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    config = function()
      -- vim.cmd 'colorscheme rose-pine'
    end,
  },

  {
    'olivercederborg/poimandres.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('poimandres').setup {
        -- leave this setup function empty for default config
        -- or refer to the configuration section
        -- for configuration options
      }
    end,

    -- optionally set the colorscheme within lazy config
    init = function()
      -- vim.cmd 'colorscheme poimandres'
    end,
  },
}
