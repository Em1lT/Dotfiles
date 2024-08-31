  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      expand = function(args)
        -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
      end,
    },
    window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      -- ['<C-n>'] = cmp.mapping.complete(),
      -- ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-c>'] = cmp.mapping.abort(),
      -- ['<C-n>'] = cmp.mapping.confirm({ select = true }),
       -- If nothing is selected (including preselections) add a newline as usual.
      -- If something has explicitly been selected by the user, select it.
      ["<space>"] = function(fallback)
          -- Don't block <CR> if signature help is active
          -- https://github.com/hrsh7th/cmp-nvim-lsp-signature-help/issues/13
          if not cmp.visible() or not cmp.get_selected_entry() or cmp.get_selected_entry().source.name == 'nvim_lsp_signature_help' then
              fallback()
          else
              cmp.confirm({
                  behavior = cmp.ConfirmBehavior.Replace,
                  select = false,
              })
          end
      end,
      ["<Enter>"] = function(fallback)
          if not cmp.visible() or not cmp.get_selected_entry() or cmp.get_selected_entry().source.name == 'nvim_lsp_signature_help' then
              fallback()
          else
              cmp.confirm({
                  behavior = cmp.ConfirmBehavior.Replace,
                  select = false,
              })
          end
      end,
      ["<Tab>"] = cmp.mapping(function(fallback)
          -- This little snippet will confirm with tab, and if no entry is selected, will confirm the first item
          if cmp.visible() then
              local entry = cmp.get_selected_entry()
              if not entry then
                  cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
              else
                  cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
              end
          else
              fallback()
          end
      end, { "i", "s", "c", }),

    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'luasnip' }, -- For luasnip users.
    }, {
      { name = 'buffer' },
    })
  })

  cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' },
    }
  })

  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' },
    }, {
      { name = 'cmdline' }
    }),
    matching = { disallow_symbol_nonprefix_matching = false }
  })


