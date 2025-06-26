return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        php = { "pint" },
        blade = { "prettier" }, -- ganti dari blade-formatter ke prettier
      },
      formatters = {
        pint = {
          command = "pint",
          args = { "$FILENAME" },
          stdin = false,
        },
        prettier = {
          command = "npx",
          args = { "prettier", "--stdin-filepath", "$FILENAME" },
          stdin = true,
        },
      },
      format_on_save = {
        lsp_fallback = true,
      },
    },
  },
}
