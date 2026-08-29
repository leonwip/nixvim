{ ... }:
{
  plugins.todo-comments = {
    enable = true;

    settings = {
      colors = {
        error = [ "DiagnosticError" ];
        warning = [ "DIagnosticWarn" ];
        info = [ "DiagnosticInfo" ];
        hint = [ "DiagnosticHint" ];
        default = [ "Todo" ];
        test = [ "DiagnosticOk" ];
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<Leader>ft";
      action = "<Cmd>TodoTelescope<CR>";
      options.desc = "TODOs";
    }
  ];
}
