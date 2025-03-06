return {
  -- Plugin utama Git di Vim
  {
    "tpope/vim-fugitive",
    cmd = { "Git", "Gdiffsplit", "Gvdiffsplit", "Gstatus", "Gblame" },
    keys = {
      { "<leader>gs", "<cmd>Git status<cr>", desc = "Git Status" },
      { "<leader>gd", "<cmd>Gdiffsplit<cr>", desc = "Git Diff" },
      { "<leader>gb", "<cmd>Gblame<cr>", desc = "Git Blame" },
    },
  },

  -- Menampilkan perubahan di sisi kiri (gutter)
  {
    "airblade/vim-gitgutter",
    event = "BufRead",
    config = function()
      vim.g.gitgutter_signs = 1
      vim.g.gitgutter_highlight_linenrs = 1
    end,
    keys = {
      { "]c", "<cmd>GitGutterNextHunk<cr>", desc = "Next Change" },
      { "[c", "<cmd>GitGutterPrevHunk<cr>", desc = "Previous Change" },
      { "<leader>gh", "<cmd>GitGutterStageHunk<cr>", desc = "Stage Hunk" },
    },
  },

  -- Diff side-by-side seperti di VS Code
  {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewFileHistory" },
    config = function()
      require("diffview").setup({})
    end,
    keys = {
      { "<leader>dv", "<cmd>DiffviewOpen<cr>", desc = "Open Diff View" },
      { "<leader>dh", "<cmd>DiffviewFileHistory<cr>", desc = "File History" },
    },
  },

  -- LazyGit untuk UI Git dalam Terminal
  {
    "kdheepak/lazygit.nvim",
    cmd = "LazyGit",
    keys = {
      { "<leader>gg", "<cmd>LazyGit<cr>", desc = "Open LazyGit" },
    },
  },
}
