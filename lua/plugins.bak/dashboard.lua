return {
  {
    "nvimdev/dashboard-nvim",
    lazy = false, -- Load immediately
    priority = 9000, -- High priority
    opts = function()
      local logo = [[
	888      d8b                        d8b 888 888          888
	888      Y8P                        Y8P 888 888          888
	888                                     888 888          888
	88888b.  888 .d8888b  88888b.d88b.  888 888 888  8888b.  88888b.
	888 "88b 888 88K      888 "888 "88b 888 888 888     "88b 888 "88b
	888  888 888 "Y8888b. 888  888  888 888 888 888 .d888888 888  888
	888 d88P 888      X88 888  888  888 888 888 888 888  888 888  888
	88888P"  888  88888P' 888  888  888 888 888 888 "Y888888 888  888
      ]]

      logo = string.rep("\n", 8) .. logo .. "\n\n"

      local opts = {
        theme = "doom",
        hide = {
          statusline = false,
        },
        config = {
          header = vim.split(logo, "\n"),
          center = {
            {
              action = "Telescope find_files",
              desc = " Find file",
              icon = " ",
              key = "f",
            },
            {
              action = "ene | startinsert",
              desc = " New file",
              icon = " ",
              key = "n",
            },
            {
              action = "Telescope oldfiles",
              desc = " Recent files",
              icon = " ",
              key = "r",
            },
            {
              action = "Telescope live_grep",
              desc = " Find text",
              icon = " ",
              key = "g",
            },
            {
              action = "Telescope find_files cwd=~/.config/nvim",
              desc = " Config",
              icon = " ",
              key = "c",
            },
            {
              action = 'lua require("persistence").load()',
              desc = " Restore Session",
              icon = " ",
              key = "s",
            },
            {
              action = "LazyExtras",
              desc = " Lazy Extras",
              icon = " ",
              key = "x",
            },
            {
              action = "Lazy",
              desc = " Lazy",
              icon = "󰒲 ",
              key = "l",
            },
            {
              action = "qa",
              desc = " Quit",
              icon = " ",
              key = "q",
            },
          },
          footer = function()
            local stats = require("lazy").stats()
            local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
            return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
          end,
        },
      }

      for _, button in ipairs(opts.config.center) do
        button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
        button.key_format = "  %s"
      end

      -- close Lazy and re-open when the dashboard is ready
      if vim.o.filetype == "lazy" then
        vim.cmd.close()
        vim.api.nvim_create_autocmd("User", {
          pattern = "DashboardLoaded",
          callback = function()
            require("lazy").show()
          end,
        })
      end

      return opts
    end,
  },
}
