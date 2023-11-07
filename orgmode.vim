" ===
" === nvim orgmode.vim
" ===
lua << EOF

-- Load custom tree-sitter grammar for org filetype
require('orgmode').setup_ts_grammar()

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.org = {
  install_info = {
    url = 'https://github.com/milisims/tree-sitter-org',
    revision = 'main',
    files = {'src/parser.c', 'src/scanner.cc'},
  },
  filetype = 'org',
}

require'nvim-treesitter.configs'.setup {
  -- If TS highlights are not enabled at all, or disabled via `disable` prop, highlighting will fallback to default Vim syntax highlighting
  highlight = {
    enable = true,
    disable = {'org'}, -- Remove this to use TS highlighter for some of the highlights (Experimental)
    additional_vim_regex_highlighting = {'org'}, -- Required since TS highlighter doesn't support all syntax features (conceal)
  },
  ensure_installed = {'org'}, -- Or run :TSUpdate org
}



require('orgmode').setup({
  org_agenda_files = {
    '~/orgmode/*',
  },
  org_default_notes_file = '~/orgmode/refile.org',
  org_agenda_templates = {
    t = {
      description = 'Task',
      template = '* TODO %?\n  SCHEDULED: %T',
      target = '~/orgmode/tasks.org',
    },
    b = {
      description = 'Bookmark',
      template = '* [[%?][<++>]]\n:PROPERTIES:\n:CREATED: %U\n:END:\n\n',
      target = '~/orgmode/bookmarks.org',
    },
    c = {
      description = 'Citation',
      template = '* %?\n  :PROPERTIES: <++>\n  :CREATED: %U\n  :TITLE:     \n  :BTYPE:     \n  :CUSTOM_ID: \n  :AUTHOR:    \n  :YEAR:      \n  :PUBLISHER: \n  :END:\n\n',
      target = '~/orgmode/citations.org',
    }
  },
  org_agenda_start_on_weekday = False,
	org_agenda_start_day = -2,
  org_todo_keywords = {'TODO(t)', 'PROG(p)', '|', 'DONE(d)'}
})


require'compe'.setup({
  source = {
    orgmode = true;
    buffer = true;
  }
})


EOF

" org-bullets: {{{


lua << EOF
require("org-bullets").setup {
				 symbols = {"☰☰", "☷", "☯", "☭","✨","💗" },
         --symbols = {"🌸","🌱","💧","✨","💗" },
          --indent = true,
     }
--require("org-bullets").setup({
  --symbols = {"⦿", "○", "❉","‣","⦾", "•", "✹", "✫"},
	--symbols = {"🌸","🌱","💧","✨","💗" },
	--symbols = {"☰", "☷", "☯", "☭","✨","💗" },
  --symbols = {"➊", "➋", "➌","➍","➎","➏", "➐", "➑"},
	--indent = true,
--})
require("orgWiki").setup {
                wiki_path = { "~/Orgs" },
                diary_path = "~/Orgs/diary/",
            }



--vim.cmd [[highlight OrgHeading1 guifg=#e692fc]]
--vim.cmd [[highlight OrgHeading2 guifg=#64b5f6]]
--vim.cmd [[highlight OrgHeading3 guifg=#cbcb6f]]
--vim.cmd [[highlight OrgHeading4 guifg=#90d56e]]
--vim.cmd [[highlight OrgHeading5 guifg=#F06292]]
--vim.cmd [[highlight OrgHeading6 guifg=#57d2fb]]
--vim.cmd [[highlight OrgHeading7 guifg=#87CEEB]]
--vim.fn.sign_define("OrgHeading1", { linehl = "OrgHeading1" })
--vim.fn.sign_define("OrgHeading2", { linehl = "OrgHeading2" })
--vim.fn.sign_define("OrgHeading3", { linehl = "OrgHeading3" })
--vim.fn.sign_define("OrgHeading4", { linehl = "OrgHeading4" })
--vim.fn.sign_define("OrgHeading5", { linehl = "OrgHeading5" })
--vim.fn.sign_define("OrgHeading6", { linehl = "OrgHeading6" })
--vim.fn.sign_define("OrgHeading7", { linehl = "OrgHeading7" })
--require("headlines").setup {
--    org = {
--        headline_signs = {"OrgHeading1","OrgHeading2","OrgHeading3","OrgHeading4","OrgHeading5","OrgHeading6","OrgHeading7"},
--    },
--}

EOF

hi OrgHeadlineLevel1 guifg=#e692fc
hi OrgHeadlineLevel2 guifg=#64b5f6
hi OrgHeadlineLevel3 guifg=#cbcb6f
hi OrgHeadlineLevel4 guifg=#90d56e
hi OrgHeadlineLevel5 guifg=#F06292
hi OrgHeadlineLevel6 guifg=#57d2fb
hi OrgHeadlineLevel7 guifg=#87CEEB


"au FileType org setlocal conceallevel=2 concealcursor=nvc
