{ ... }:
let
  moveTextobject = key: method: query: desc: {
    mode = [
      "n"
      "v"
    ];
    inherit key;
    action.__raw = ''function() require("nvim-treesitter-textobjects.move").${method}("${query}", "textobjects") end'';
    options = {
      inherit desc;
      silent = true;
    };
  };
  selectTextobject = key: query: desc: {
    mode = [ "n" ];
    inherit key;
    action.__raw = ''function() require("nvim-treesitter-textobjects.select").select_textobject("${query}", "textobjects") end'';
    options = {
      inherit desc;
      silent = true;
    };
  };
in
{
  plugins.treesitter = {
    enable = true;

    highlight.enable = true;
    indent.enable = true;
    folding.enable = true;
  };

  plugins.treesitter-textobjects.enable = true;

  keymaps = [
    (moveTextobject "]f" "goto_next_start" "@function.outer" "Next function start")
    (moveTextobject "[f" "goto_previous_start" "@function.outer" "Previous function start")
    (moveTextobject "]F" "goto_next_end" "@function.outer" "Next function end")
    (moveTextobject "[F" "goto_previous_end" "@function.outer" "Previous function end")
    (moveTextobject "]c" "goto_next_start" "@class.outer" "Next class start")
    (moveTextobject "[c" "goto_previous_start" "@class.outer" "Previous class start")
    (moveTextobject "]C" "goto_next_end" "@class.outer" "Next class end")
    (moveTextobject "[C" "goto_previous_end" "@class.outer" "Previous class end")
    (moveTextobject "]l" "goto_next_start" "@loop.outer" "Next loop start")
    (moveTextobject "[l" "goto_previous_start" "@loop.outer" "Previous loop start")
    (moveTextobject "]L" "goto_next_end" "@loop.outer" "Next loop end")
    (moveTextobject "[L" "goto_previous_end" "@loop.outer" "Previous loop end")
    (moveTextobject "]i" "goto_next_start" "@conditional.outer" "Next conditional start")
    (moveTextobject "[i" "goto_previous_start" "@conditional.outer" "Previous conditional start")
    (moveTextobject "]I" "goto_next_end" "@conditional.outer" "Next conditional end")
    (moveTextobject "[I" "goto_previous_end" "@conditional.outer" "Previous conditional end")

    (selectTextobject "sof" "@function.outer" "Around function")
    (selectTextobject "sif" "@function.inner" "Inside function")
    (selectTextobject "soc" "@class.outer" "Around class")
    (selectTextobject "sic" "@class.inner" "Inside class")
    (selectTextobject "soa" "@parameter.outer" "Around argument")
    (selectTextobject "sia" "@parameter.inner" "Inside argument")
    (selectTextobject "sob" "@block.outer" "Around block")
    (selectTextobject "sib" "@block.inner" "Inside block")
    (selectTextobject "sol" "@loop.outer" "Around loop")
    (selectTextobject "sil" "@loop.inner" "Inside loop")
    (selectTextobject "soi" "@conditional.outer" "Around conditional")
    (selectTextobject "sii" "@conditional.inner" "Inside conditional")
    (selectTextobject "som" "@call.outer" "Around call")
    (selectTextobject "sim" "@call.inner" "Inside call")
  ];
}
