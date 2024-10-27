{ config, pkgs, ...}:

{
	programs.chromium = {
		enable = true;
		extensions = [
			"inmopeiepgfljkpkidclfgbgbmfcennb"
			"dlnejlppicbjfcfcedcflplfjajinajd"
		];
		extraOpts = {
			"CookiesAllowedForUrls" = [
				"[*.]canva.com"
				"[*.]chatgpt.com"
				"[*.]dbdiagram.io"
				"[*.]github.com"
				"[*.]google.com"
				"[*.]youtube.com"
				"[*.]chromeenterprise.google"
			];
			"DefaultCookiesSetting" = 2;
			"DefaultJavaScriptSetting" = 2;
			"JavaScriptAllowedForUrls" = [
				"[*.]canva.com"
				"[*.]chatgpt.com"
				"[*.]dbdiagram.io"
				"[*.]github.com"
				"[*.]google.com"
				"[*.]youtube.com"
				"[*.]meet.jit.si"
				"[*.]nixos.org"
				"[*.]chromeenterprise.google"
			];
		};
	};
}
