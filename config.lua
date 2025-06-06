-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
lvim.plugins = {
  {
    "lunarvim/colorschemes",
    config = function()
    end
  },
  { "morhetz/gruvbox" },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      lvim.colorscheme = "catppuccin-frappe"
    end
  },
  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
      "TmuxNavigatorProcessList",
    },
    config = function()

    end
  }
}
lvim.format_on_save = true

vim.wo.relativenumber = true
vim.wo.number = true

vim.keymap.set("n", "<c-n>", vim.lsp.buf.definition, {})
--vim.keymap.set("n", "<c-n>", vim.lsp.buf.implementation, {}) not working anyone atm
vim.keymap.set("n", "<m-c-n>", vim.lsp.buf.references, {})
vim.keymap.set({ "n", "v" }, "<leader>s", vim.lsp.buf.code_action, {})

-- PROGRAMMING: Add comma and semicolon to the end of the current line
vim.keymap.set('n', 'L', 'mzJ`z', { desc = 'Join lines' })
vim.keymap.set('n', 'l', 'f,wi<enter><esc>', { desc = 'Split lines' })
vim.keymap.set('n', 'U', '<c-r>', { desc = 'Redo' })
vim.keymap.set({ 'n', 'v' }, '<leader>y', '"+y', { desc = 'Copy to clipboard' })
vim.keymap.set({ 'n', 'v' }, '<leader>p', '"+p', { desc = 'Paste from clipboard' })
vim.keymap.set({ 'n', 'v' }, '<c-p>', '"0p', { desc = 'Paste last yanked' })
vim.keymap.set('n', '*', '*zz', { desc = 'Center when *' })
vim.keymap.set('n', 'n', 'nzz', { desc = 'Center when n' })

-- Home and end go to first and last non space character
vim.keymap.set({ 'n', 'v' }, '<Home>', '<Home>_', { desc = 'Home => first non space' })
vim.keymap.set('i', '<Home>', '<esc><home>_i', { desc = 'Home => first non space' })
vim.keymap.set('n', '<End>', 'g_', { desc = 'End => last non space' })
vim.keymap.set('i', '<End>', '<esc>g_a', { desc = 'End => last non space' })
vim.keymap.set('n', '<c-a>', 'ggvG', { desc = 'Select all' })
vim.keymap.set('v', '<End>', 'g_', { desc = 'End => last non space' })
vim.keymap.set('n', '<c-z>', 'zz', { desc = 'Select all' })
vim.keymap.set({ 'n', 'v' }, '<c-Up>', '10<Up>zz', { desc = 'Navigate with crlt arrows instead of c-d and c-u' })
vim.keymap.set({ 'n', 'v' }, '<c-Down>', '10<Down>', { desc = 'Navigate with crlt arrows instead of c-d and c-u' })

vim.keymap.set('n', 'h', 'v', { desc = 'Use h instead of v for ergo reasons' })
vim.keymap.set('n', 'H', 'V', { desc = 'Use h instead of v for ergo reasons' })

vim.keymap.set({ 'n', 'v' }, '<C-S>', ':wa<Enter>', { desc = 'save all files' })
vim.keymap.set('i', '<C-S>', '<Esc>:wa<Enter>', { desc = 'save all files' })

vim.keymap.set('n', '<C-Q>', ':q!<Enter>', { desc = 'save all files' })


vim.keymap.set('n', '<c-i>', '<c-o>', { desc = 'swap c-i and c-o' })
vim.keymap.set('n', '<c-o>', '<c-i>', { desc = 'swap c-i and c-o' })


vim.keymap.set({ 'n', 'v', 'i' }, '<m-left>', '<Esc>:TmuxNavigateLeft<CR>')
vim.keymap.set({ 'n', 'v', 'i' }, '<m-right>', '<Esc>:TmuxNavigateRight<cr>')
vim.keymap.set({ 'n', 'v', 'i' }, '<m-up>', '<Esc>:TmuxNavigateUp<cr>')
vim.keymap.set({ 'n', 'v', 'i' }, '<m-down>', '<Esc>:TmuxNavigateDown<cr>')

vim.keymap.set('n', ';', 'A;<ESC><HOME><DOWN>')
vim.keymap.set('n', ',', 'A,<ESC><HOME><DOWN>')
