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
    if shells[ext] ~= nil then
        local shebang = "#!/usr/bin/env " .. shells[ext]
        vim.api.nvim_put({shebang}, "", true, true)
        vim.fn.append(1, '')
    end
end

return {
    insert_shebang = insert_shebang,
}
