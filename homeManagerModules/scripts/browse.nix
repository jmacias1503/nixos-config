{pkgs, ...}:

pkgs.writeShellScriptBin "browse" ''
  browsing_method=$(printf "ytfzf\nbrave" | ${pkgs.dmenu}/bin/dmenu -p 'browser')
  prompt=$(${pkgs.dmenu}/bin/dmenu -p "prompt:")
''
