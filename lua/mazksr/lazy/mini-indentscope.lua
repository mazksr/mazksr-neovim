return {
    'nvim-mini/mini.indentscope',
    version = false,
    ft = "yaml",
    config = function()
        require("mini.indentscope").setup()

        local f = function(args)
            local ft = vim.bo[args.buf].filetype
            if ft == "yaml" then return end
            vim.b[args.buf].miniindentscope_disable = true
        end

        vim.api.nvim_create_autocmd("FileType", { callback = f })
    end
}
