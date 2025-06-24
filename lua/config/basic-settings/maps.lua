function GetWindowFromBufferName(name)
    if name == nil then
        return nil
    end

    local api = vim.api
    local wins = api.nvim_tabpage_list_wins(api.nvim_get_current_tabpage())

    for _, win in ipairs(wins) do
        local buf = api.nvim_win_get_buf(win)
        local buf_name = api.nvim_buf_get_name(buf)
        if buf_name ==  name then
            return win;
        end
    end

    return nil;
end

vim.keymap.set({ 'n', 'v', 'x', 't' }, '<leader>tt', function()
    local api = vim.api

    local term_window = vim.g.termWindow
    if term_window == nil then
        term_window = {
            buf = nil,
            height = 10,
        }

        function term_window.is_open(self)
            if self.buf == nil then
                return false
            end

            local buf_name = api.nvim_buf_get_name(self.buf)
            return GetWindowFromBufferName(buf_name) ~= nil;
        end
    end

    if term_window:is_open() == true then
        if term_window.buf == nil then
            return false
        end

        local buf_name = api.nvim_buf_get_name(term_window.buf)
        local terminal_win = GetWindowFromBufferName(buf_name)
        if terminal_win == nil then return end

        term_window.height = api.nvim_win_get_height(terminal_win);
        vim.print(string.format("Store current height = %d", vim.g.termWindow.height))
        vim.cmd.hide(terminal_win)
        vim.g.termWindow = term_window
        return;
    end

    vim.cmd "botright split"
    if vim.g.termWindow == nil then
        -- Create new buffer terminal
        vim.cmd.term()
        term_window.buf = api.nvim_get_current_buf();
    else
        vim.cmd.buffer(term_window.buf)
    end

    vim.cmd.resize(term_window.height)
    vim.cmd.startinsert()
    vim.g.termWindow = term_window
end)

vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', '<C-d>', '<C-d>zz')

vim.keymap.set({ 'n', 'v', 'x' }, '<leader>y', '"+y')
vim.keymap.set({ 'n', 'v', 'x' }, '<leader>p', '"+p')


-- Escape key used to exit from terminal mode
vim.keymap.set('t', '<ESC>', '<C-\\><C-n>')

-- Vertically split
vim.keymap.set('n', '<leader>vs', ':vsplit<CR>')

-- Toggle wrap using Alt-Z
vim.keymap.set({ 'n', 'i', 'v', 'x' }, "<M-z>",
    function()
        vim.o.wrap = not (vim.o.wrap)
    end
)

-- Quick substitution of a word in an entire file
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
