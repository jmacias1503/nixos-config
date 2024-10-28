{...}:

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
				"[*.]coursera.org"
				"[*.]dbdiagram.io"
				"[*.]github.com"
				"[*.]google.com"
				"[*.]notion.so"
				"[*.]youtube.com"
				"[*.]chromeenterprise.google"
			];
			"DefaultCookiesSetting" = 2;
			"DefaultJavaScriptSetting" = 2;
			"JavaScriptAllowedForUrls" = [
				"[*.]app.diagrams.net"
				"[*.]canva.com"
				"[*.]chatgpt.com"
				"[*.]coursera.org"
				"[*.]dbdiagram.io"
				"[*.]github.com"
				"[*.]google.com"
				"[*.]youtube.com"
				"[*.]meet.jit.si"
				"[*.]nixos.org"
				"[*.]nix-community[*.]"
				"[*.]notion.so"
				"[*.]chromeenterprise.google"
			];
		};
	};
}
