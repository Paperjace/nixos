{ config, pkgs, ... }:

{
	imports = [
		./i3.nix
		./picom.nix
		./polybar.nix
		./ghostty.nix
		./starship.nix
		./zsh.nix
	];
	programs = {
		vscode.enable = true;
	};
}
