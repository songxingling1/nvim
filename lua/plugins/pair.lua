return {
  {
    "saghen/blink.pairs",
    dependencies = "saghen/blink.lib",
    version = "*",
    event = "VeryLazy",
    build = function ()
      require("blink.pairs").build():pwait()
    end,
    opts = {
      mappings = {
        disabled_filetypes = { "bigfile" }
      },
      highlights = {
        groups = {
          "BlinkPairsRed",
          "BlinkPairsOrange",
          "BlinkPairsYellow",
          "BlinkPairsGreen",
          "BlinkPairsBlue",
          "BlinkPairsPurple"
        },
        matchparen = {
          include_surrounding = true
        }
      }
    }
  },
  {
    "nvim-mini/mini.pairs",
    enabled = false,
    optional = true
  }
}
