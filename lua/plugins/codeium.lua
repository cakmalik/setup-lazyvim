return {
  "nvim-tree/nvim-tree.lua",
  opts = {
    filters = {
      dotfiles = false, -- Menampilkan file yang diawali titik (.env, .log)
      custom = {}, -- Pastikan tidak ada filter tambahan
    },
    git = {
      enable = true, -- Pastikan ini true jika menggunakan Git
      ignore = false, -- Agar file yang di-ignore Git tetap muncul
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
