return {
  -- Plugin utama untuk auto-completion
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-buffer", -- Completion dari buffer saat ini
      "hrsh7th/cmp-path", -- Completion untuk path/file
      "hrsh7th/cmp-nvim-lsp", -- Completion dari LSP
      "hrsh7th/cmp-nvim-lua", -- Completion untuk Lua API
      "saadparwaiz1/cmp_luasnip", -- Integrasi dengan luasnip
    },
    config = function()
      local cmp = require("cmp")

      cmp.setup({
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body) -- Gunakan luasnip untuk snippet
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-Space>"] = cmp.mapping.complete(), -- Memunculkan suggestion
          ["<C-e>"] = cmp.mapping.abort(), -- Menutup completion
          ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Pilih item pertama
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" }, -- Ambil data dari LSP
          { name = "luasnip" }, -- Ambil dari snippet
          { name = "buffer" }, -- Ambil dari buffer terbuka
          { name = "path" }, -- Ambil dari path sistem
        }),
      })
    end,
  },
}
