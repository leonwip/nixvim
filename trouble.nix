{ ... }:
{
  plugins.trouble.enable = true;

  keymaps = [
    {
      mode = "n";
      key = "<Leader>xx";
      action = "<Cmd>Trouble diagnostics toggle<CR>";
      options.desc = "Project diagnostics";
    }
    {
      mode = "n";
      key = "<Leader>xX";
      action = "<Cmd>Trouble diagnostics toggle filter.buf=0<CR>";
      options.desc = "Buffer diagnostics";
    }
    {
      mode = "n";
      key = "<Leader>xs";
      action = "<Cmd>Trouble symbols toggle focus=false<CR>";
      options.desc = "Document symbols";
    }
    {
      mode = "n";
      key = "<Leader>xt";
      action = "<Cmd>Trouble todo toggle<CR>";
      options.desc = "TODOs";
    }
  ];
}
