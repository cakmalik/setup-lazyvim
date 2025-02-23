return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        php = { "intelephense" }, -- Format PHP pakai Intelephense
        blade = { "blade_formatter" }, -- Format Blade pakai blade-formatter
      },
    },
  },
}
