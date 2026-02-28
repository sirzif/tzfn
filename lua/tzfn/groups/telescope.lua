return function(palette, styles, make_border)
	return {
		TelescopeBorder = make_border(),
		TelescopeMatching = { fg = palette.cyn },
		TelescopeNormal = { link = "NormalFloat" },
		TelescopePromptNormal = { link = "TelescopeNormal" },
		TelescopePromptPrefix = { fg = palette.cyn2 },
		TelescopeSelection = { fg = palette.hl, bg = palette.overlay },
		TelescopeSelectionCaret = { fg = palette.cyn2, bg = palette.overlay },
		TelescopeTitle = { fg = palette.cyn2, bold = styles.bold },
	}
end
