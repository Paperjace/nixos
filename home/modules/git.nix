{ config, pkgs, ... }:

{
	programs.git = {
		enable = true;
		userName = "Jason Hurley";
		userEmail = "paperjace@gmail.com";
	};
}