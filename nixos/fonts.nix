{pkgs, ...}: {
  fonts.packages = with pkgs; [
    noto-fonts-cjk-sans

    (nerdfonts.override {
      fonts = [
        "JetBrainsMono"
      ];
    })
  ];

  fonts.fontconfig.defaultFonts = {
    monospace = [
      "JetBrainsMonoNL Nerd Font Mono"
    ];

    sansSerif = [
      "DejaVu Sans"
      "Noto Sans CJK JP"
    ];

    serif = [
      "DejaVu Sans"
      "Noto Sans CJK JP"
    ];
  };
}
