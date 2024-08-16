{
  plugins.treesitter = {
    enable = true;

    settings = {
      ensure_installed = [ "nix" "javascript" ];
      indent.enable = true;
      highlight.enable = true;
    };
  };
}
