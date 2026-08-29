{ ... }:
{
  plugins.gitsigns.enable = true;

  keymaps = [
    # Gitsigns movement
    {
      mode = "n";
      key = "[c";
      action = "<Cmd>Gitsigns prev_hunk<CR>";
      options.desc = "Previous hunk";
    }
    {
      mode = "n";
      key = "]c";
      action = "<Cmd>Gitsigns next_hunk<CR>";
      options.desc = "Next hunk";
    }

    # Gitsigns staging
    {
      mode = "n";
      key = "<Leader>hs";
      action = "<Cmd>Gitsigns stage_hunk<CR>";
      options.desc = "Stage hunk";
    }
    {
      mode = "n";
      key = "<Leader>hr";
      action = "<Cmd>Gitsigns reset_hunk<CR>";
      options.desc = "Reset hunk";
    }
    {
      mode = "n";
      key = "<Leader>hS";
      action = "<Cmd>Gitsigns stage_buffer<CR>";
      options.desc = "Stage buffer";
    }
    {
      mode = "n";
      key = "<Leader>hR";
      action = "<Cmd>Gitsigns reset_buffer<CR>";
      options.desc = "Reset buffer";
    }

    # Gitsigns preview
    {
      mode = "n";
      key = "<Leader>hp";
      action = "<Cmd>Gitsigns preview_hunk<CR>";
      options.desc = "Preview hunk";
    }
    {
      mode = "n";
      key = "<Leader>hi";
      action = "<Cmd>Gitsigns preview_hunk_inline<CR>";
      options.desc = "Preview hunk (inline)";
    }

    # Gitsigns blame
    {
      mode = "n";
      key = "<Leader>hb";
      action = "<Cmd>Gitsigns blame<CR>";
      options.desc = "Blame";
    }
    {
      mode = "n";
      key = "<Leader>hl";
      action = "<Cmd>Gitsigns blame_line<CR>";
      options.desc = "Blame line";
    }
    {
      mode = "n";
      key = "<Leader>ht";
      action = "<Cmd>Gitsigns toggle_current_line_blame<CR>";
      options.desc = "Toggle line blame";
    }

    # Gitsigns diff
    {
      mode = "n";
      key = "<Leader>hd";
      action = "<Cmd>Gitsigns diffthis<CR>";
      options.desc = "Diff this";
    }
    {
      mode = "n";
      key = "<Leader>hw";
      action = "<Cmd>Gitsigns toggle_word_diff<CR>";
      options.desc = "Toggle word diff";
    }

    # Gitsigns qflist
    {
      mode = "n";
      key = "<Leader>hq";
      action = "<Cmd>Gitsigns setqflist<CR>";
      options.desc = "Buffer qflist";
    }
    {
      mode = "n";
      key = "<Leader>hQ";
      action = "<Cmd>Gitsigns setqflist all<CR>";
      options.desc = "Project qflist";
    }
  ];
}
