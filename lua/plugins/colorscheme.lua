return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
  {
    "folke/tokyonight.nvim",
    opts = {
      on_highlights = function(hl, c)
        -- nomor baris relatif
        hl.LineNrAbove = { fg = c.yellow }
        hl.LineNrBelow = { fg = c.red }

        -- nomor baris di baris kursor
        hl.LineNr = { fg = c.gray, bold = true }
      end,
    },
  },
}
