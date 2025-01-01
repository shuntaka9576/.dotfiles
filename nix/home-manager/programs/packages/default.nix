{ pkgs, ... }:
{
  home.packages = with pkgs; [
    gnumake
    ripgrep
    fzf
    gcc
  ];
}
