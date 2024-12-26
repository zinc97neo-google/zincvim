{ ... }:
{
  plugins = {
    # Git signs in code
    gitsigns = {
      enable = true;
      settings.current_line_blame = true;
    };
    diffview.enable = true;
    git-conflict = {
      enable = true;
      settings = {
        default_commands = false;
        default_mappings = false;
        disable_diagnostics = false;
        highlights = {
          current = "DiffText";
          incoming = "DiffAdd";
        };
        list_opener = "copen";
      };
    };
    gitmessenger.enable = true;
  };
  keymaps = [
    # differview
    {
      mode = "n";
      key = "<leader>gd";
      action = "<cmd>DiffviewOpen<CR>";
      options = {
        desc = "differview open";
      };
    }
    # close pane
    {
      mode = "n";
      key = "<leader>gq";
      action = "<cmd>tabclose<CR>";
      options = {
        desc = "differview close";
      };
    }
  ];
}
