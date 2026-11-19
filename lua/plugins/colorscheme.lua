return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin"
    }
  },
  {
    "catppuccin/nvim",
    lazy = false,
    priority = 30000,
    opts = {
      flavour = "macchiato",
      integrations = {
        blink_pairs = true
      },
      ---@param colors CtpColors<string>
      custom_highlights = function (colors)
        local col = {
          LspInlayHint = {
            fg = colors.surface2,
            bg = colors.mantle
          },
          BufferLineIndicatorSelected = { fg = colors.blue },
          ["@variable.parameter"] = { fg = colors.maroon, style = { "italic" } },
          ["@variable"] = { fg = colors.lavender },
          ["@variable.builtin"] = { fg = colors.maroon },
          ["@variable.member"] = { fg = colors.maroon },
          ["@variable.member.key"] = { fg = colors.maroon },

          ["@module"] = { fg = colors.yellow },

          ["@constant"] = { fg = colors.peach },
          ["@constant.builtin"] = { fg = colors.peach },
          ["@constant.macro"] = { fg = colors.red },

          ["@string"] = { fg = colors.green },
          ["@string.regex"] = { fg = colors.sky },
          ["@string.escape"] = { fg = colors.sky },
          ["@character"] = { fg = colors.red },
          ["@number"] = { fg = colors.peach },
          ["@number.float"] = { fg = colors.peach },

          ["@annotation"] = { fg = colors.red },
          ["@attribute"] = { fg = colors.yellow },
          ["@error"] = { fg = colors.red },

          ["@keyword.exception"] = { fg = colors.red },
          ["@keyword"] = { fg = colors.mauve },
          ["@keyword.function"] = { fg = colors.mauve },
          ["@keyword.return"] = { fg = colors.mauve },
          ["@keyword.operator"] = { fg = colors.mauve },
          ["@keyword.import"] = { fg = colors.blue },
          ["@keyword.import.c"] = { fg = colors.blue },
          ["@keyword.import.cpp"] = { fg = colors.blue },
          ["@keyword.conditional"] = { fg = colors.mauve },
          ["@keyword.conditional.ternary"] = { fg = colors.mauve },
          ["@keyword.repeat"] = { fg = colors.yellow },
          ["@keyword.storage"] = { fg = colors.yellow },
          ["@keyword.directive"] = { fg = colors.yellow },
          ["@keyword.directive.define"] = { fg = colors.mauve },
          ["@keyword.modifier"] = { fg = colors.yellow },

          ["@function"] = { fg = colors.blue },
          ["@function.builtin"] = { fg = colors.blue },
          ["@function.macro"] = { fg = colors.red },
          ["@function.call"] = { fg = colors.blue },
          ["@function.method"] = { fg = colors.blue },
          ["@function.method.call"] = { fg = colors.blue },
          ["@constructor"] = { fg = colors.sky },

          ["@operator"] = { fg = colors.sapphire },
          ["@reference"] = { fg = colors.subtext0 },
          ["@symbol"] = { fg = colors.green },
          ["@tag"] = { fg = colors.yellow },
          ["@tag.attribute"] = { fg = colors.red },
          ["@tag.delimiter"] = { fg = colors.red },
          ["@text.emphasis"] = { fg = colors.peach },
          ["@text.strike"] = { fg = colors.red, strikethrough = true },
          ["@type.builtin"] = { fg = colors.yellow },
          ["@definition"] = { sp = colors.surface2, underline = true },
          ["@scope"] = { bold = true },
          ["@property"] = { fg = colors.teal },

          ["@markup.heading"] = { fg = colors.blue },
          ["@markup.raw"] = { fg = colors.sapphire },
          ["@markup.link"] = { fg = colors.red },
          ["@markup.link.url"] = { fg = colors.peach, underline = true },
          ["@markup.link.label"] = { fg = colors.sky },
          ["@markup.list"] = { fg = colors.red },
          ["@markup.strong"] = { bold = true },
          ["@markup.underline"] = { underline = true },
          ["@markup.italic"] = { italic = true },
          ["@markup.strikethrough"] = { strikethrough = true },
          ["@markup.quote"] = { bg = colors.mantle },

          ["@comment"] = { fg = colors.overlay1 },
          ["@comment.todo"] = { fg = colors.subtext0, bg = colors.text },
          ["@comment.warning"] = { fg = colors.mantle, bg = colors.peach },
          ["@comment.note"] = { fg = colors.mantle, bg = colors.blue },
          ["@comment.danger"] = { fg = colors.mantle, bg = colors.red },

          ["@diff.plus"] = { fg = colors.green },
          ["@diff.minus"] = { fg = colors.red },
          ["@diff.delta"] = { fg = colors.subtext0 },

          ["@lsp.typemod.variable.defaultLibrary"] = {
            link = "@variable.builtin"
          }
        }
        for i = 1, 6 do
          col["@markup.heading." .. i .. ".typst"] = { link = "@markup.heading." .. i .. ".markdown" }
        end
        return col
      end
    }
  }
}
