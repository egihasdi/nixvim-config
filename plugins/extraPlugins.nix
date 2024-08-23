{ pkgs, ... }: {
  extraPlugins = with pkgs; [
    {
      plugin = vimPlugins.tint-nvim;
      config = ''
        lua << EOF
          require("tint").setup({
        	  tint= -65
          })
        EOF
      '';
    }
    (vimUtils.buildVimPlugin {
      name = "my-plugin";
      src = fetchFromGitHub {
        owner = "vim-airline";
        repo = "vim-airline-themes";
        rev = "a9aa25ce323b2dd04a52706f4d1b044f4feb7617";
        hash = "sha256-XwlNwTawuGvbwq3EbsLmIa76Lq5RYXzwp9o3g7urLqM=";
      };
    })
  ];
}
