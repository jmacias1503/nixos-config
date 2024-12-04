{ pkgs, ...}:
  pkgs.writeShellScriptBin "tmux-chambauaq" ''
    SESH="chambauaq"
    ${pkgs.tmux}/bin/tmux has-session -t $SESH 2>/dev/null
    if [ $? != 0 ]; then
      ${pkgs.tmux}/bin/tmux new-session -d -s $SESH -n "editor"
      ${pkgs.tmux}/bin/tmux new-windonw -t $SESH -n "server"
      ${pkgs.tmux}/bin/tmux send-keys -t $SESH:editor "cd ~/Documents/projects/bolsa_de_trabajo_back" C-m
      ${pkgs.tmux}/bin/tmux send-keys -t $SESH:editor "${pkgs.neovim}/bin/nvim ." C-m
      ${pkgs.tmux}/bin/tmux send-keys -t $SESH:server "cd ~/Documents/projects/bolsa_de_trabajo_back" C-m
      ${pkgs.tmux}/bin/tmux send-keys -t $SESH:server "${pkgs.nodejs}/bin/npm run start:dev" C-m
    fi

    tmux attach-session -t $SESH
  ''
