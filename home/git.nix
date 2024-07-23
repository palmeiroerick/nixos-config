{...}: {
  programs.git = {
    enable = true;
    userName = "palmeiroerick";
    userEmail = "148393698+palmeiroerick@users.noreply.github.com";
    extraConfig = {
      init = {
        defaultBranch = "main";
      };
      core = {
        editor = "nvim";
      };
    };
  };
}
