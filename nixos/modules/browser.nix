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
				"[*.]dndbeyond.com"
				"[*.]github.com"
				"[*.]google.com"
				"[*.]notion.so"
				"[*.]prisma.io"
				"[*.]uaqedvirtual.uaq.mx"
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
				"[*.]dndbeyond.com"
				"[*.]github.com"
				"[*.]google.com"
				"[*.]meet.jit.si"
				"[*.]nestjs.com"
				"[*.]nixos.org"
				"[*.]nix-community[*.]"
				"[*.]notion.so"
				"[*.]openstreetmap.org"
				"[*.]prisma.io"
				"[*.]uaqedvirtual.uaq.mx"
				"[*.]youtube.com"
			];
		};
	};
}
