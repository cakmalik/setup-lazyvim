return {
  {
    "navarasu/onedark.nvim",
    lazy = false,       -- load saat startup
    priority = 1000,    -- load sebelum plugin lain
    config = function()
      require("onedark").setup({
        style = "darker", -- dark | darker | cool | deep | warm | warmer
      })
      require("onedark").load()
    end,
  },
}

