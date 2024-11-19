return {
	"f-person/git-blame.nvim",
	config = function()
	  vim.g.gitblame_enabled = true
		vim.g.gitblame_message_template = "<author> • <date> • <summary>"
		vim.g.gitblame_date_format = "%r, %A, %B %d, %Y %H:%M:%S"
		vim.g.gitblame_virtual_text_column = 1
	end,
}
