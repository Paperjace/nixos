{ config, pkgs, ... }:

{
	services.picom = {
		enable = true;
		backend = "glx";	
		vSync = true;
    fade = true;
    fadeDelta = 5;
		settings = {
			corner-radius = 10.0;
			# round-borders = 10;
			unredir-if-possible = false;
			blur = {
				method = "dual_kawase";
				size = 10;
				strength = 20;
			};
		};
		opacityRules = [
			"80:class_g = 'ghostty' && focused"
      "60:class_g = 'ghostty' && !focused"
			"100:class_g = 'Code' && focused"
      "60:class_g = 'Code' && !focused"
			"100:class_g = 'firefox' && focused"
			"90:class_g = 'firefox' && !focused"
			"70:class_g = 'rofi'"
			"100:class_g = 'polybar'"
		];
	};
}
