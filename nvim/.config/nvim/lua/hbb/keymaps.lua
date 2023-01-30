vim.keymap.set('n', '<leader>w', ':w!<cr>', { desc = '[W]rite' })
vim.keymap.set('n', '<leader>we', ':noa w<cr>', { desc = "[W]rite won't trigger formatting" })

vim.keymap.set('n', '<leader>q', ':q<cr>', { desc = '[Q]uit' })
vim.keymap.set('n', '<leader>qq', ':qa!<cr>', { desc = '[Q]uit all' })

vim.keymap.set('n', '<leader>e', '<C-w>', { desc = '[E] window' })
vim.keymap.set('n', '<leader>ev', ':vsplit<cr>', { desc = '[E] window [V]ertical' })
vim.keymap.set('n', '<leader>es', ':split<cr>', { desc = '[E] window [S]plit' })
vim.keymap.set('n', '<leader>+', ':vertical resize +5<cr>', { desc = '[+] resize' })
vim.keymap.set('n', '<leader>-', ':vertical resize -5<cr>', { desc = '[-] resize' })
vim.keymap.set('n', '<leader>=', '<C-w>=<cr>', { desc = '[=] resize' })

vim.keymap.set('n', '<leader>bd', ':bd<cr>', { desc = '[B]uffer [D]elete' })
vim.keymap.set('n', '<leader>bdd', ':bufdo bd<cr>', { desc = '[B]uffer [D]elete [D]elete all' })
vim.keymap.set('n', '<leader>;', '<C-^>', { desc = '[;] toggle last buffers' }) -- toggle last buffers

vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = '[C-h] window left' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = '[C-j] window down' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = '[C-k] window up' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = '[C-l] window right' })

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = '[J] move line up' })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = '[K] move line down' })
vim.keymap.set('v', 'p', '"_dP', { desc = '[P] paste' })

-- Quickfix
vim.keymap.set('n', '<leader>cn', ':cnext<CR>', { desc = '[C]next' })
vim.keymap.set('n', '<leader>cp', ':cprev<CR>', { desc = '[C]prev' })
vim.keymap.set('n', '<leader>cr', ':cfdo %s/', { desc = '[C]replace' })

-- Disable arrows
vim.keymap.set('n', '<Left>', ':lua print("Use h")<cr>', { desc = 'Disable arrow left' })
vim.keymap.set('n', '<Right>', ':lua print("Use l")<cr>', { desc = 'Disable arrow right' })
vim.keymap.set('n', '<Up>', ':lua print("Use k")<cr>', { desc = 'Disable arrow up' })
vim.keymap.set('n', '<Down>', ':lua print("Use j")<cr>', { desc = 'Disable arrow down' })

-- Git (Fugitive)
vim.keymap.set('n', '<leader>g', ':G<cr>', { desc = '[G]it fugitive' })
vim.keymap.set('n', '<leader>dh', ':diffget //2<cr>', { desc = '[D]iff [H]unk' })
vim.keymap.set('n', '<leader>dl', ':diffget //3<cr>', { desc = '[D]iff [L]eft' })

vim.keymap.set(
  'n',
  '<leader>s',
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = '[S]earch and replace' }
)

vim.keymap.set('n', '<leader>n', ':NvimTreeToggle<cr>', { desc = '[N]vim tree toggle' })
vim.keymap.set('n', '<leader>.', ':NvimTreeFindFile<cr>', { desc = '[N]vim tree find file' })

-- MarkdownPreview
vim.keymap.set('n', '<leader>mm', '<Plug>MarkdownPreviewToggle', { desc = '[M]arkdown [M]arkdownPreviewToggle' })
