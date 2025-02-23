return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    { "<leader>fs", "<cmd>Telescope lsp_document_symbols<cr>", desc = "Find Symbol (LSP)" },
  },
  config = function()
    require("telescope").setup({
      defaults = {
        mappings = {
          i = { ["<C-u>"] = false, ["<C-d>"] = false },
        },
      },
    })
  end,
}
