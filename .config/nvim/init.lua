require("core.options")
require("core.keymaps")
require("core.misc")

require("lazy.bootstrap")

require("lazy").setup({
	require("themes.miasma"),
	{ import = "plugins" },
})
