{
  keymaps = import ./standard.nix ++ (import ./splits.nix)
    ++ (import ./neo-tree.nix) ++ (import ./gitsigns.nix);
}
