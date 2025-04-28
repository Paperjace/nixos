{ config, pkgs,... }:

{
	programs.ghostty = {
		enable = true;
		settings = {
			theme = "tokyonight";
			font-size = 12;
			window-decoration = "false";
			window-padding-x = 20;
		};
	};
}
