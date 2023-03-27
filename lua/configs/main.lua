local opt = vim.opt

-----------------------------------------------------
-- Общие опции
-----------------------------------------------------
opt.mouse = 'a'         -- включить мышь
opt.encoding = 'utf-8'  -- кодировка

opt.showcmd = true      -- отображать команды
vim.cmd([[
filetype indent plugin on
syntax enable
]])

opt.swapfile = false

-----------------------------------------------------
-- Визуальные опции
-----------------------------------------------------
opt.number = true       -- номера строк
opt.wrap = true         -- длинные линии видно
opt.expandtab = true
opt.tabstop = 4         -- таб = 4 пробела
opt.smartindent = true
opt.shiftwidth = 4      -- смещаем на 4 пробела

vim.cmd [[
autocmd FileType xml,html,xhtml,css,scss,javascript,lua,yaml,htmljinja setlocal shiftwidth=2 tabstop=2
]]

opt.so = 5              -- отступ курсора от края экрана
opt.foldcolumn = '2'    -- ширина колонки для фолдов
opt.colorcolumn = '119' -- расположение цвтеной колонки

vim.cmd [[autocmd FileType text,markdown,html,xhtml,javascript setlocal cc=0]]

opt.cursorline = true   -- подсветка строки с курсором
opt.termguicolors = true

vim.g.tagbar_compact = 1
vim.g.tagbar_sort = 0

opt.ignorecase = true
opt.smartcase = true

vim.api.nvim_exec([[
augroup YankHighlight
autocmd!
autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=300}
augroup end
]], false)
