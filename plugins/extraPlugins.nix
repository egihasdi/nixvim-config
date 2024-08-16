{ pkgs, ... }: {
  extraPlugins = with pkgs; [{
    plugin = vimPlugins.tint-nvim;
    config = ''
      lua << EOF
        require("tint").setup({
      	  tint= -65
        })
      EOF
    '';
  }];
}
