let
  forceWrite = {
    action = "<cmd>silent! update! | redraw<cr>";
    options.desc = "Force write";
  };
in [
  {
    inherit (forceWrite) action options;
    mode = "n";
    key = "<c-s>";
  }
  {
    inherit (forceWrite) options;
    mode = [ "i" "x" ];
    key = "<c-s>";
    action = "<esc>" + forceWrite.action;
  }
]
