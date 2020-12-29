local function insert_shebang()
    local shells = {
        awk = "awk",
        hs = "runhaskell",
        jl = "julia",
        lua = "lua",
        m = "octave",
        mak = "make",
        php = "php",
        pl = "perl",
        py = "python3",
        r = "Rscript",
        rb = "ruby",
        scala = "scala",
        sh = "bash",
        tcl = "tclsh",
        tk = "wish",
    }

    local ext = vim.fn.expand("%:e")

    local custom_shells = vim.api.nvim_get_var('shebang_shells')
    local custom_commands = vim.api.nvim_get_var('shebang_commands')

    local shebang = nil

    if custom_commands ~= nil and custom_commands[ext] ~= nil then
        shebang = custom_commands[ext]
    elseif custom_shells ~= nil and custom_shells[ext] ~= nil then
        shebang = custom_shells[ext]
    elseif shells[ext] ~= nil then
        shebang = "/usr/bin/env " .. shells[ext]
    end

    if shebang ~= nil then
        vim.api.nvim_put({"#!" .. shebang}, "", true, true)
        vim.fn.append(1, '')
        vim.fn.cursor(2, 0)
    end
end

return {
    insert_shebang = insert_shebang,
}
