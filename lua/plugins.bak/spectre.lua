return {
  "nvim-pack/nvim-spectre",
  cmd = "Spectre",
  keys = {
    {
      "<leader>S",
      function()
        require("spectre").toggle()
      end,
      desc = "Toggle Spectre",
    },
  },
}
