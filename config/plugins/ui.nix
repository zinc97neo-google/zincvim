{ ... }:
{
  colorschemes.catppuccin = {
    enable = true;
    settings = {
      flavour = "macchiato";
    };
  };
  plugins = {
    colorizer = {
      enable = true;
      settings = {
        user_default_options = {
          AARRGGBB = true;
          RGB = true;
          RRGGBB = true;
          RRGGBBAA = true;
          always_update = true;
          css = true;
          css_fn = true;
          hsl_fn = true;
          names = true;
          rgb_fn = true;
          tailwind = true;
        };
      };
    };
    web-devicons.enable = true;
    lualine.enable = true;
    barbecue.enable = true;
    nvim-autopairs.enable = true;
    nui.enable = true;
    noice.enable = true;
    rainbow-delimiters.enable = true;
    notify = {
      enable = true;
      render = "wrapped-compact";
      timeout = 2500;
    };
    illuminate = {
      enable = true;
      underCursor = false;
      filetypesDenylist = [
        "Outline"
        "TelescopePrompt"
        "alpha"
        "harpoon"
        "reason"
      ];
    };
    bufferline = {
      enable = true;
      settings = {
        options = {
          always_show_bufferline = false;
          diagnostics = "nvim_lsp";
        };
      };
    };
  };
  keymaps = [
    # Bufferline bindings
    {
      mode = "n";
      key = "<S-l>";
      action = "<cmd>BufferLineCycleNext<cr>";
      options = {
        desc = "Cycle to next buffer";
      };
    }
    {
      mode = "n";
      key = "<S-h>";
      action = "<cmd>BufferLineCyclePrev<cr>";
      options = {
        desc = "Cycle to previous buffer";
      };
    }
  ];
}
