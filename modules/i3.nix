{ config, pkgs, lib, ... }:

{
	xsession.windowManager.i3 = {
		enable = true;
		# package = pkgs.i3-gaps;
		
		config = rec {
			modifier = "Mod4";
			terminal = "ghostty";
			gaps = {
				inner = 15;
				outer = 5;
				smartBorders = "off";
			};
			bars = [];
			window = {
				titlebar = false;
				commands = [
					{
						command = "border pixel 0";
						criteria = {
							class="^.*"; # Remove borders for all windows
						};
					}
				];
			};
			menu = "rofi -show combi";
			assigns = {
				"1" = [
					{ class = "^code$"; }
					{ class = "^firefox$"; }
				];
				"10" = [{ class = "^discord$";}];
			};
			floating = {
        criteria = [
          {
            title = "Volume Control";
          }
          {
            class = "Pavucontrol";
          }
          {
 						class = "org.gnome.Nautilus";
          }
					{
						class = "Lxappearance";
					}
        ];
      };
			# colors = {
			# 	focused = {
			# 		border = "#ff0000";
			# 		background = "#000000";
			# 		text = "#ffffff";
			# 		indicator = "#00ff00";
			# 		childBorder = "#ff0000";
			# 	};
			# };
			keybindings = lib.mkOptionDefault {
				"XF86AudioLowerVolume" = "exec wpctl set-volume @DEFAULT_SINK@ 0.01-";
        "XF86AudioRaiseVolume" = "exec wpctl set-volume @DEFAULT_SINK@ 0.01+";
				"XF86AudioMute" = "exec wpctl set-mute @DEFAULT_SINK@ toggle";
				"${modifier}+space" = "exec rofi -show drun";
				"${modifier}+q" = "kill";
				"${modifier}+Shift+q" = "exec i3-nagbar -t warning -m 'Do you want to exit i3?' -b 'Yes' 'i3-msg exit'";
			};
			defaultWorkspace = "1";
			workspaceOutputAssign = [
				{
					workspace = "1";
					output = "DP-2";
				}
				{
					workspace = "2";
					output = "DP-2";
				}
				{
					workspace = "3";
					output = "DP-2";
				}
				{
					workspace = "10";
					output = "DP-0";
				}
			];
			startup = [
				{ 
					command = "xrandr --output DP-0 --primary --mode 3440x1440 --rate 94.99 --pos 3840x0 --rotate normal --output DP-1 --off --output HDMI-0 --off --output DP-2 --mode 3840x2160 --rate 120.00 --pos 0x0 --rotate normal --output DP-3 --off --output DP-4 --off --output DP-5 --off --output USB-C-0 --off";
					always = true;
					notification = false;
				}
				{ 
					command = "feh --bg-scale /home/jason/Pictures/wallpaper.jpg";
					always = true;
					notification = false;
				}
				{ 
					command = "polybar --reload example &";
					always = false;
					notification = false;
				}
				{
					command = "firefox";
					always = false;
					notification = true;
				}
				{
					command = "code";
					always = false;
					notification = true;
				}
			];
		};
	};
}
