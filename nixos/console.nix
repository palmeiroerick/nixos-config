{pkgs, ...}: {
  console = {
    enable = true;
    useXkbConfig = true;
    font = "ter-v32n";
    packages = with pkgs; [
      terminus_font
    ];
  };
}

