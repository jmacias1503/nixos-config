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
	"[*.]slack.com"
	"[*.]uaqedvirtual.uaq.mx"
      ];
      "DefaultCookiesSetting" = 2;
      "DefaultClipboardSetting" = 2;
      "DefaultJavaScriptSetting" = 2;
      "JavaScriptAllowedForUrls" = [
	"192.168.10.1"
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
	"[*.]slack.com"
	"[*.]uaqedvirtual.uaq.mx"
      ];
      "URLAllowlist" = [
	"https://chatgpt.com"
	"https://chromeenterprise.google"
	"https://nestjs.com"
	"https://nixos.org"
	"https://nixos.wiki"
	"https://notion.so"
	"https://searx.be"
	"uaqedvirtual.com"
      ];
      "URLBlocklist" = [
	"*"
      ];
    };
  };
}
