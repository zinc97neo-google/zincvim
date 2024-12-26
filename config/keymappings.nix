{ ... }:
{
  keymaps = [
    # quit editor
    {
      mode = "n";
      key = "<leader>q";
      action = "<cmd>wa<CR><cmd>q!<CR>";
    }
    # save all
    {
      mode = "n";
      key = "<leader>w";
      action = "<cmd>wa<CR>";
    }
    # inser -> normal && save all
    {
      mode = "i";
      key = "jj";
      action = "<ESC><cmd>wa<CR>";
    }
    # window
    {
      mode = "n";
      key = "<c-k>";
      action = "<c-w>k";
    }
    {
      mode = "n";
      key = "<c-j>";
      action = "<c-w>j";
    }
    {
      mode = "n";
      key = "<c-h>";
      action = "<c-w>h";
    }
    {
      mode = "n";
      key = "<c-l>";
      action = "<c-w>l";
    }
  ];
}
