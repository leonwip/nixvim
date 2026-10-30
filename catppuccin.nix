{ ... }:
{
  colorschemes.catppuccin = {
    enable = true;
    settings = {
      flavour = "mocha";
      transparent_background = true;
      float.transparent = true;
      dim_inactive.enabled = false;
      integrations = {
        blink_cmp = true;
        bufferline = true;
        dropbar = {
          enabled = true;
          color_mode = true;
        };
        gitsigns = {
          enabled = true;
          transparent = false;
        };
        neotree = true;
        noice = true;
        telescope = true;
        lsp_trouble = true;
        illuminate = {
          enabled = true;
          lsp = false;
        };
        which_key = true;
      };
    };
  };
}
