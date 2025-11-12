{ pkgs, ... }:

{
	programs.plasma = {
		enable = true;

		workspace = {
			lookAndFeel = "org.kde.breezedark.desktop";
		};

		kwin = {
			virtualDesktops = {
				number = 4;
			};

			effects = {
				minimization = {
					animation = "magiclamp";
				};
			};
		};

		fonts = {
			general = {
				family = "JetBrainsMono Nerd Font";
				pointSize = 10;
			};
			menu = {
				family = "JetBrainsMono Nerd Font";
				pointSize = 10;
			};
			small = {
				family = "JetBrainsMono Nerd Font";
				pointSize = 8;
			};
			toolbar = {
				family = "JetBrainsMono Nerd Font";
				pointSize = 10;
			};
			windowTitle = {
				family = "JetBrainsMono Nerd Font";
				pointSize = 10;
			};
			fixedWidth = {
				family = "JetBrainsMono Nerd Font";
				pointSize = 10;
			};
		};

		shortcuts = {
			kwin = {
				"Switch to Desktop 1" = "Meta+F1";
				"Switch to Desktop 2" = "Meta+F2";
				"Switch to Desktop 3" = "Meta+F3";
				"Switch to Desktop 4" = "Meta+F4";
				"Window to Desktop 1" = "Alt+Meta+F1";
				"Window to Desktop 2" = "Alt+Meta+F2";
				"Window to Desktop 3" = "Alt+Meta+F3";
				"Window to Desktop 4" = "Alt+Meta+F4";
			};
		};

		input =  {
			mice = [
			{
				vendorId = "046d";
				productId = "c547";
				name = "Logitech USB Receiver";
				accelerationProfile = "none";
			}
			];
		};	
	};
}

