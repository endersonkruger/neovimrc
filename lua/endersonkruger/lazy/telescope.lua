return 
{ 
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
        dependencies = { 'nvim-lua/plenary.nvim' },

	config = function()
		require('telescope').setup({})

		local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>f', builtin.find_files, {})
        vim.keymap.set('n', '<leader>g', builtin.git_files, {})
        vim.keymap.set('n', '<leader>s', function()
            builtin.grep_string({ search = vim.fn.input("Word > ") })
        end)
    end
}

