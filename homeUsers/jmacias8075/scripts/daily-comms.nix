{pkgs, ...}:
pkgs.writeShellScriptBin "daily-comms" ''
${pkgs.brave}/bin/brave --new-window mail.google.com &
${pkgs.signal-desktop}/bin/signal-desktop &
${pkgs.whatsapp-for-linux}/bin/whatsapp-for-linux &
${pkgs.slack}/bin/slack &
''
