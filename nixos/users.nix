{...}: {
  users.users = {
    erick = {
      isNormalUser = true;
      extraGroups = ["wheel"];
    };
  };
}

