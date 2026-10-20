local M = {}

M.highlights = function(colorscheme)
    return {
        IblIndent = { link = 'Comment' }, 
        IblScope = { link = 'Function' },
    }
end

return M
