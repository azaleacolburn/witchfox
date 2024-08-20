{ ... }: 
let
  profile = "CHANGE-THIS";
in {
  # for use with home-manager
  home.file.".mozilla/firefox/${profile}/chrome" = {
    source = ./chrome;
    recursize = true;
  };

  programs.firefox.profiles.${profile}.settings = {
    "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
    "svg.context-properties.content.enabled" = true;
    "layout.css.has-selector.enabled" = true;
    "browser.urlbar.suggest.calculator" = true;
    "browser.urlbar.unitConversion.enabled" = true;
    "browser.urlbar.trimHttps" = true;
    "browser.urlbar.trimURLs" =  true;
    "widget.gtk.rounded-bottom-corners.enabled" = true;
    "browser.compactmode.show" = true;
    "widget.gtk.ignore-bogus-leave-notify" = 1;
    "browser.tabs.allow_transparent_browser" = false;
    "browser.uidensity" = 1;
  };
}
