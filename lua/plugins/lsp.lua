return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        phpactor = {},
        -- PHP & Laravel
        intelephense = {
          settings = {
            intelephense = {
              files = { maxSize = 5000000 }, -- Tingkatkan batas ukuran file
            },
          },
        },
        -- Vue (jika pakai Laravel + Inertia.js)
        volar = {},
        -- Tambahkan TSServer untuk JavaScript & TypeScript
        ts_ls = {},
      },
    },
  },
}
