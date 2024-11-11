{pkgs}:
let customSt = pkgs.st.overrideAttrs (old: {
    src = ./packages/self-built/st;
    });

in
{
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    acpi
    blueman
    brave
    dmenu
    ffmpeg
    git
    gnumake
    htop
    lf
    neovim
    pass
    pulseaudio
    scrot
    customSt
    tmux
    unrar
    unzip
    wget
    xclip
    xwallpaper
    zip
    zsh
  ];
}
