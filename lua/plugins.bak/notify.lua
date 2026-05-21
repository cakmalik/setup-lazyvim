return {
  "rcarriga/nvim-notify",
  config = function()
    require("notify").setup({
      -- contoh opsi, bisa kamu sesuaikan
      timeout = 3000,
      max_height = 10,
      max_width = 50,
      stages = "fade_in_slide_out",
    })
    -- OPTIONAL: pakai notify sebagai default handler
    vim.notify = require("notify")
  end,
}
