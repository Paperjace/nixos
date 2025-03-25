{ config, pkgs,... }:

{
	programs.ghostty = {
		enable = true;
		settings = {
			theme = "tokyonight";
			font-size = 16;
			window-decoration = "false";
			window-padding-x = 20;
			window-padding-y = 20;
		};
	};
}
