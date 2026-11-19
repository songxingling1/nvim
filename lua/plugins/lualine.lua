---@class NoiceStatusline
---@field get    fun(): string
---@field has    fun(): boolean
---@field get_hl fun(): string

local function mode()
  return require("noice.api.status").mode --[[@as NoiceStatusline]]
end

return {
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      component_separators = { left = "", right = "" },
      section_separators = { left = "", right = "" }
    },
    sections = {
      lualine_a = {
        function () return "󰀘" end
      },
      lualine_b = {
        {
          "filetype",
          icon_only = true,
          padding = { left = 1, right = 0 },
          colored = false,
          fmt = function (str)
            return str ~= "" and str or "unknown"
          end,
          separator = ""
        },
        {
          LazyVim.lualine.pretty_path({ modified_hl = "Bold", modified_sign = "[+]", relative = "root" }),
          padding = { left = 0, right = 1 }
        }
      },
      lualine_c = {
        {
          function ()
            return vim.fs.basename(LazyVim.root.get({ normalize = true }))
          end,
          icon = "",
          color = "Dimmed"
        },
        { "branch", icon = "", color = "Dimmed" },
        {
          "diff",
          symbols = {
            added = LazyVim.config.icons.git.added,
            modified = LazyVim.config.icons.git.modified,
            removed = LazyVim.config.icons.git.removed
          },
          source = function ()
            local gitsigns = vim.b.gitsigns_status_dict
            if gitsigns then
              return { added = gitsigns.added, modified = gitsigns.changed, removed = gitsigns.removed }
            end
          end,
          color = "Dimmed"
        }
      },
      lualine_x = {
        {
          "diagnostics",
          symbols = {
            error = LazyVim.config.icons.diagnostics.Error,
            warn = LazyVim.config.icons.diagnostics.Warn,
            info = LazyVim.config.icons.diagnostics.Info,
            hint = LazyVim.config.icons.diagnostics.Hint
          },
          separator = ""
        },
        {
          function ()
            return mode().get()
          end,
          cond = function ()
            return mode().has()
          end,
          color = function ()
            return { fg = Snacks.util.color("WarningMsg") }
          end
        }
      },
      lualine_y = {
        {
          "lsp_status",
          symbols = { spinner = { "", "", "", "", "", "" } }
        }
      },
      lualine_z = {
        { "%l:%c" }
      }
    }
  }
}
