// userchrome.css usercontent.css activate
user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);

// fill svg color
user_pref("svg.context-properties.content.enabled", true);

// enable :has selector
user_pref("layout.css.has-selector.enabled", true);

// integrated calculator at urlbar
user_pref("browser.urlbar.suggest.calculator", true);

// integrated unit convertor at urlbar
user_pref("browser.urlbar.unitConversion.enabled", true);

// trim url
user_pref("browser.urlbar.trimHttps", true);
user_pref("browser.urlbar.trimURLs", true);

// show profile management in hamburger menu
user_pref("browser.profiles.enabled", true);

// gtk rounded corners
user_pref("widget.gtk.rounded-bottom-corners.enabled", true);

// show compact mode
user_pref("browser.compactmode.show", true);

// fix sidebar tab drag on linux
user_pref("widget.gtk.ignore-bogus-leave-notify", 1);

user_pref("browser.tabs.allow_transparent_browser", true);

// uidensity -> compact
user_pref("browser.uidensity", 1);
