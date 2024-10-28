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
				"[*.]chromeenterprise.google"
				"[*.]coursera.org"
				"[*.]dbdiagram.io"
				"[*.]github.com"
				"[*.]google.com"
				"[*.]notion.so"
				"[*.]prisma.io"
				"[*.]youtube.com"
			];
			"DefaultCookiesSetting" = 2;
			"DefaultJavaScriptSetting" = 2;
			"JavaScriptAllowedForUrls" = [
				"[*.]app.diagrams.net"
				"[*.]canva.com"
				"[*.]chatgpt.com"
				"[*.]chromeenterprise.google"
				"[*.]coursera.org"
				"[*.]dbdiagram.io"
				"[*.]github.com"
				"[*.]google.com"
				"[*.]meet.jit.si"
				"[*.]nestjs.com"
				"[*.]nixos.org"
				"[*.]nix-community[*.]"
				"[*.]notion.so"
				"[*.]prisma.io"
				"[*.]youtube.com"
			];
		};
	};
}
