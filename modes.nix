{ pkgs, ... }:
{
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "modes-nvim";
      src = pkgs.fetchFromGitHub {
        owner = "mvllow";
        repo = "modes.nvim";
        rev = "v0.3.0";
        hash = "sha256-2gvne46/aHzVxcxXXBsdg6wVtlnhowYCKfAn4Wero+8=";
      };
    })
  ];

  extraConfigLua = ''
    require("modes").setup({
        -- Opacity for cursorline and number background
        line_opacity = 0.15,
        -- Enable cursor highlights
        set_cursor = true,
        set_cursorline = true,
        -- Enable line number highlights to match cursorline
        set_number = true,
        -- Enable sign column highlights to match cursorline
        set_signcolumn = true,
        -- Disable modes highlights for specified filetypes
        ignore = { "NvimTree", "TelescopePrompt" },
    })
  '';
}
