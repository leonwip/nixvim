{ ... }:
{
  plugins.bufferline = {
    enable = true;

    settings.options = {
      themable = true;
      diagnostics = "nvim_lsp";
      separator_style = "thin";
      hover = {
        enabled = true;
        delay = 100;
        reveal = [ "close" ];
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<Leader>bg";
      action = "<Cmd>BufferLinePick<CR>";
      options.desc = "Go to buffer";
    }
    {
      mode = "n";
      key = "<Leader>bc";
      action = "<Cmd>BufferLinePickClose<CR>";
      options.desc = "Go to buffer and close";
    }
    {
      mode = "n";
      key = "<Leader>bp";
      action = "<Cmd>BufferLineTogglePin<CR>";
      options.desc = "Toggle pin";
    }
    {
      mode = "n";
      key = "[b";
      action = "<Cmd>BufferLineCyclePrev<CR>";
      options.desc = "Previous buffer";
    }
    {
      mode = "n";
      key = "]b";
      action = "<Cmd>BufferLineCycleNext<CR>";
      options.desc = "Next buffer";
    }

    # Go to buffer
    {
      mode = "n";
      key = "<Leader>1";
      action = "<Cmd>BufferLineGoToBuffer 1<CR>";
      options.desc = "Go to buffer 1";
    }
    {
      mode = "n";
      key = "<Leader>2";
      action = "<Cmd>BufferLineGoToBuffer 2<CR>";
      options.desc = "Go to buffer 2";
    }
    {
      mode = "n";
      key = "<Leader>3";
      action = "<Cmd>BufferLineGoToBuffer 3<CR>";
      options.desc = "Go to buffer 3";
    }
    {
      mode = "n";
      key = "<Leader>4";
      action = "<Cmd>BufferLineGoToBuffer 4<CR>";
      options.desc = "Go to buffer 4";
    }
    {
      mode = "n";
      key = "<Leader>5";
      action = "<Cmd>BufferLineGoToBuffer 5<CR>";
      options.desc = "Go to buffer 5";
    }
    {
      mode = "n";
      key = "<Leader>6";
      action = "<Cmd>BufferLineGoToBuffer 6<CR>";
      options.desc = "Go to buffer 6";
    }
    {
      mode = "n";
      key = "<Leader>7";
      action = "<Cmd>BufferLineGoToBuffer 7<CR>";
      options.desc = "Go to buffer 7";
    }
    {
      mode = "n";
      key = "<Leader>8";
      action = "<Cmd>BufferLineGoToBuffer 8<CR>";
      options.desc = "Go to buffer 8";
    }
    {
      mode = "n";
      key = "<Leader>9";
      action = "<Cmd>BufferLineGoToBuffer 9<CR>";
      options.desc = "Go to buffer 9";
    }
  ];
}
