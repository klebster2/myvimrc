local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true, silent = true })

--- Define leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = ";"

--- Native Vim Keymaps (No plugins should be needed)
---- Normal mode remaps
-- 1. Jump to keymapping file:
keymap('n' , '<leader>m', ':e $HOME/.config/nvim/lua/keymappings.lua<cr>', opts)
---- 2. Try to simplify resizing splits
if vim.fn.has('unix') then
  -- use ctrl
  keymap('n', 'j', '<C-w>-5', opts)
  keymap('n', 'k', '<C-w>+5', opts)
  keymap('n', 'h', '<C-w><5', opts)
  keymap('n', 'l', '<C-w>>5', opts)
else
  -- use alt key
  keymap('n', '<M-j>', '<C-w>-', opts)
  keymap('n', '<M-k>', '<C-w>+', opts)
  keymap('n', '<M-h>', '<C-w><', opts)
  keymap('n', '<M-l>', '<C-w>>', opts)
end
---- 3. Move between windows
keymap('n', '<leader>h', ':wincmd h<CR>', opts)
keymap('n', '<leader>j', ':wincmd j<CR>', opts)
keymap('n', '<leader>k', ':wincmd k<CR>', opts)
keymap('n', '<leader>l', ':wincmd l<CR>', opts)

---- 4. Visual (vertical) split
keymap('n', '<leader>vx', ':vs .<CR>', opts)

---- 5. Leader Window closing remaps
keymap('n', '<leader>o', ':only<cr>', opts)

---- 6. Line Numbers
keymap('n', '<leader>sn', ':set number!<cr>', opts)
keymap('n', '<leader>srn', ':set relativenumber!<cr>', opts)

---- 7. Viewing Behaviour
keymap('n', '<leader>sw', ':set wrap!<cr>', opts)
------ Paste behaviour pasting rather than following commands in insertmode
keymap('n', '<leader>sp', ':set paste!<cr>', opts)
------ No highlight search (turn off)
keymap('n', '<leader>nhl', ':set no hlsearch<cr>', opts)

------ nvim init opts
-------- easy source
keymap('n', '<leader>sv', ':source $HOME/.config/nvim/init.lua<cr>:echom "$HOME/.config/nvim/init.lua sourced"<cr>', opts)
---keymap('n', '<leader>sv', ':source $HOME/.config/nvim/init.lua<cr>', opts)
-------- easy vimrc (init.lua) edit
keymap('n', '<leader>ev', ':vertical split $HOME/.config/nvim/init.lua<cr>:edit<cr>', opts)
-------- edit packer
keymap('n', '<leader>ep', ':vs $HOME/.config/nvim/lua/packer-startup.lua<cr>', opts)
-------- scrollbind for scrolling multiple files
keymap('n', '<leader>sb', ':set scrollbind!<cr>', opts)

------ Tab remaps
keymap('n', '<leader>tp', ':tabprev<cr>', opts)
keymap('n', '<leader>tn', ':tabnext<cr>', opts)
keymap('n', '<leader>tt', ':tabnew<cr>', opts)
keymap('n', '<leader>tc', ':tabclose<cr>', opts)
---
------ What the commit?
-------- Random commit message
keymap('n', '<leader>wtc', ":r!curl -s 'https://whatthecommit.com/index.txt'<cr>", opts)

------ Insert datetime
keymap('n', '<leader>dt', ":put =strftime('%d/%m/%y %H:%M:%S')<cr>", opts)

-------- hard H and L remaps
keymap('n', 'H', '0', opts)
keymap('n', 'L', '$', opts)

------ Visual mode remaps
------ Indentation
keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)

--- base64 encoding
keymap('v', '<leader>e64', 'c<c-r>=system(\'base64 \', @")<cr><esc>', opts)
--- base64 decoding
keymap('v', '<leader>d64', 'c<c-r>=system(\'base64 --decode\', @")<cr><esc>', opts)

------ Quote text in Visual mode
-------- TODO: use https://github.com/tpope/vim-surround

---- Insert mode remaps
------ jk to ESC
keymap('i', 'jk', '<ESC>', opts)
------ and for butterfingers
keymap('i', 'kj', '<ESC>', opts)
------ Sane escape from insert mode (Ctrl-C)
keymap('i', '<c-c>', '<ESC>', opts)
--- inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
--- keymap('i', '<expr> <Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', opts)
--- keymap('i', '<expr> <S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<S-Tab>"', opts)

------ Command Mode Mappings {{
-------- expand current script path
keymap('c', '%%', "<C-R>=expand('%:h').'/'<cr>", opts)

---- " Leader write with permissions ------------- {{{
keymap('c', 'w!!', 'w !sudo tee > /dev/null %', opts)
keymap('c', 'Vs', 'vs', opts)

------ Operator mappings
-------- more operator pending mappings (change inside next email address)
keymap('o', 'in@', ':<c-u>execute "normal! ?^.+@$\rvg_"<cr>', opts)
keymap('o', 'an@', ':<c-u>execute "normal! ?^\\S\\+@\\S\\+$\r:nohlsearch\r0vg"<cr>', opts)

------ Command remaps
-------- forgive :Wq, :WQ (Write and quit)
vim.api.nvim_command("command! Wq :wq")
vim.api.nvim_command("command! WQ :wq")
-------- and Q
vim.api.nvim_command("command! Q :q")

------ Spell
keymap('n', '<leader>ss', ':set spell!<cr>', opts)
------ Lib specific command (needs FzfLua)
--- keymap('n', '<leader>fb', ':FzfLua grep cwd=~/Britfone<cr>', opts)  -- Britfone

--- TODO -> FIX cht
keymap('n', '<leader>cht', "<command>cht.sh ", opts)
