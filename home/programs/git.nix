{ ... }:

{
  programs.git = {
    enable = true;

    settings = {
      user = {
        name = "AsH131211";
        email = "aswanth.ash1312@gmail.com";
      };

      init.defaultBranch = "main";
      pull.rebase = false;
    };
  };
}
