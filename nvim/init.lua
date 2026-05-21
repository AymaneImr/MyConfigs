if vim.loader then
	vim.loader.enable()
end

_G.dd = function(...)
	require("util.debug").dump(...)
end
vim.print = _G.dd

-- run gofmt + goimports on save
local format_sync_grp = vim.api.nvim_create_augroup("goimports", {})
vim.api.nvim_create_autocmd("bufwritepre", {
	pattern = "*.go",
	callback = function()
		require("go.format").goimports()
	end,
	group = format_sync_grp,
})
require("config.lazy")
