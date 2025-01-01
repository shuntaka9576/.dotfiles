{ ... }:
{
  programs.git = {
    enable = true;
    userName  = "shuntaka9576";
    userEmail = "shuntaka9576@gmail.com";

    extraConfig = {
      pull = {
        rebase = false;
      };
    };
  };
}
