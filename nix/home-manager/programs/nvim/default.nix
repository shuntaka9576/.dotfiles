{ pkgs, ... }:
{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    plugins = with pkgs.vimPlugins; [
      lazy-nvim
    ];

    extraLuaConfig = builtins.readFile ./init.lua;
    withNodeJs = true;
  };
}
