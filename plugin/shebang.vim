lua shebang = require("shebang")

autocmd BufNewFile *.* :lua shebang.insert_shebang()
