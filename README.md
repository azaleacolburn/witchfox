# README

![](Media/Screenshot0.png)

Most of the CSS in this repo comes from other people,
credit to [Shina Fox](https://github.com/Shina-SG/Shina-Fox) for the URL bar animation, 
and credit goes to [u/Tiago2048](https://www.reddit.com/r/FirefoxCSS/comments/19bbdad/bubblecss/) for most of the code 
to make stuff rounded.

Please note this has only been tested on Linux (KDE Plasma), 
and will remove navigation buttons from the top of the window.

## Install Instructions

First download [Sidebery](https://addons.mozilla.org/en-US/firefox/addon/sidebery) or another extension that adds vertical tabs.
Then Install [Firefox Color](https://addons.mozilla.org/en-US/firefox/addon/firefox-color) ([My Color Sceme](https://color.firefox.com/?theme=XQAAAAJIBAAAAAAAAABBqYhm849SCicxcUcPX38oKRicm6da8pG5gi-DrbS7fiEFLUzDsWXWyUHMSkHZ2PpRK_LvZGTF44fp7VnVXujpkKMjvOWQSIhdK22u1ZG2EgdMyNMx_0oKJ3H9Aulj_W-sLqp3C7P9xxbnSMyQXGvfNmFAc8Mw6b7sZVymuhR0izERZjptFUVqlI0Zglmvbx7Aqqf1yCNtF2ljYjJBJ2zeQ3SGqmjknTFkU7hkVMy3aRrVafVheQXSAb6urDunQ8LZD2shNDvg5bN-ozZG255xn3hB1gfB1yVOKWNg9jJYn6DntzqTwzgEmwpEgPB4NyBczypZzFqtS5oB-cT0e_lH4lrI8tO01TfXk0UUp6n29KfQU8nu5zesYpVUZThdOvZPqE6CpFbMooJ1cL6fU-TdtOGpTkrgd2fzHgwJX6a54v0tN0aHaAQD3jj-0fqNVcm4Lg-8eyxZ09ItqMLD48JaDU9OFPtiCyyvpsoYYfuZf9osapMO72ZS-AfpMq9oF6ZHatA6Xvt7B8-XGebHGtdzq0PHgpkZPu-zwq2PPoCCFGzjkUZVjpBGQm7UXoevFP_2oiQt))
or a [Firefox Theme](https://addons.mozilla.org/en-US/firefox/themes/) (less customizable)

Then open about:config and set toolkit.legacyUserProfileCustomizations.stylesheets to true and browser.uidensity to 1.

Then either git clone this repo or download an extract the zip.

If installed Sidebery you can import my config by opening Sidebery settings, going to help,
Import addon data, then select Sidebery-Data.json from the copy of this repo you downloaded.

After all of that you need to go to about:support, then open "Profile Directory".
Once you are there copy the chrome folder into that folder.

Then you can restart Firefox and everything should be applied.

(You can also customize the navbar by right clicking on it and selecting Customize Toolbar).

All of the about: pages will be recolored by following these directions, if you don't want 
that you can delete userContent.css from the chrome directory.
