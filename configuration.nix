{ config, lib, pkgs, ... }: {
  imports = [
    ./hardware.nix
  ];

  boot = {
    loader = {
      grub = {
        enable = true;
        device = "/dev/sda";
      };
    };
  };

  networking = {
    hostName = "nixos";
    networkmanager = {
      enable = true;
    };
  };

  time = {
    timeZone = "America/Sao_Paulo";
  };

  i18n = {
    defaultLocale = "en_US.UTF-8";
  };

  console = {
    useXkbConfig = true;
  };

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
    };
  };

  users = {
    users = {
      erick = {
        isNormalUser = true;
        extraGroups = [ "wheel" ];
      };
    };
    defaultUserShell = pkgs.fish;
  };

  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };

  environment = {
    systemPackages = with pkgs; [
      neovim
      brave
      alacritty
      dmenu
      redshift
      git
      spotify
      firefox
      vscode
      nodejs
      unzip
      flatpak
      ghc
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

  nix = {
    settings = {
      experimental-features = [
        "nix-command"
        "flakes"
      ];
    };
  };

  system = {
    stateVersion = "23.11";
  };
}
