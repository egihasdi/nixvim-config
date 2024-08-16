_: {
  imports = [ ./options.nix ./keymaps ];

  config = {
    globals.mapleader = " ";
    clipboard = {
      register = "unnamedplus";
      providers.xsel.enable = true;
    };

    # Set 'vi' and 'vim' aliases to nixvim
    viAlias = true;
    vimAlias = true;
  };

}
