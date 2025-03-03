return {
	"stevearc/oil.nvim",
	dependencies = {
		{
			"AstroNvim/astrocore",
			opts = {
				mappings = {
					n = {
						["<Leader>O"] = {
							function()
								require("oil").open_float()
							end,
							desc = "Open folder in Oil",
						},
					},
				},
			},
		},
	},
	opts = {
		watch_for_changes = true,
		float = { padding = 5 },
		keymaps = { ["q"] = "actions.close" },
	},
}
