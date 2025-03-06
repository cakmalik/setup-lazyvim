return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        php = { "pint" }, -- Bisa ganti "php_cs_fixer" kalau pakai PHP-CS-Fixer
        blade = { "blade_formatter" }, -- Blade pakai blade-formatter
      },
      format_on_save = {
        lsp_fallback = true, -- Jika tidak ada formatter, fallback ke LSP
      },
    },
  },
}
