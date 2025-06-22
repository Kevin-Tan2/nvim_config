function GetWindowFromBufferName(name)
    local api = vim.api
    local wins = api.nvim_tabpage_list_wins(api.nvim_get_current_tabpage())

    for _, win in ipairs(wins) do
        local buf = api.nvim_win_get_buf(win)
        local buf_name = api.nvim_buf_get_name(buf)
        if string.find(buf_name, name) then
            return win;
        end
    end

    return nil;
end

vim.keymap.set({ 'n', 'v', 'x', 't' }, '<leader>tt', function()
    local api = vim.api
    local terminal_buf_name = "term://"

    if vim.g.termWindow == nil then
        vim.g.termWindow = {
            -- buf = api.nvim_get_current_buf(),
            height = 10,
            is_open = function()
                return GetWindowFromBufferName(terminal_buf_name) ~= nil;
            end
        }
    end


    if vim.g.termWindow.is_open() == true then
        local terminal_win = GetWindowFromBufferName(terminal_buf_name)
        if terminal_win == nil then return end

        vim.g.termWindow.height = api.nvim_win_get_height(terminal_win);
        vim.print(string.format("Store current height = %d", vim.g.termWindow.height))
        vim.cmd.hide(terminal_win)
        vim.g.termWindow.win = nil
    else
        vim.cmd "botright split"
        if (GetWindowFromBufferName(terminal_buf_name) == nil) then
            vim.cmd.term()
            vim.g.termWindow.win = api.nvim_get_current_win();
        else
            vim.cmd.buffer(terminal_buf_name)
        end
        vim.cmd.resize(vim.g.termWindow.height)
        vim.cmd.startinsert()
    end
end, { remap = true })

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
