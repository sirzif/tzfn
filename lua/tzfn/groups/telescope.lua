return function(palette, styles, make_border)
	return {
		-- nvim-telescope/telescope.nvim
		TelescopeBorder = make_border(),
		TelescopeMatching = { fg = palette.grn2 },
		TelescopeNormal = { link = "NormalFloat" },
		TelescopePromptNormal = { link = "TelescopeNormal" },
		TelescopePromptPrefix = { fg = palette.grn2 },
		TelescopeSelection = { fg = palette.fg, bg = palette.overlay },
		TelescopeSelectionCaret = { fg = palette.grn2, bg = palette.overlay },
		TelescopeTitle = { fg = palette.grn2, bold = styles.bold },
	}
end
