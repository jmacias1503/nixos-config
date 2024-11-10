{pkgs, ...}:

pkgs.writeShellScriptBin "browse" ''
  browsing_method=$(echo "ytfzf\nbrave" | ${pkgs.dmenu}/bin/dmenu)
  prompt=$(${pkgs.dmenu} -p "prompt:")
''
