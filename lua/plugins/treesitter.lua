return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "html",
        "php",
        "javascript",
        "typescript",
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
