{ config, pkgs, inputs, ... }:

{
	qt = {
		enable = true;
		platformTheme.name = "adwaita";
		style = {
			name = "adwaita-dark";
		};
	};

	dconf = {
		enable = true;

		settings = {
			"org/gnome/desktop/interface" = {
				color-scheme = "prefer-dark";
				font = "JetBrainsMono Nerd Font 11";
			};
			"org/gnome/desktop/wm/keybindings" = {
				"switch-to-workspace-1" = [ "<Super>F1" ];
				"switch-to-workspace-2" = [ "<Super>F2" ];
				"switch-to-workspace-3" = [ "<Super>F3" ];
				"switch-to-workspace-4" = [ "<Super>F4" ];
				"switch-to-workspace-5" = [ "<Super>F5" ];
				"switch-to-workspace-6" = [ "<Super>F6" ];
				"switch-to-workspace-7" = [ "<Super>F7" ];
				"switch-to-workspace-8" = [ "<Super>F8" ];
				"switch-to-workspace-9" = [ "<Super>F9" ];
			};		
		};
	};
}
