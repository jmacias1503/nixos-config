{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    acpi
    blueman
    git
    gnumake
    htop
    lf
    neovim
    pass
    pulseaudio
    tmux
    unrar
    unzip
    wget
    zip
    zsh
  ];
}
