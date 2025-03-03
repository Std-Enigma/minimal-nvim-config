return {
	"AstroNvim/astrolsp",
	opts = {
		features = {
			autoformat = true,
			codelens = true,
			inlay_hints = true,
			semantic_tokens = true,
		},
		formatting = {
			format_on_save = {
				enabled = true,
				allow_filetypes = {},
				ignore_filetypes = {},
			},
			disabled = { "lua_ls" },
			timeout_ms = 1000,
		},
		-- customize language server configuration options passed to `lspconfig`
		config = {},
		-- customize how language servers are attached
		handlers = {
			-- a function without a key is simply the default handler, functions take two parameters, the server name and the configured options table for that server
			-- function(server, opts) require("lspconfig")[server].setup(opts) end

			-- the key is the server that is being setup with `lspconfig`
			-- rust_analyzer = false, -- setting a handler to false will disable the set up of that language server
			-- pyright = function(_, opts) require("lspconfig").pyright.setup(opts) end -- or a custom handler function can be passed
		},
		-- Configure buffer local auto commands to add when attaching a language server
		autocmds = {
			lsp_document_highlight = {
				cond = "textDocument/documentHighlight",
				{
					event = { "CursorHold", "CursorHoldI" },
					desc = "Document Highlighting",
					callback = function()
						vim.lsp.buf.document_highlight()
					end,
				},
				{
					event = { "CursorMoved", "CursorMovedI", "BufLeave" },
					desc = "Document Highlighting Clear",
					callback = function()
						vim.lsp.buf.clear_references()
					end,
				},
			},
		},
		mappings = {
			n = {
				gl = {
					function()
						vim.diagnostic.open_float()
					end,
					desc = "Hover diagnostics",
				},
				gD = {
					function()
						vim.lsp.buf.declaration()
					end,
					desc = "Declaration of current symbol",
					cond = "textDocument/declaration",
				},
				["<Leader>uY"] = {
					function()
						require("astrolsp.toggles").buffer_semantic_tokens()
					end,
					desc = "Toggle LSP semantic highlight (buffer)",
					cond = function(client)
						return client.server_capabilities.semanticTokensProvider and vim.lsp.semantic_tokens
					end,
				},
			},
		},
		-- A custom `on_attach` function to be run after the default `on_attach` function
		-- takes two parameters `client` and `bufnr`  (`:h lspconfig-setup`)
		on_attach = function(client, bufnr)
			-- this would disable semanticTokensProvider for all clients
			-- client.server_capabilities.semanticTokensProvider = nil
		end,
	},
}
