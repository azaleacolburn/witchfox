inputs:
{
  lib,
  config,
  pkgs,
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
    witchfox =
      let
        mkDisableOption =
          d:
          lib.mkEnableOption d
          // {
            default = true;
            example = false;
          };
      in
      {
        enable = lib.mkEnableOption "witchfox";
        profiles = lib.mkOption {
          type = lib.types.attrsOf (
            lib.types.submodule {
              options = {
                chrome.enable = mkDisableOption "installing the chrome directory";
                prefs.enable = mkDisableOption "enabling user.js prefs";
                tweaks = lib.mkOption {
                  description = "tweaks with the `uc.tweak.` sufix removed";
                  type = with lib.types; attrsOf (pkgs.formats.json { }).type;
                  default = { };
                  example = {
                    translucency = true;
                    no-window-controls = true;
                  };
                };
                extensions = {
                  enable = lib.mkEnableOption "installing userchrome-toggle-extended and sidebery";
                  userchrome-toggle.configure = lib.mkEnableOption "applying userchrome-toggle-extended settings";
                };
              };
            }
          );
          default = { };
          example = {
            default = { };
            disable = {
              chrome.enable = false;
              prefs.enable = false;
            };
          };
        };
      };
  });

  config = lib.mkMerge (
    lib.forEach browsers (
      name:
      let
        cfg = config.programs.${name}.witchfox;
      in
      lib.mkIf cfg.enable {
        home.file = lib.mapAttrs' (
          n: pcfg:
          lib.nameValuePair ".${if name == "librewolf" then "librewolf" else "mozzila/${name}"}/${n}/chrome" {
            source = ./chrome;
            recursive = true;
          }
        ) cfg.profiles;

        programs.${name}.profiles = lib.mapAttrs (n: pcfg: {
          settings = lib.mkMerge [
            (lib.mkIf pcfg.prefs.enable {
              "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
              "browser.tabs.allow_transparent_browser" = true;
              "svg.context-properties.content.enabled" = true;
              "layout.css.has-selector.enabled" = true;
              "browser.urlbar.suggest.calculator" = true;
              "browser.urlbar.unitConversion.enabled" = true;
              "browser.urlbar.trimHttps" = true;
              "browser.urlbar.trimURLs" = true;
              "widget.gtk.rounded-bottom-corners.enabled" = true;
              "browser.compactmode.show" = true;
              "widget.gtk.ignore-bogus-leave-notify" = 1;
              "browser.uidensity" = 1;
            })
            (lib.mapAttrs' (name: value: lib.nameValuePair "uc.tweak.${name}" value) pcfg.tweaks)
          ];
          extensions = {
            packages =
              let
                inherit (pkgs.stdenv.hostPlatform) system;
              in
              with inputs.nur.legacyPackages.${system}.repos.rycee.firefox-addons;
              lib.mkIf pcfg.extensions.enable [
                sidebery
                userchrome-toggle-extended
              ];
            settings."userchrome-toggle-extended@n2ezr.ru".settings =
              lib.mkIf pcfg.extensions.userchrome-toggle.configure
                {
                  initialized = true;
                  settingsVer = "2";

                  allowMultiple = true;
                  closePopup = true;
                  useLastWindowToggles = false;
                  keepToggles = false;

                  toggles = [
                    {
                      name = "Style 1";
                      enabled = true;
                      prefix = "᠎";
                      default_state = false;
                    }
                    {
                      name = "Style 2";
                      enabled = true;
                      prefix = "​";
                      default_stat = false;
                    }
                    {
                      name = "Style 3";
                      enabled = true;
                      prefix = "‌";
                      default_state = false;
                    }
                  ];
                };
          };
        }) cfg.profiles;
      }
    )
  );
}
