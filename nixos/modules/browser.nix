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
	"[*.]atlassian.net"
	"[*.]canva.com"
	"[*.]chatgpt.com"
	"[*.]chromeenterprise.google"
	"[*.]coursera.org"
	"[*.]dbdiagram.io"
	"[*.]dndbeyond.com"
	"[*.]excalidraw.com"
	"[*.]github.com"
	"[*.]google.com"
	"[*.]notion.so"
	"[*.]prisma.io"
	"[*.]slack.com"
	"[*.]uaq.mx"
      ];
      "DefaultCookiesSetting" = 2;
      "DefaultClipboardSetting" = 2;
      "DefaultJavaScriptSetting" = 2;
      "JavaScriptAllowedForUrls" = [
	"192.168.10.1"
	"[*.]app.diagrams.net"
	"[*.]atlassian.net"
	"[*.]canva.com"
	"[*.]chatgpt.com"
	"[*.]chromeenterprise.google"
	"[*.]coursera.org"
	"[*.]dbdiagram.io"
	"[*.]dndbeyond.com"
	"[*.]excalidraw.com"
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
	"[*.]uaq.mx"
      ];
      "URLAllowlist" = [
	"https://chatgpt.com"
	"https://chromeenterprise.google"
	"https://classroom.google.com"
	"https://dbdiagram.io"
	"https://excalidraw.com"
	"https://github.com"
	"https://ingrlinux.atlassian.net"
	"https://nestjs.com"
	"https://notion.so"
	"uaqedvirtual.com"
      ];
      "URLBlocklist" = [
      ];
    };
  };
}
