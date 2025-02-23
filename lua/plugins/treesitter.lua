return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "html",
        "php",
        "javascript",
        "css", -- Untuk Laravel + Blade
        "vue",
        "tsx",
        "json",
        "yaml", -- Untuk Vue.js & React (TSX)
      },
      highlight = { enable = true },
      indent = { enable = true },
    },
  },
}
