return {
	"AstroNvim/astrocommunity",

	-- Motion plugins
	{ import = "astrocommunity.motion.mini-ai" },
	{ import = "astrocommunity.motion.mini-move" },
	{ import = "astrocommunity.motion.tabout-nvim" },
	{ import = "astrocommunity.motion.vim-matchup" },
	{ import = "astrocommunity.motion.nvim-spider" },
	{ import = "astrocommunity.motion.nvim-surround" },

	-- UI
	{ import = "astrocommunity.utility.noice-nvim" },
	{ import = "astrocommunity.lsp.inc-rename-nvim" },
	{ import = "astrocommunity.lsp.lsp-signature-nvim" },
	{ import = "astrocommunity.scrolling.vim-smoothie" },
	{ import = "astrocommunity.editing-support.stickybuf-nvim" },

	-- Colorschemes
	{ import = "astrocommunity.colorscheme.catppuccin" },

	-- Completion
	{ import = "astrocommunity.completion.cmp-cmdline" },

	-- Language packs
	{ import = "astrocommunity.pack.lua" },

	-- File format packs
	{ import = "astrocommunity.pack.json" },
	{ import = "astrocommunity.pack.markdown" },

	-- Recipes
	{ import = "astrocommunity.recipes.vscode" },
	{ import = "astrocommunity.recipes.neovide" },
	{ import = "astrocommunity.recipes.cache-colorscheme" },
	{ import = "astrocommunity.recipes.heirline-vscode-winbar" },
	{ import = "astrocommunity.recipes.telescope-nvchad-theme" },
	{ import = "astrocommunity.recipes.heirline-nvchad-statusline" },
}
