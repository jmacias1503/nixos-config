{...}:
{
  programs.nixvim = {
    clipboard.register = "unnamedplus";
    opts = {
      conceallevel = 2;
      mouse = "";
      number = true;
      relativenumber = true;
      shiftwidth = 2;
    };
  };
}
