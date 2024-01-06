{ config, lib, pkgs, ... }: {
  imports = [
    ./modules/boot
    ./modules/flakes
    ./modules/hardware
    ./modules/locale
    ./modules/network
    ./modules/nixpkgs
    ./modules/timezone
    ./modules/users
  ];

  services = {
    xserver = {
      enable = true;
      xkb = {
        layout = "br";
        options = "caps:escape";
      };
      displayManager = {
        startx = {
          enable = true;
        };
	    };
      windowManager = {
        xmonad = {
          enable = true;
          enableContribAndExtras = true;
        };
      };
      libinput = {
        mouse = {
          accelProfile = "flat";
        };
      };
    };
  };

  environment = {
    systemPackages = with pkgs; [
      neovim
      brave
      alacritty
      redshift
      git
      spotify
      firefox
      vscode
      nodejs
      unzip
      flatpak
      ghc
      anki
      xclip
      neofetch
      rofi
    ];
  };

  services.pipewire = {
    enable = true;
    audio = {
      enable = true;
    };
    alsa = {
      enable = true;
      support32Bit = true;
    };
    pulse = {
      enable = true;
    };
  };

  programs = {
    fish = {
      enable = true;
    };
    starship = {
      enable = true;
    };
    steam = {
      enable = true;
    };
  };

  services = {
    openssh = {
      enable = true;
    };
  };

  system = {
    stateVersion = "23.11";
  };
}
