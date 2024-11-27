{
  pkgs,
  inputs,
  ...
}: {
  imports = [
    inputs.spicetify-nix.homeManagerModules.default
  ];

  programs.spicetify = let
    spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.system};
  in {
    enable = true;
    enabledExtensions = with spicePkgs.extensions; [
      betterGenres
    ];
    colorScheme = "custom";
    customColorScheme = {
      text = "c0caf5";
      subtext = "a9b1d6";
      main = "1a1b26";
      main-elevated = "343953";
      highlight = "343953";
      highlight-elevated = "343953";
      sidebar = "15161e";
      player = "1a1b26";
      card = "15161e";
      shadow = "000000";
      selected-row = "c0caf5";
      button = "7aa2f7";
      button-active = "7aa2f7";
      button-disabled = "343953";
      tab-active = "343953";
    };
  };
}
