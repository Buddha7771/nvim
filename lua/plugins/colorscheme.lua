return {
  {
    "Mofiqul/vscode.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      local c = require("vscode.colors").get_colors()
      require("vscode").setup({
        -- Override colors (see ./lua/vscode/colors.lua)
        color_overrides = {
          vscLineNumber = "#FFFFFF",
        },

        transparent = true,

        -- Override highlight groups (see ./lua/vscode/theme.lua)
        group_overrides = {
          -- this supports the same val table as vim.api.nvim_set_hl
          -- use colors from this colorscheme by requiring vscode.colors!
          Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true },
        },
      })
      require("vscode").load()

      local c = require("vscode.colors").get_colors()
      vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = c.vscGreen })
      vim.api.nvim_set_hl(0, "GitSignsChange", { fg = c.vscYellow })
      vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = c.vscRed })

      vim.api.nvim_set_hl(0, "SnacksPickerGitStatusAdded", { fg = c.vscGitAdded })
      vim.api.nvim_set_hl(0, "SnacksPickerGitStatusModified", { fg = c.vscGitModified })
      vim.api.nvim_set_hl(0, "SnacksPickerGitStatusDeleted", { fg = c.vscGitDeleted })
      vim.api.nvim_set_hl(0, "SnacksPickerGitStatusUntracked", { fg = c.vscGitUntracked })

      -- CursorLine: 배경을 아주 연한 흰색으로 (투명 배경에서 살짝만 보이게)
      vim.api.nvim_set_hl(0, "CursorLine", { bg = "NONE" })
      vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#FFFFFF", bold = true })

      -- 윈도우 구분선
      vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#444444", bg = "NONE" })

      -- 혹시 탭라인/버퍼라인도 문제라면
      vim.api.nvim_set_hl(0, "TabLineFill", { bg = "NONE" })
      vim.api.nvim_set_hl(0, "TabLine", { bg = "NONE", fg = "#888888" })
      vim.api.nvim_set_hl(0, "TabLineSel", { bg = "NONE", fg = "#FFFFFF", bold = true })
    end,
  },
}
