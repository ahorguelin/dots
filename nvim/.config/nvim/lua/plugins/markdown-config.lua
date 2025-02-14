return {
	{
		"MeanderingProgrammer/render-markdown.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" }, -- if you use the mini.nvim suite
		-- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
		-- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
		---@module 'render-markdown'
		---@type render.md.UserConfig
		opts = {},
	},
	{
		"preservim/vim-pencil",
		config = function()
			opts = {
				vim.keymap.set("n", "<leader>tp", function()
					vim.cmd.PencilToggle()
					vim.cmd("set spelllang=fr")
					vim.cmd("set spell")
				end),
			}
		end,
	},
}
