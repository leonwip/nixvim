{ ... }:
{
  plugins.blink-cmp = {
    enable = true;
    setupLspCapabilities = true;

    settings = {
      keymap = {
        preset = "super-tab";
      };
      signature = {
        enabled = true;
      };
      appearance = {
        nerd_font_variant = "mono";
      };
      completion = {
        documentation = {
          auto_show = true;
        };
      };
      accept = {
        auto_brackets = {
          enabled = false;
        };
      };
      sources = {
        default = [
          "lsp"
          "buffer"
          "path"
          "snippets"
        ];
      };
      fuzzy = {
        implementation = "prefer_rust_with_warning";
      };
    };
  };
}
