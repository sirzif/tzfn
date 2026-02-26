local options = require("tzfn.config").options
local variants = {
	main = {
		_nc = "#141216",
		bg = "#201822",
		surface = "#2c232e",
		overlay = "#3d3340",

		fg = "#d6d9e0",
		muted = "#646266",
		subtle = "#969399",

		red = "#f84a12",
		grn = "#36994e",
		ylw = "#ffaf0a",
		blu = "#558ba6",
		mgt = "#a82a5f",
		cyn = "#1da89d",

		red2 = "#fa835c",
		grn2 = "#5ecc79",
		ylw2 = "#ffb724",
		blu2 = "#79b9d9",
		mgt2 = "#db4282",
		cyn2 = "#30dbcd",

		red3 = "#330f04",
		grn3 = "#12331a",
		ylw3 = "#332302",
		blu3 = "#1a2b33",

		err = "#f71111",

		hl1 = "#291f2b",
		hl2 = "#372a3b",
		hl3 = "#4e3854",

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
