{ ... }:
{
  plugins.dropbar.enable = true;

  keymaps = [
    {
      mode = "n";
      key = "<Leader>d";
      action.__raw = ''function() require("dropbar.api").pick() end'';
      options.desc = "Pick in dropbar";
    }
    {
      mode = "n";
      key = "[d";
      action.__raw = ''function() require("dropbar.api").goto_context_start() end'';
      options.desc = "Go to start of current context";
    }
    {
      mode = "n";
      key = "]d";
      action.__raw = ''function() require("dropbar.api").select_next_context() end'';
      options.desc = "Select next context";
    }
  ];
}
