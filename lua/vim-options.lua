vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line up(n)" })
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line down(n)" })
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move line up(v)" })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move line down(v)" })
vim.keymap.set("n", "<leader>cp", function()
	local root = vim.fn.getcwd()
	local file_path = vim.fn.expand("%:p")
	local relative_path = vim.fn.fnamemodify(file_path, ":~:."):gsub("^" .. vim.fn.escape(root, "\\") .. "/", "")
	vim.fn.setreg("+", relative_path)
	print("Copied relative path: " .. relative_path)
end, { desc = "Copy relative path from root" })
vim.keymap.set("n", "<leader>bda", ":%bd|e#|bd#<CR>", { desc = "Remove all buffers" })
vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
vim.keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- window management
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits sizes equal" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open a new tab" })
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close the current tab" })
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in a new tab" })
