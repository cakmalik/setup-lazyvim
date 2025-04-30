return {
  {
    "L3MON4D3/LuaSnip",
    event = "InsertEnter",
    dependencies = {
      "rafamadriz/friendly-snippets", -- Kumpulan snippet siap pakai
    },
    config = function()
      local luasnip = require("luasnip")
      require("luasnip.loaders.from_vscode").lazy_load() -- Load semua snippet dari friendly-snippets

      -- Contoh snippet React (JSX)
      luasnip.add_snippets("javascript", {
        luasnip.snippet("useState", {
          luasnip.text_node("const ["),
          luasnip.insert_node(1, "state"),
          luasnip.text_node(", set"),
          luasnip.insert_node(2, "State"),
          luasnip.text_node("] = useState("),
          luasnip.insert_node(3, "initialValue"),
          luasnip.text_node(");"),
        }),
      })
    end,
  },
}
