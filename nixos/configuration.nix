# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, inputs, outputs, ... }:

let customSt = pkgs.st.overrideAttrs (old: {
		src = ./packages/self-built/st;
});

in

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./modules/graphical-environment.nix
      ./modules/browser.nix
      inputs.home-manager.nixosModules.home-manager
    ];


  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Audio
  services.pipewire.enable = false;
  hardware.pulseaudio.enable = true;

  # Bluetooth
  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true;
  services.blueman.enable = true;

  # home-manager
  home-manager =  {
  	extraSpecialArgs = { inherit inputs outputs; };
	users = {
		jmacias8075 = import ../home-manager/home.nix;
	};
  };

  # Cron jobs
  services.cron = {
  	enable = true;
	systemCronJobs = [
		"0 10 * * * root nix-collect-garbage -d"
	];
  };

  # Printing
  services.printing.enable = true;

  networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "America/Mexico_City";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "dvp";
  };

  # Configure console keymap
  console.keyMap = "dvorak";

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.jmacias8075 = {
    isNormalUser = true;
    description = "Alejandro";
    extraGroups = [ "networkmanager" "wheel" "audio" ];
    packages = with pkgs; [];
  };
  users.users.jmacias8075.ignoreShellProgramCheck = true;

  users.users.jmacias8075.shell = pkgs.zsh;

  # Enable automatic login for the user.
  services.getty.autologinUser = "jmacias8075";

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Custom st source


  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    acpi
    blueman
    brave
    dmenu
    ffmpeg
    gcc
    gimp
    git
    gnumake
    home-manager
    htop
    imv
    lf
    mpv
    ncpamixer
    neovim
    pass
    postgresql
    pulseaudio
    scrot
    customSt
    (texlive.combine {
    	inherit (pkgs.texlive)
	scheme-full
	pgf
	;
    })
    tmux
    unrar
    unzip
    wget
    xclip
    xwallpaper
    zathura
    zip
    zsh
  ];

  fonts.packages = with pkgs; [
  	nerdfonts
  ];

  # PostgreSQL

  services.postgresql = {
  	enable = true;
	ensureDatabases = [ "root" ];
	enableTCPIP = true;
	authentication = pkgs.lib.mkOverride 10 ''
	host all all 127.0.0.1/32 trust
	host all all ::1/128 trust
	local all all trust
	'';
  };

  services.tlp = {
        enable = true;
        settings = {
          CPU_SCALING_GOVERNOR_ON_AC = "performance";
          CPU_SCALING_GOVERNOR_ON_BAT = "powersave";
  
          CPU_ENERGY_PERF_POLICY_ON_BAT = "power";
          CPU_ENERGY_PERF_POLICY_ON_AC = "performance";
  
          CPU_MIN_PERF_ON_AC = 0;
          CPU_MAX_PERF_ON_AC = 100;
          CPU_MIN_PERF_ON_BAT = 0;
          CPU_MAX_PERF_ON_BAT = 40;
  
         #Optional helps save long term battery health
         START_CHARGE_THRESH_BAT0 = 40; # 40 and bellow it starts to charge
         STOP_CHARGE_THRESH_BAT0 = 80; # 80 and above it stops charging
  
        };
  };

  # Enable flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];


  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.05"; # Did you read the comment?

}
