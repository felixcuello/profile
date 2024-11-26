if vim.g.neovide then
    local map = vim.keymap.set
    map({ "n", "v" }, "<C-+>", function()
        vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1
    end, { desc = "Increase Neovide scale factor" })

    map({ "n", "v" }, "<C-->", function()
        vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1
    end, { desc = "Decrease Neovide scale factor" })

    map({ "n", "v" }, "<C-0>", function()
        vim.g.neovide_scale_factor = 1
    end, { desc = "Reset Neovide scale factor" })
end
