{ ... }:
{
  plugins.undotree = {
    enable = true;

    settings = {
      WindowLayout = 4;
      SplitWidth = 40;
      SetFocusWhenToggle = 1;
      DiffAutoOpen = 1;
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<Leader>u";
      action = "<Cmd>UndotreeToggle<CR>";
      options.desc = "Undo-tree panel";
    }
  ];
}
