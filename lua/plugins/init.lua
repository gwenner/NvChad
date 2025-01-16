return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  {
    "mrcjkb/rustaceanvim",
    version = "^5", -- Recommended
    lazy = false, -- This plugin is already lazy
    ["rust-analyzer"] = {
      cargo = {
        allFeatures = true,
      },
    },
    -- config = function()
    --   require "configs.rustaceanvim"
    -- end,
  },

  {
    "mfussenegger/nvim-dap",
  },

  {
    "rcarriga/nvim-dap-ui",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim", "lua", "vimdoc", "html", "css",
        "python", "c", "rust"
      },
    },
  },
}
