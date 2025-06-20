local M = {
    "nvim-treesitter/nvim-treesitter",
    build = function()
        require("nvim-treesitter.install").update({ with_sync = true })()
    end,
    config = function () 
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            ensure_installed = {"c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html", "css", "sql", "rust", "go", "bash", "cpp", "dockerfile", "java", "javadoc", "json", "jsonc", "latex", "nix", "regex", "scss", "ssh_config", "terraform", "tsx", "vim", "vimdoc", "vue", "xml"},
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true}
        })
    end
}

return { M }
