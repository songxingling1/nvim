return {
  {
    "mason-org/mason.nvim",
    opts = function (_, opts)
      opts.ensure_installed = { "clangd", "clang-format", "tinymist", "emmylua_ls", "luafmt" }
    end
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        lua_ls = { enabled = false }
      }
    }
  },
  {
    "folke/lazydev.nvim",
    enabled = false,
    optional = true
  },
  {
    "saghen/blink.cmp",
    opts = function (_, opts)
      opts.sources.per_filetype.lua = nil
      opts.sources.providers.lazydev = nil
      return opts
    end
  }
}
