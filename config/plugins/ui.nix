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
  };
}
