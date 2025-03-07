return {
  "nvimtools/none-ls.nvim",
  opts = function(_, config)
    local null_ls = require("null-ls")
    config.sources = vim.list_extend(config.sources or {}, {
      null_ls.builtins.formatting.blade_formatter,
    })
    return config
  end,
}
