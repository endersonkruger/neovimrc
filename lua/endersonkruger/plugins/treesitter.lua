return
{ -- Highlight, edit, and navigate code
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
    require("nvim-treesitter.configs").setup({
        ensure_installed = { "c", "cpp", "lua", "luadoc", "vim", "vimdoc", "rust", "go" },
        auto_install = true,
        highlight = { enable = true, additional_vim_regex_highlighting = { "markdown" } },
        indent = { enable = true },
        })
    end
}
