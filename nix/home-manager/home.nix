{ config, pkgs, ... }:

let
  username = "shuntaka";
in
{
  home = {
    username = username;
    homeDirectory = "/home/${username}";
    stateVersion = "24.11";
    extraOutputsToInstall = [ "dev" ];
  };

  xdg.enable = true;

  imports = [
    ./programs/deno/default.nix
    ./programs/gh/default.nix
    ./programs/git/default.nix
    ./programs/nvim/default.nix
    ./programs/packages/default.nix
    ./programs/zsh/default.nix
  ];

  programs.home-manager.enable = true;

  nix = {
    package = pkgs.nix;
    settings = {
      experimental-features = [
        "nix-command"
        "flakes"
      ];
      use-xdg-base-directories = true;
      cores = 0;
      trusted-users = [ username ];
    };

    gc = {
      automatic = true;
      frequency = "daily";
      options = "--delete-older-than 3d";
    };
  };
}
