{ ... }:
{
  colorschemes.catppuccin = {
    enable = true;
    settings = {
      flavour = "mocha";
      float.transparent = true;
      dim_inactive.enabled = true;
      integrations = {
        # TODO: Check if there are more integrations to add
        gitsigns = true;
        neotree = true;
        cmp = true;
        telescope = true;
        lsp_trouble = true;
        which_key = true;
        lualine = true;
        bufferline = true;
        dropbar = true;
      };
    };
  };
}
