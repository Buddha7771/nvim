-- ~/.config/nvim/lua/plugins/venv-selector.lua
return {
  "linux-cultist/venv-selector.nvim",
  branch = "regexp", -- 최신 버전
  dependencies = { "neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim" },
  config = function()
    require("venv-selector").setup({
      -- search = false, -- 필요시 수동
    })
  end,
  keys = {
    { "<leader>cv", "<cmd>VenvSelect<cr>", desc = "Select VirtualEnv" },
  },
}
