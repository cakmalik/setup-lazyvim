return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        php = { "pint" },
        blade = { "prettier" },
        vue = { "prettier" },
        html = { "prettier" },
      },
      formatters = {
        pint = {
          command = "pint",
          args = { "$FILENAME" },
          stdin = false,
        },
        prettier = {
          command = "npx",
          args = {
            "prettier",
            "--plugin",
            "prettier-plugin-blade",
            "--stdin-filepath",
            "$FILENAME",
            "--single-quote",
          },
          stdin = true,
        },
      },
      format_on_save = {
        lsp_fallback = true,
        timeout_ms = 1000,
      },
    },
  },
}
