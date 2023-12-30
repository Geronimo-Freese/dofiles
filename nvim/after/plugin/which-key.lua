local wk = require("which-key")
local builtin = require("telescope.builtin")


-- file search
wk.register({
    f = {
        name = "file",
        F = { vim.lsp.buf.format, "Format current buffer" },
        f = { builtin.find_files, "Find File" },
        g = { builtin.git_files, "Find Git-Files" },
        s = {
            function()
                builtin.grep_string({ search = vim.fn.input("Grep >") })
            end,
            "Search in all Files"
        },
    },
}, { prefix = "<leader>" })

