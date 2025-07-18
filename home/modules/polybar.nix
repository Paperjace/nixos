{ config, pkgs, ... }:

{
	services.polybar = {
		enable = true;
		script = "polybar example &";
    config = ./config.ini;
	# 	settings = 
	# 	let
  #       background = "#99000000";
  #       background-alt = "#99000000";

  #       foreground = "#ffdddddd";
  #       foreground-alt = "#ffdddddd";

  #       primary = "#ff006633";
  #       secondary = "#ff003333";
  #       alert = "#ff330000";
	# 	in {
	# 		"bar/topBar" = {
	# 			width = "100%";
	# 			height = "3%";
	# 			radius = 0;
	# 			monitor = "\${env:MONITOR:DP-2}";
	# 			modules-left = "i3";
	# 			modules-center = "date";
	# 		};

	# 		"module/date" = {
	# 			type = "internal/date";
	# 			internal = 5;
	# 			date = "%d.%m.%y";
	# 			time = "%H:%M";
	# 			label = "%time%  %date%";
	# 		};

	# 		"module/i3" = {
  #       type = "internal/i3";
  #       pin-workspaces = "true";
  #       enable-click = "true";

  #       # format = "<label-state> <label-mode>";
  #       # format-background = "\${colors.mauve}";

  #       # label-mode = "%mode%";
  #       label-mode-padding = 1;

  #       # label-unfocused = "%index%";
  #       label-unfocused-foreground = foreground-alt;
  #       label-unfocused-padding = 1;

  #       # label-focused = "%index%";
  #       label-focused-font = 2;
  #       label-focused-foreground = foreground;
  #       label-focused-padding = 1;

  #       # label-visible = "%index%";
  #       label-visible-padding = 1;

  #       # label-urgent = "%index%";
  #       label-urgent-foreground = alert;
  #       label-urgent-padding = 1;

  #       # label-separator = "";
  #     };
	# 	};
	};
}
