return {
  "nvim-tree/nvim-tree.lua",
  opts = {
    filters = {
      dotfiles = false, -- Menampilkan file dot (.env, .log)
      custom = {}, -- Pastikan tidak ada filter tambahan
    },
    view = {
      width = 30,
      side = "left",
    },
  },
  config = function(_, opts)
    require("nvim-tree").setup(opts)
  end,
}
