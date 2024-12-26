{
  plugins = {
    ts-autotag.enable = true;
    treesitter = {
      enable = true;
      settings = {
        auto_install = false;
        highlight = {
          additional_vim_regex_highlighting = true;
          custom_captures = { };
          enable = true;
        };
        ensure_installed = [
          "c"
          "lua"
          "markdown"
          "javascript"
          "vim"
          "rust"
          "elixir"
          "json"
          "nix"
          "html"
          "sql"
          "markdown_inline"
          "regex"
          "bash"
        ];
      };
    };
  };
}
