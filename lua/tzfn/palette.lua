local options = require("tzfn.config").options
local variants = {
	main = {
		_nc = "#141414",
		bg = "#201822",
		surface = "#2b202d",
		overlay = "#362839",

		muted = "#5f6377",
		subtle = "#767a90",
		fg = "#d6d9e0",

		black = "#181818",
		white = "#d6d9e0",

		red = "#fc5f72",
		grn = "#00c9ad",
		ylw = "#ffb703",
		blu = "#017d83",
		mgt = "#e11d74",
		cyn = "#00c2d6",

		red2 = "#ff8a98",
		grn2 = "#00f5d4",
		ylw2 = "#ffd75a",
		blu2 = "#00a7a3",

		red3 = "#d44f60",
		grn3 = "#00a88f",
		ylw3 = "#cc9600",
		blu3 = "#006475",

		hl1 = "#242428",
		hl2 = "#34363d",
		hl3 = "#5e5a7a",

		none = "NONE",
	},
	light = {
		_nc = "#f7f8fa",
		bg = "#f5f6f8",
		surface = "#eceef2",
		overlay = "#e3e6ec",

		muted = "#7b8195",
		subtle = "#8f95aa",
		fg = "#1e1f24",

		black = "#1e1f24",
		white = "#f5f6f8",

		red = "#c84a5a",
		grn = "#2aa39a",
		ylw = "#caa200",
		blu = "#2b7a8c",
		mgt = "#c85c8a",

		red2 = "#e06474",
		grn2 = "#3dbdb1",
		ylw2 = "#e0b93a",
		blu2 = "#3aa0b4",

		red3 = "#a43a48",
		grn3 = "#1f8078",
		ylw3 = "#a48a00",
		blu3 = "#215f6b",

		hl1 = "#e6e9ef",
		hl2 = "#d9dde6",
		hl3 = "#bfc6d6",

		none = "NONE",
	},
}

if options.palette ~= nil and next(options.palette) then
	-- handle variant specific overrides
	for variant_name, override_palette in pairs(options.palette) do
		if variants[variant_name] then
			variants[variant_name] = vim.tbl_extend("force", variants[variant_name], override_palette or {})
		end
	end
end

if variants[options.variant] ~= nil then
	return variants[options.variant]
end

return vim.o.background == "light" and variants.light or variants[options.dark_variant or "main"]
