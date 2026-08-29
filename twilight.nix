{ ... }:
{
  plugins.twilight.enable = true;

  keymaps = [
    {
      mode = "n";
      key = "<Leader>v";
      action = "<Cmd>Twilight<CR>";
      options.desc = "Toggle Twilight";
    }
  ];
}
