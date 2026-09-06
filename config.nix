{ ... }:
{
  imports = [
    ./autopairs.nix
    ./blinkcmp.nix
    ./bufferline.nix
    ./catppuccin.nix
    ./dropbar.nix
    ./gitsigns.nix
    ./illuminate.nix
    ./lsp.nix
    ./lualine.nix
    ./modes.nix
    ./neotree.nix
    ./noice.nix
    ./obsidian.nix
    ./sleuth.nix
    ./telescope.nix
    ./todocomments.nix
    ./treesitter.nix
    ./trouble.nix
    ./twilight.nix
    ./undotree.nix
    ./webdevicons.nix
    ./whichkey.nix
  ];

  globals = {
    mapleader = " ";
    maplocalleader = "\\";

    loaded_netrw = 1;
    loaded_netrwPlugin = 1;
  };

  opts = {
    # Required for bufferline hover
    mousemoveevent = true;

    # Show relative line numbers
    number = true;
    relativenumber = true;

    # Use system clipboard
    clipboard = "unnamedplus";

    # Enable mouse support
    mouse = "a";

    # Highlight search matches
    hlsearch = true;

    # Ignore case except if capital
    ignorecase = true;
    smartcase = true;

    # Dialog instead of failing
    confirm = true;

    # Highlight matching braces
    showmatch = true;

    # Highlight current line
    cursorline = true;

    # Backspace over everything
    backspace = "indent,eol,start";

    # Wrap long lines
    wrap = true;

    # Highlight column 80
    colorcolumn = "80";

    # Indent settings
    autoindent = true;
    smartindent = true;
    tabstop = 4;
    softtabstop = 4;
    shiftwidth = 4;
    expandtab = true;

    # Always show tabs
    showtabline = 2;

    # Lines to keep above/below when scrolling
    scrolloff = 8;

    # Enable 24-bit rgb
    termguicolors = true;

    # Where to open new split
    splitbelow = true;
    splitright = true;

    # Don't show modeline
    showmode = false;

    # Keep cursor at screen position when splitting
    splitkeep = "screen";

    # Hide command line
    cmdheight = 0;

    # Don't close fold by default
    foldlevel = 99;

    # We use treesitter for syntax
    syntax = "off";

    # Show whitespace characters
    list = true;
  };

  autoCmd = [
    # Dynamic listchars based on shiftwidth
    {
      event = [
        "BufEnter"
        "OptionSet"
      ];
      callback = {
        __raw = ''
          function(args)
            if args.event == "BufEnter" or args.match == "shiftwidth" then
              local sw = vim.bo[args.buf].shiftwidth
              if sw == 2 then
                vim.opt_local.listchars = {
                  tab = "│—",
                  lead = "‧",
                  trail = "‧",
                  leadmultispace = "│‧",
                  extends = "»",
                  precedes = "«",
                }
              elseif sw == 4 then
                vim.opt_local.listchars = {
                  tab = "│—",
                  lead = "‧",
                  trail = "‧",
                  leadmultispace = "│‧‧‧",
                  extends = "»",
                  precedes = "«",
                }
              end
            end
          end
        '';
      };
    }

    # Automatically enter insert mode on new terminal buffer
    {
      event = "TermOpen";
      pattern = "*";
      command = "startinsert";
    }

    # Mark prompts in sign column
    {
      event = "TermOpen";
      command = "setlocal signcolumn=auto";
    }

    # Mark shell prompts with extmarks in sign column
    {
      event = "TermRequest";
      callback = {
        __raw = ''
          (function()
            local ns = vim.api.nvim_create_namespace("my.terminal.prompt")
            return function(args)
              if string.match(args.data.sequence, '^\027]133;A') then
                local lnum = args.data.cursor[1]
                vim.api.nvim_buf_set_extmark(args.buf, ns, lnum, 0, {
                  sign_text = '▶',
                  sign_hl_group = 'SpecialChar',
                })
              end
            end
          end)()
        '';
      };
    }
  ];

  keymaps = [
    # Window navigation (normal mode)
    {
      mode = [ "n" ];
      key = "<C-h>";
      action = "<C-w>h";
      options.desc = "Move to left window";
    }
    {
      mode = [ "n" ];
      key = "<C-j>";
      action = "<C-w>j";
      options.desc = "Move to below window";
    }
    {
      mode = [ "n" ];
      key = "<C-k>";
      action = "<C-w>k";
      options.desc = "Move to above window";
    }
    {
      mode = [ "n" ];
      key = "<C-l>";
      action = "<C-w>l";
      options.desc = "Move to right window";
    }

    # Window navigation (insert mode)
    {
      mode = [ "i" ];
      key = "<C-h>";
      action = "<Esc><C-w>h";
      options.desc = "Move to left window";
    }
    {
      mode = [ "i" ];
      key = "<C-j>";
      action = "<Esc><C-w>j";
      options.desc = "Move to below window";
    }
    {
      mode = [ "i" ];
      key = "<C-k>";
      action = "<Esc><C-w>k";
      options.desc = "Move to above window";
    }
    {
      mode = [ "i" ];
      key = "<C-l>";
      action = "<Esc><C-w>l";
      options.desc = "Move to right window";
    }

    # Window navigation (terminal mode)
    {
      mode = [ "t" ];
      key = "<C-h>";
      action = "<C-\\><C-n><C-w>h";
      options.desc = "Move to left window";
    }
    {
      mode = [ "t" ];
      key = "<C-j>";
      action = "<C-\\><C-n><C-w>j";
      options.desc = "Move to below window";
    }
    {
      mode = [ "t" ];
      key = "<C-k>";
      action = "<C-\\><C-n><C-w>k";
      options.desc = "Move to above window";
    }
    {
      mode = [ "t" ];
      key = "<C-l>";
      action = "<C-\\><C-n><C-w>l";
      options.desc = "Move to right window";
    }

    # Terminal split shortcuts
    {
      mode = [ "n" ];
      key = "<Leader>zh";
      action = ":split term://zsh<CR>";
      options.desc = "Open ZSH in horizontal split";
    }
    {
      mode = [ "n" ];
      key = "<Leader>zv";
      action = ":vsplit term://zsh<CR>";
      options.desc = "Open ZSH in vertical split";
    }

    # Move up/down faster
    {
      mode = [ "n" ];
      key = "J";
      action = "10j";
      options.desc = "Move 10 lines down";
    }
    {
      mode = [ "n" ];
      key = "K";
      action = "10k";
      options.desc = "Move 10 lines up";
    }

    # Stay in visual mode after indent
    {
      mode = [ "v" ];
      key = "<";
      action = "<gv";
      options.desc = "Decrement indent";
    }
    {
      mode = [ "v" ];
      key = ">";
      action = ">gv";
      options.desc = "Increment indent";
    }
  ];
}
