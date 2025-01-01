{ ... }:
{
  programs.gh = {
    enable = true;
    settings = {
      git_protocol = "https";
      alias = {
        co = "pr checkout";
        pv = "pr view";
      };
    };
  };
}
