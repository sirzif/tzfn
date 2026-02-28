return function(palette, groups)
	return {
		TroubleText = { fg = palette.subtle },
		TroubleCount = { fg = palette.blu2, bg = palette.surface },
		TroubleNormal = { fg = palette.fg, bg = groups.panel },
	}
end
