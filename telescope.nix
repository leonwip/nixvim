{ ... }:
{
  # TODO: Telescope keymaps
  plugins.telescope = {
    enable = true;

    extensions = {
      fzf-native.enable = true;
      file-browser.enable = true;
    };

    keymaps = {
      "<Leader>ff" = {
        action = "find_files";
        options.desc = "Find file";
      };
      "<Leader>fg" = {
        action = "live_grep";
        options.desc = "Live grep";
      };
      "<Leader>fb" = {
        action = "buffers";
        options.desc = "Find buffer";
      };
      "<Leader>fh" = {
        action = "help_tags";
        options.desc = "Find help";
      };
      "<Leader>fc" = {
        action = "command_history";
        options.desc = "Command history";
      };
      "<Leader>fr" = {
        action = "resume";
        options.desc = "Resume";
      };
      "<Leader>fi" = {
        action = "current_buffer_fuzzy_find";
        options.desc = "Find in buffer";
      };
      "<Leader>fm" = {
        action = "man_pages";
        options.desc = "Man pages";
      };

      # Git stuff
      "<Leader>fgc" = {
        action = "git_commits";
        options.desc = "Git commits";
      };
      "<Leader>fgb" = {
        action = "git_branches";
        options.desc = "Git branches";
      };
      "<Leader>fgs" = {
        action = "git_status";
        options.desc = "Git status";
      };
      "<Leader>fga" = {
        action = "git_stash";
        options.desc = "Git stash";
      };

      # LSP stuff
      "<Leader>fld" = {
        action = "lsp_document_symbols";
        options.desc = "Document symbols";
      };
      "<Leader>flw" = {
        action = "lsp_workspace_symbols";
        options.desc = "Workspace symbols";
      };
      "<Leader>flr" = {
        action = "lsp_references";
        options.desc = "References";
      };
    };
  };
}
