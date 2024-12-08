{
  config,
  lib,
  ...
}: {
  options = {
    browser.enable =
      lib.mkEnableOption "enables browser config";
  };

  config = lib.mkIf config.browser.enable {
    programs.chromium = {
      enable = true;
      extensions = [
        "inmopeiepgfljkpkidclfgbgbmfcennb"
        "dlnejlppicbjfcfcedcflplfjajinajd"
        "neebplgakaahbhdphmkckjjcegoiijjo"
        "dbepggeogbaibhgnhhndojpepiihcmeb"
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
          "[*.]figma.com"
          "[*.]github.com"
          "[*.]gob.mx"
          "[*.]google.com"
          "[*.]indeed.com"
          "[*.]mercadolibre.com.mx"
          "[*.]neon.tech"
          "[*.]notion.so"
          "[*.]prisma.io"
          "[*.]slack.com"
          "[*.]uaq.mx"
          "[*.]vultr.com"
        ];
        "DefaultCookiesSetting" = 2;
        "DefaultClipboardSetting" = 2;
        "DefaultJavaScriptSetting" = 2;
        "JavaScriptAllowedForUrls" = [
          "192.168.10.1"
          "[*.]aliexpress.com"
          "[*.]app.diagrams.net"
          "[*.]atlassian.net"
          "[*.]canva.com"
          "[*.]chatgpt.com"
          "[*.]chromeenterprise.google"
          "[*.]coursera.org"
          "[*.]dbdiagram.io"
          "[*.]dndbeyond.com"
          "[*.]excalidraw.com"
          "[*.]figma.com"
          "[*.]github.com"
          "[*.]gob.mx"
          "[*.]google.com"
          "[*.]indeed.com"
          "[*.]meet.jit.si"
          "[*.]mercadolibre.com.mx"
          "[*.]neon.tech"
          "[*.]nestjs.com"
          "[*.]nixos.org"
          "[*.]nix-community[*.]"
          "[*.]notion.so"
          "[*.]openstreetmap.org"
          "[*.]plane.so"
          "[*.]qmk.fm"
          "[*.]regexr.com"
          "[*.]prisma.io"
          "[*.]slack.com"
          "[*.]uaq.mx"
          "[*.]vultr.com"
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
          "https://www.youtube.com"
        ];
      };
    };
  };
}
