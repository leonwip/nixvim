{ ... }:
{
  plugins.neo-tree = {
    enable = true;
    settings = {
      sources = [
        "filesystem"
        "buffers"
        "document_symbols"
        "git_status"
      ];

      source_selector = {
        winbar = true;
        sources = [
          {
            display_name = "󰉓";
            source = "filesystem";
          }
          {
            display_name = "󰈚";
            source = "buffers";
          }
          {
            display_name = "";
            source = "document_symbols";
          }
          {
            display_name = "󰊢";
            source = "git_status";
          }
        ];
        content_layout = "center";
      };

      filesystem = {
        hijack_netrw_behavior = "open_default";
        bind_to_cwd = false;
        follow_current_file = {
          enabled = true;
        };
      };
    };
  };

  keymaps = [
    # Toggle side pane
    {
      mode = "n";
      key = "<Leader>tt";
      action = "<Cmd>Neotree position=left source=last dir=./ toggle<CR>";
      options.desc = "Toggle tree";
    }

    # Switch between sources
    {
      mode = "n";
      key = "<Leader>tf";
      action = "<Cmd>Neotree position=current dir=./ filesystem<CR>";
      options.desc = "File system";
    }
    {
      mode = "n";
      key = "<Leader>tg";
      action = "<Cmd>Neotree position=current dir=./ git_status<CR>";
      options.desc = "Git status";
    }
    {
      mode = "n";
      key = "<Leader>tb";
      action = "<Cmd>Neotree position=current dir=./ buffers<CR>";
      options.desc = "Buffers";
    }
    {
      mode = "n";
      key = "<Leader>ts";
      action = "<Cmd>Neotree position=current dir=./ document_symbols<CR>";
      options.desc = "Document symbols";
    }

    # Reveal in specific source
    {
      mode = "n";
      key = "<Leader>trf";
      action = "<Cmd>Neotree position=left dir=./ filesystem reveal_force_cwd<CR>";
      options.desc = "Reveal in file system";
    }
    {
      mode = "n";
      key = "<Leader>trg";
      action = "<Cmd>Neotree position=left dir=./ git_status reveal_force_cwd<CR>";
      options.desc = "Reveal in Git status";
    }
    {
      mode = "n";
      key = "<Leader>trb";
      action = "<Cmd>Neotree position=left dir=./ buffers reveal_force_cwd<CR>";
      options.desc = "Reveal in buffers";
    }
    {
      mode = "n";
      key = "<Leader>trs";
      action = "<Cmd>Neotree position=left dir=./ document_symbols reveal_force_cwd<CR>";
      options.desc = "Reveal in document symbols";
    }
  ];
}
