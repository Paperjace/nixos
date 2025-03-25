{ config, pkgs, ... }:

{

  home.username = "jason";
  home.homeDirectory = "/home/jason";
  
  imports = [
    ./modules/default.nix
  ];
  
  home.packages = with pkgs; [
    discord
    pavucontrol
    nerd-fonts.jetbrains-mono
  ];

  xresources.properties = {
    "Xcursor.size" = 120;
  };
  # Allows downloading non-open-source software
  nixpkgs.config.allowUnfree = true;
  
  # This tells Home Manager to manage XDG user directories and symlink .desktop files from your packages into ~/.local/share/applications, where GNOME expects them.
  xdg.enable = true;

  home.sessionVariables = {
    EDITOR = "vim";
    TERMINAL = "ghostty";
    SHELL = "zsh";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  
  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "24.11"; # Please read the comment before changing.
}
