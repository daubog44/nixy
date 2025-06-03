{ config, lib, ... }: {
  imports = [
    # Choose your theme here:
    ../../themes/nixy.nix
  ];

  config.var = {
    hostname = "nixos";
    username = "nixos";
    configDirectory = "/home/" + config.var.username
      + "/.config/nixos"; # The path of the nixos configuration directory

    keyboardLayout = "it";

    location = "Rome";
    timeZone = "Europe/Rome";
    defaultLocale = "en_US.UTF-8";
    extraLocale = "it_IT.UTF-8";

    git = {
      username = "daubog44";
      email = "uopilul@gmail.com";
    };

    autoUpgrade = false;
    autoGarbageCollector = true;
  };

  # Let this here
  options = {
    var = lib.mkOption {
      type = lib.types.attrs;
      default = { };
    };
  };
}
