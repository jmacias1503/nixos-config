{ pkgs, ...}:
  pkgs.writeShellScriptBin "tmux-chambauaq" ''
    SESH="chambauaq"
    ${pkgs.tmux}/bin/tmux has-session -t $SESH 2>/dev/null
    if [ $? != 0 ]; then
      ${pkgs.tmux}/bin/tmux new-session -d -s $SESH -n "editor"
      ${pkgs.tmux}/bin/tmux setenv AWS_BUCKET_NAME $AWS_BUCKET_NAME
      ${pkgs.tmux}/bin/tmux setenv AWS_S3_ID $AWS_S3_ID
      ${pkgs.tmux}/bin/tmux setenv AWS_S3_REGION $AWS_S3_REGION
      ${pkgs.tmux}/bin/tmux setenv AWS_S3_SECRET_KEY $AWS_S3_SECRET_KEY
      ${pkgs.tmux}/bin/tmux setenv DATABASE_URL $DATABASE_URL
      ${pkgs.tmux}/bin/tmux setenv JWT_SECRET_TOKEN $JWT_SECRET_TOKEN
      ${pkgs.tmux}/bin/tmux setenv PRISMA_ENGINES_CHECKSUM_IGNORE_MISSING $PRISMA_ENGINES_CHECKSUM_IGNORE_MISSING
      ${pkgs.tmux}/bin/tmux setenv PRISMA_MIGRATION_ENGINE_BINARY $PRISMA_MIGRATION_ENGINE_BINARY
      ${pkgs.tmux}/bin/tmux setenv PRISMA_QUERY_ENGINE_BINARY $PRISMA_QUERY_ENGINE_BINARY
      ${pkgs.tmux}/bin/tmux setenv PRISMA_QUERY_ENGINE_LIBRARY $PRISMA_QUERY_ENGINE_LIBRARY
      ${pkgs.tmux}/bin/tmux setenv PRISMA_INTROSPECTION_ENGINE_BINARY $PRISMA_INTROSPECTION_ENGINE_BINARY
      ${pkgs.tmux}/bin/tmux setenv PRISMA_FMT_BINARY $PRISMA_FMT_BINARY
      ${pkgs.tmux}/bin/tmux new-window -t $SESH -n "server"
      ${pkgs.tmux}/bin/tmux new-window -t $SESH -n "db"
      ${pkgs.tmux}/bin/tmux new-window -t $SESH -n "rest-tests"
      ${pkgs.tmux}/bin/tmux send-keys -t $SESH:"editor" "cd ~/Documents/projects/bolsa_de_trabajo_back" C-m
      ${pkgs.tmux}/bin/tmux send-keys -t $SESH:"editor" "${pkgs.neovim}/bin/nvim ." C-m
      ${pkgs.tmux}/bin/tmux send-keys -t $SESH:"server" "cd ~/Documents/projects/bolsa_de_trabajo_back" C-m
      ${pkgs.tmux}/bin/tmux send-keys -t $SESH:"server" "${pkgs.nodejs}/bin/npm run start:dev" C-m
      ${pkgs.tmux}/bin/tmux send-keys -t $SESH:"db" "${pkgs.mongosh}/bin/mongosh $DATABASE_URL" C-m
      ${pkgs.tmux}/bin/tmux select-window -t $SESH:"rest-tests"
      ${pkgs.tmux}/bin/tmux split-window -v
      ${pkgs.tmux}/bin/tmux split-window -h
      ${pkgs.tmux}/bin/tmux select-pane -U
      ${pkgs.tmux}/bin/tmux split-window -h
      ${pkgs.tmux}/bin/tmux select-window -t $SESH:"editor"
    fi

    tmux attach-session -t $SESH
  ''
