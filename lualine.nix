{ ... }:
{
  plugins.lualine = {
    enable = true;
    settings.options = {
      globalstatus = true;
      extensions = [
        "fzf"
        "neo-tree"
        "trouble"
      ];
      disabledFiletypes = {
        statusline = [
          "startup"
          "alpha"
        ];
      };
      theme = "catppuccin-mocha";
    };
  };
}
