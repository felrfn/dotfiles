return {
	"windwp/nvim-autopairs",
	event = "InsertEnter",
	config = function()
    local nvim_autopairs = require("nvim-autopairs")
    nvim_autopairs.setup()

		local cmp_autopairs = require("nvim-autopairs.completion.cmp")
		local cmp = require("cmp")
		cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
	end,
}
