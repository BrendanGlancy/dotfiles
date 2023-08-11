local present, null_ls = pcall(require, "null-ls")

if not present then
   return
end

-- This code is only executed if null-ls is successfully loaded
local b = null_ls.builtins

local sources = {

	-- Spell
	b.completion.spell,
	-- webdev stuff
	b.formatting.prettier.with({
		filetypes = {
			"javascript",
			"javascriptreact",
			"typescript",
			"typescriptreact",
			"vue",
			"css",
			"scss",
			"less",
			"html",
			"json",
			"jsonc",
			"yaml",
			"markdown",
			"graphql",
		},
	}),
	-- Lua
	b.formatting.stylua,

	-- Shell
	b.formatting.shfmt,
	b.diagnostics.shellcheck.with({ diagnostics_format = "#{m} [#{c}]" }),

	-- cpp
	b.formatting.clang_format,
}

null_ls.setup({
	debug = true,
	sources = sources,
  on_attach = function(client)
      if vim.fn.has("nvim-0.9") then
          if client.server_capabilities.documentFormattingProvider then
              vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
          end
      else
          if client.resolved_capabilities.document_formatting then
              vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
          end
      end
  end,
})
