{...}: {
  environment.etc = {
    "brave/policies/managed/disable_incognito.json".text = ''
      {
        "IncognitoModeAvailability": 1
      }
    '';
    "brave/policies/managed/extension_policy.json".text = ''
        {
        "ExtensionInstallForcelist": [
          "elfaihghhjjoknimpccccmkioofjjfkf"
        ]
      }
    '';
  };
}
