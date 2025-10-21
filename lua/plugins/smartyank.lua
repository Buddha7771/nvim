return {
  "ibhagwan/smartyank.nvim",
  event = "VeryLazy",
  config = function()
    require("smartyank").setup({
      highlight = {
        enabled = true, -- yank 시 강조
        higroup = "IncSearch",
        timeout = 2000, -- ms 단위
      },
      clipboard = {
        enabled = true, -- 시스템 클립보드 복사
      },
      tmux = {
        enabled = true, -- tmux buffer도 업데이트
        cmd = { "tmux", "set-buffer", "-w" },
      },
      osc52 = {
        enabled = true, -- SSH 환경이면 OSC52 사용
        ssh_only = true, -- SSH일 때만 OSC52
        silent = false, -- 성공 시 메시지 출력
        echo_hl = "Directory",
      },
      -- 필요한 경우 조건을 직접 지정 가능:
      -- validate_yank = function() return vim.v.operator == "y" end,
    })

    ----------------------------------------------------------------
    -- 🔥 편의용 키맵
    ----------------------------------------------------------------
    -- 비주얼 모드에서 <leader>y → 로컬 맥 클립보드 복사
    vim.keymap.set("v", "<leader>y", '"+y', { desc = "Yank selection to Mac clipboard" })

    -- 전체 버퍼를 한 번에 복사
    vim.keymap.set("n", "<leader>ya", ":%y+<CR>", { desc = "Yank entire buffer to Mac clipboard" })
  end,
}
