{ pkgs, ... }:
{
  extraPlugins = [
    pkgs.vimPlugins.goto-preview
  ];
  keymaps = [
    # goto-preview
    {
      mode = "n";
      key = "<leader>Gd";
      action = "<cmd>lua require('goto-preview').goto_preview_definition()<CR>";
      options = {
        desc = "goto preview definition";
      };
    }
    {
      mode = "n";
      key = "<leader>Gt";
      action = "<cmd>lua require('goto-preview').goto_preview_type_definition()<CR>";
      options = {
        desc = "goto preview type definition";
      };
    }
    {
      mode = "n";
      key = "<leader>Gi";
      action = "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>";
      options = {
        desc = "goto preview implementation";
      };
    }
    {
      mode = "n";
      key = "<leader>GD";
      action = "<cmd>lua require('goto-preview').goto_preview_declaration()<CR>";
      options = {
        desc = "goto preview declaration";
      };
    }
    {
      mode = "n";
      key = "<leader>Gq";
      action = "<cmd>lua require('goto-preview').close_all_win()<CR>";
      options = {
        desc = "goto preview close all window";
      };
    }
    {
      mode = "n";
      key = "<leader>Gr";
      action = "<cmd>lua require('goto-preview').goto_preview_references()<CR>";
      options = {
        desc = "goto preview references";
      };
    }
  ];
}
