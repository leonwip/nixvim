{ ... }:
{
  plugins.which-key = {
    enable = true;
    settings = {
      preset = "helix";
      spec = [
        {
          __unkeyed-1 = "<Leader>f";
          group = "Telescope";
        }
        {
          __unkeyed-1 = "<Leader>h";
          group = "Gitsigns";
        }
        {
          __unkeyed-1 = "<Leader>d";
          icon = "";
        }
        {
          __unkeyed-1 = "[d";
          icon = "";
        }
        {
          __unkeyed-1 = "]d";
          icon = "";
        }
        {
          __unkeyed-1 = "<Leader>l";
          group = "LSP";
          icon = {
            icon = "";
            color = "orange";
          };
        }
        {
          __unkeyed-1 = "<Leader>t";
          group = "Neo-tree";
          icon = {
            icon = "󰙅";
            color = "green";
          };
        }
        {
          __unkeyed-1 = "<Leader>x";
          group = "Trouble";
          icon = {
            icon = "";
            color = "red";
          };
        }
        {
          __unkeyed-1 = "<Leader>z";
          group = "ZSH";
          icon = {
            icon = "";
            color = "yellow";
          };
        }
        {
          __unkeyed-1 = "<Leader>u";
          icon = "";
        }
        {
          __unkeyed-1 = "<Leader>b";
          icon = "󰓩";
        }
        {
          __unkeyed-1 = "<Leader>o";
          group = "Obsidian";
          icon = {
            icon = "";
            color = "purple";
          };
        }
      ];
    };
  };
}
