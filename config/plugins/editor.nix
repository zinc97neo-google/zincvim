{ ... }:
{
  plugins = {
    # Terminal inside Neovim
    toggleterm = {
      enable = true;
      settings = {
        hide_numbers = false;
        autochdir = true;
        close_on_exit = true;
        direction = "float";
      };
    };
    telescope = {
      enable = true;
      extensions = {
        fzf-native.enable = true;
        file-browser.enable = true;
      };
      settings = {
        defaults = {
          layout_config = {
            prompt_position = "bottom";
          };
        };
        set_env = {
          COLORTERM = "truecolor";
        };
        sorting_strategy = "ascending";
      };
    };
    oil.enable = true;
    which-key = {
      enable = true;
      settings = {
        preset = "modern";
        spec = [
          {
            __unkeyed-1 = "<leader>y";
            group = "+3 Yazi";
            icon = "";
          }
        ];
        win = {
          border = "rounded";
          no_overlap = false;
          padding = [
            1
            1
          ];
        };
      };
    };
    yazi.enable = true;
  };
  keymaps = [
    # toggleterm
    {
      mode = "n";
      key = "<c-\\>";
      action = "<cmd>ToggleTerm<CR>";
    }
    {
      mode = "t";
      key = "<c-\\>";
      action = "<cmd>ToggleTerm<CR>";
    }
    # telescope
    {
      mode = "n";
      key = "<leader>/";
      action = "<cmd>Telescope live_grep<CR>";
      options = {
        desc = "search for strings in files in the working directory";
      };
    }
    {
      mode = "n";
      key = "<leader>f";
      action = "<cmd>Telescope find_files<CR>";
      options = {
        desc = "search for files in the working directory";
      };
    }
    {
      mode = "n";
      key = "<leader>b";
      action = "<cmd>Telescope buffers<CR>";
      options = {
        desc = "search for files in the buffers";
      };
    }
    # yazi bindings
    {
      mode = "n";
      key = "<leader>yy";
      action = "<cmd>Yazi cwd<CR>";
      options = {
        desc = "Open the file manager in nvim's working directory";
      };
    }
    {
      mode = "n";
      key = "<leader>y-";
      action = "<cmd>Yazi<CR>";
      options = {
        desc = "Open yazi at the current file";
      };
    }
    {
      mode = "n";
      key = "<leader>ys";
      action = "<cmd>Yazi toggle<CR>";
      options = {
        desc = "Resume the last yazi session";
      };
    }
  ];
}
