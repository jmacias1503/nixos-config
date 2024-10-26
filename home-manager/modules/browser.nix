{ config, pkgs, ...}:

{
	programs.chromium = {
		enable = true;
		package = pkgs.brave;
		extensions = [
			"inmopeiepgfljkpkidclfgbgbmfcennb"
		];
		extraOpts = {
			"CookiesAllowedForUrls" = [
				"[*.]canva.com"
				"[*.]chatgpt.com"
				"[*.]dbdiagram.io"
				"[*.]github.com"
				"[*.]google.com"
				"[*.]youtube.com"
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
			];
		};
	};
}
