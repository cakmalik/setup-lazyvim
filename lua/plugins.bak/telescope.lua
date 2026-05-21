return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    { "<leader>fs", "<cmd>Telescope lsp_document_symbols<cr>", desc = "Find Symbol (LSP)" },
    { "<leader>lg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep" }, -- Tambahkan ini
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" }, -- Tambahkan ini juga
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
