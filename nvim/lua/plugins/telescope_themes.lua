--
-- Telescope Themes [just a theme picker with preview]
--
-- :Telescope themes
--
return {
    'andrew-george/telescope-themes',
    config = function()
        require('telescope').load_extension('themes')
    end
}
