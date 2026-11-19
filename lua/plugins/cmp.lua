return {
  "saghen/blink.cmp",
  dependencies = { "saghen/blink.lib" },
  build = function ()
    require("blink.cmp").build():pwait()
  end,
  opts = {
    keymap = {
      preset = "super-tab"
    },
    completion = {
      menu = {
        draw = {
          columns = {
            { "label", gap = 1 },
            { "kind_icon", "kind", gap = 1 }
          }
        }
      }
    }
  }
}
