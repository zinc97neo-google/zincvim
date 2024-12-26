{ ... }:
{
  plugins = {
    fidget.enable = true;
    lsp = {
      enable = true;
      inlayHints = true;
      servers = {
        elixirls.enable = true;
        nil_ls = {
          enable = true;
          settings.formatting.command = [ "nixfmt" ];
        };
        html.enable = true;
        cssls.enable = true;
        ts_ls.enable = true;
        lua_ls.enable = true;
        emmet_language_server.enable = true;
        taplo.enable = true;
        sqls.enable = true;
        clangd.enable = true;
        pyright.enable = true;
      };
    };
    lsp-format.enable = true;
    trouble.enable = true;
    emmet.enable = true;
    rustaceanvim = {
      enable = true;
      settings = {
        server = {
          cmd = [
            "rustup"
            "run"
            "nightly"
            "rust-analyzer"
          ];
          default_settings = {
            rust-analyzer = {
              check = {
                command = "clippy";
              };
              inlayHints = {
                lifetimeElisionHints = {
                  enable = "always";
                };
              };
            };
          };
          standalone = false;
        };
      };
    };
  };
}
