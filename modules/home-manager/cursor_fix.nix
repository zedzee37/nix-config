{ config, pkgs, inputs, ... }:
{
	home = {
		file = {
			cursor-theme-default = {
				enable = true;
				text = ''
					[Icon Theme]
					Inherits=/usr/share/icons/default
				'';
				target = "${config.xdg.dataHome}/icons/default/index.theme";
			};
		};
	};
}
