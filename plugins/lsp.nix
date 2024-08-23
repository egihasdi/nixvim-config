{
  plugins.lsp = {
    enable = true;
    servers.nixd.enable = true;
    servers.biome.enable = true;
    servers.tsserver = {
      enable = true;
      onAttach.function = ''
        client.server_capabilities.documentFormattingProvider = false
      '';
    };

    keymaps = {
      lspBuf = {
        gd = {
          action = "definition";
          desc = "Go to definition";
        };
        "<leader>la" = {
          action = "code_action";
          desc = "LSP code action";
        };
      };
    };
  };
}
