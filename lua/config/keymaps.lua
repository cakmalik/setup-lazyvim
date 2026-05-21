vim.keymap.set("n", "<C-0>", function()
  vim.cmd("bufdo bd")
end, { desc = "Close all buffers" })

vim.keymap.set("n", "<leader>0", "<cmd>%bd|e#|bd#<CR>", {
  desc = "Close all buffers",
})

vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { noremap = true, silent = true })
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { noremap = true, silent = true })

vim.keymap.set("n", "<A-S-j>", "yyp", { noremap = true, silent = true })
vim.keymap.set("n", "<A-S-k>", "yyP", { noremap = true, silent = true })

vim.keymap.set("n", "<C-_>", "gcc", { noremap = false }) -- Ctrl+/ di Normal mode
vim.keymap.set("v", "<C-_>", "gc", { noremap = false }) -- Ctrl+/ di Visual mode

vim.keymap.set("n", "<C-S-[>", "zc", { noremap = false, silent = true })
vim.keymap.set("v", "<C-S-[>", "zc", { noremap = false, silent = true })

vim.keymap.set("n", "<C-S-]>", "zo", { noremap = false, silent = true })
vim.keymap.set("v", "<C-S-]>", "zo", { noremap = false, silent = true })

-- Remap dd untuk tidak copy ke clipboard
vim.keymap.set("n", "dd", '"_dd', { noremap = true, silent = true })

-- Remap ciw untuk tidak copy ke clipboard
vim.keymap.set("n", "ciw", '"_ciw', { noremap = true, silent = true })

-- Tambahan lainnya (optional)
vim.keymap.set("n", "x", '"_x', { noremap = true, silent = true })
vim.keymap.set("v", "d", '"_d', { noremap = true, silent = true })
vim.keymap.set("v", "c", '"_c', { noremap = true, silent = true })

vim.keymap.set("n", "<C-=>", function()
  local current = vim.o.guifont
  local name, size = current:match("^(.-):h(%d+)")
  name = name or "JetBrainsMono Nerd Font"
  size = tonumber(size) or 14
  vim.o.guifont = string.format("%s:h%d", name, size + 1)
  print("Font size: " .. size + 1)
end, { desc = "Increase font size" })

vim.keymap.set("n", "<C-->", function()
  local current = vim.o.guifont
  local name, size = current:match("^(.-):h(%d+)")
  name = name or "JetBrainsMono Nerd Font"
  size = tonumber(size) or 14
  vim.o.guifont = string.format("%s:h%d", name, size - 1)
  print("Font size: " .. size - 1)
end, { desc = "Decrease font size" })

vim.keymap.set("n", "<leader>cp", function()
  vim.fn.setreg("+", vim.fn.expand("%:p"))
  print("Path copied")
end, { desc = "Copy file path" })
