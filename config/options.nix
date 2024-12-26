{ ... }:
{
  opts = {
    # Line numbers
    number = true;
    relativenumber = true;

    # Always show the signcolumn, otherwise text would be shifted when displaying error icons
    signcolumn = "yes";

    # Search
    ignorecase = true;
    smartcase = true;

    # Configure how new splits should be opened
    splitright = true;
    splitbelow = true;

    # Tab defaults (might get overwritten by an LSP server)
    tabstop = 4;
    shiftwidth = 4;
    softtabstop = 0;
    expandtab = true;
    smarttab = true;

    # Save undo history
    undofile = true;

    # Highlight the current line for cursor
    cursorline = true;

    # Disable swapfile
    swapfile = false;
    list = true;
    wrap = true;
    listchars = {
      eol = "";
      space = "·";
      tab = "->";
    };
    termguicolors = true;

  };

  # System clipboard support, needs xclip/wl-clipboard
  clipboard = {
    register = "unnamedplus";
    providers = {
      wl-copy.enable = true;
      xclip.enable = true;
      xsel.enable = true;
    };
  };

  globals.mapleader = " ";

  highlight = {
    Comment.underline = true;
    Comment.bold = true;
  };
}
