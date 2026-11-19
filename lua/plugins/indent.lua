return {
  {
    "snacks.nvim",
    opts = {
      indent = { enabled = false }
    }
  },
  {
    "saghen/blink.indent",
    event = "LazyFile",
    opts = function ()
      Snacks.toggle({
        name = "Indention Guides",
        get = function ()
          return require("blink-indent").is_enabled({ bufnr = 0 })
        end,
        set = function (state)
          require("blink-indent").enable(state, { bufnr = 0 })
        end
      }):map("<leader>ug")
      return {
        blocked = {
          filetypes = {
            include_defaults = true,
            "Trouble",
            "alpha",
            "dashboard",
            "help",
            "lazy",
            "mason",
            "neo-tree",
            "notify",
            "snacks_dashboard",
            "snacks_notif",
            "snacks_terminal",
            "snacks_win",
            "toggleterm",
            "trouble",
            "bigfile"
          }
        },
        static = {
          char = "▏"
        },
        scope = {
          char = "▏",
          highlights = { "BlinkIndentScope" }
        }
      }
    end
  }
}
