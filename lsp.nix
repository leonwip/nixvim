{ ... }:
{
  plugins.lsp-format.enable = true;

  plugins.lsp = {
    enable = true;
    inlayHints = true;
    servers = {
      html.enable = true;
      lua_ls.enable = true;
      tsgo.enable = true;
      marksman.enable = true;
      pyright.enable = true;
      jsonls.enable = true;
      yamlls.enable = true;
      bashls.enable = true;
      cssls.enable = true;
      clangd.enable = true;
      nil_ls.enable = true;
      rust_analyzer = {
        enable = true;
        installCargo = true;
        installRustc = true;
      };
    };
  };

  diagnostic.settings = {
    virtual_text = true;
    signs.text.__raw = ''
      {
        [vim.diagnostic.severity.ERROR] = "󰅙",
        [vim.diagnostic.severity.WARN] = "",
        [vim.diagnostic.severity.HINT] = "󰌵",
        [vim.diagnostic.severity.INFO] = "",
      }
    '';
    underline = true;
    update_in_insert = true;
  };

  keymaps = [
    # TODO: Add LSP movement/selection keymaps
    {
      mode = "n";
      key = "<Leader>li";
      action.__raw = "function() vim.lsp.buf.incoming_calls() end";
      options.desc = "Incoming calls";
    }
    {
      mode = "n";
      key = "<Leader>lo";
      action.__raw = "function() vim.lsp.buf.outgoing_calls() end";
      options.desc = "Outgoing calls";
    }
    {
      mode = "n";
      key = "<Leader>ld";
      action.__raw = "function() vim.lsp.buf.definition() end";
      options.desc = "Definition";
    }
    {
      mode = "n";
      key = "<Leader>lr";
      action.__raw = "function() vim.lsp.buf.references() end";
      options.desc = "References";
    }
    {
      mode = "n";
      key = "<Leader>lh";
      action.__raw = "function() vim.lsp.buf.hover() end";
      options.desc = "Hover";
    }
    {
      mode = "i";
      key = "<C-s>";
      action.__raw = "function() vim.lsp.buf.signature_help() end";
      options.desc = "Signature help";
    }
    {
      mode = "n";
      key = "<Leader>ln";
      action.__raw = "function() vim.lsp.buf.rename() end";
      options.desc = "Rename";
    }
    {
      mode = "n";
      key = "<Leader>lc";
      action.__raw = "function() vim.lsp.buf.code_action() end";
      options.desc = "Code action";
    }
    {
      mode = "n";
      key = "<Leader>lt";
      action.__raw = "function() vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled({})) end";
      options.desc = "Toggle inlay hints";
    }
  ];
}
