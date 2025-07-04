{
  lib,
  config,
  ...
}:
let
  browsers = [
    "firefox"
    "librewolf"
  ];
in
{
  options.programs = lib.genAttrs browsers (_name: {
    potatofox = {
      enable = lib.mkEnableOption "potatofox";
      profiles = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        default = [ ];
        example = [ "default" ];
      };
    };
  });

  config.home.file = lib.mkMerge (
    builtins.concatMap (
      name:
      map (
        n:
        lib.mkIf config.programs.${name}.potatofox.enable {
          ".${if name == "librewolf" then name else ".mozzila/${name}"}/${n}/chrome" = {
            source = ./chrome;
            recursive = true;
          };
        }
      ) config.programs.${name}.potatofox.profiles
    ) browsers
  );
}
