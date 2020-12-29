lua shebang = require("shebang")

autocmd BufNewFile *.* :lua shebang.insert_shebang()
autocmd BufWritePost * :autocmd VimLeave * :!chmod u+x %
