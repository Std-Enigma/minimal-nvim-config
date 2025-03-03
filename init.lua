local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{
		"AstroNvim/AstroNvim",
		version = "^4",
		import = "astronvim.plugins",
		opts = {
			mapleader = " ", -- Ensure the leader key is configured before Lazy setup process
			maplocalleader = ",", -- Ensure the local leader key is configured before Lazy setup process
		},
	},
	{ import = "plugins.astronvim" },
	{ import = "plugins" },
}, {
	install = { colorscheme = { "astrodark", "habamax" } },
	ui = { backdrop = 100 },
	defaults = { lazy = true },
	performance = {
		rtp = {
			-- disable some rtp plugins, for more performance
			disabled_plugins = {
				"gzip",
				"matchit",
				"matchparen",
				"netrwPlugin",
				"tarPlugin",
				"tohtml",
				"tutor",
				"zipPlugin",
			},
		},
	},
})
