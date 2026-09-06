{ ... }:
{
  plugins.obsidian = {
    enable = true;
    settings = {
      workspaces = [
        {
          name = "Leon's Vault";
          path = "~/Leon's Vault";
        }
      ];
      picker.name = "telescope.nvim";
      daily_notes = {
        enabled = true;
        folder = "Daily";
        date_format = "YYYY-MM-DD";
        default_tags = [ "daily" ];
        workdays_only = false;
        start_of_week = 1;
      };
      sync.enabled = true;
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<Leader>oq";
      action = "<Cmd>Obsidian quick_switch<CR>";
      options.desc = "Open quick switch";
    }
    {
      mode = "n";
      key = "<Leader>os";
      action = "<Cmd>Obsidian search<CR>";
      options.desc = "Open search";
    }
    {
      mode = "n";
      key = "<Leader>od";
      action = "<Cmd>Obsidian dailies<CR>";
      options.desc = "Open daily picker";
    }
    {
      mode = "n";
      key = "<Leader>on";
      action = "<Cmd>Obsidian new<CR>";
      options.desc = "Create new note";
    }
  ];
}
