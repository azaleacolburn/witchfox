# PotatoFox

![Firefox with Custom CSS applied](Media/Screenshot0.png)

## Compatibility

Tested on Linux, MacOS, and Windows. 

## Features

- collapsing sidebery tabs 
    - with option to fully collapse 
- pop up arc-like url bar
- general visual enhancements  
- custom svg icons for some extensions

## Screenshots

![](./Media/Screenshot1.png)

![](./Media/Screenshot2.png)

![](./Media/Screenshot3.png)

![](./Media/Screenshot4.png)

![](./Media/Screenshot5.png)

## Install Instructions

Required Extension:

* [Sidebery](https://addons.mozilla.org/en-US/firefox/addon/sidebery)
* [Userchrome Toggle Extended](https://addons.mozilla.org/en-US/firefox/addon/userchrome-toggle-extended)
* [Firefox Color](https://addons.mozilla.org/en-US/firefox/addon/firefox-color) (**Strongly** recommend on Linux, otherwise the window controls may look strange)

Open the [releases tab](https://codeberg.org/awwpotato/PotatoFox/releases) and download the correct release for your version of Firefox (Urlbar > about:support > Application Basics > Version). Then copy the chrome directory and user.js file into your Firefox profiles directory (about:support > Application Basics > Profile Directory). Then restart firefox.

## Post Install

- Press `ctrl+shift+1` or `cmd+shift+1` -> toggle sidebar collapsing
- Press `ctrl+shift+2` or `cmd+shift+2` -> toggle floating navbar (requires `uc.tweak.no-window-controls` to be enabled)
- Import Sidebery config ( Sidebery Settings > Help > Import addon data )
- Import Firefox Color [Theme](https://color.firefox.com/?theme=XQAAAAJIBAAAAAAAAABBqYhm849SCicxcUcPX38oKRicm6da8pG5gi-DrbS7fiEFLUzDsWXWyUHMSkHZ2PpRK_LvZGTF44fp7VnVXujpkKMjvOWQSIhdK22u1ZG2EgdMyNMx_0oKJ3H9Aulj_W-sLqp3C7P9xxbnSMyQXGvfNmFAc8Mw6b7sZVymuhR0izERZjptFUVqlI0Zglmvbx7Aqqf1yCNtF2ljYjJBJ2zeQ3SGqmjknTFkU7hkVMy3aRrVafVheQXSAb6urDunQ8LZD2shNDvg5bN-ozZG255xn3hB1gfB1yVOKWNg9jJYn6DntzqTwzgEmwpEgPB4NyBczypZzFqtS5oB-cT0e_lH4lrI8tO01TfXk0UUp6n29KfQU8nu5zesYpVUZThdOvZPqE6CpFbMooJ1cL6fU-TdtOGpTkrgd2fzHgwJX6a54v0tN0aHaAQD3jj-0fqNVcm4Lg-8eyxZ09ItqMLD48JaDU9OFPtiCyyvpsoYYfuZf9osapMO72ZS-AfpMq9oF6ZHatA6Xvt7B8-XGebHGtdzq0PHgpkZPu-zwq2PPoCCFGzjkUZVjpBGQm7UXoevFP_2oiQt) (Optional)

### about:config tweaks

`uc.tweak.sidebar-full-collapse` -> arc like fully hidden sidebar when not hovered over

`uc.tweak.sidebar-header` -> show sidebar header

`uc.tweak.wider-sidebar-collapse` -> sidebar is wider when collapsed

`uc.tweak.no-window-controls` -> hide window controls

`uc.tweak.regular-search` -> return url-bar to original state

`uc.tweak.extra-thick` -> make margin around browser 2px thicker

`uc.tweak.no-panel-hint` -> hide the small bars showing hidden panels

`uc.tweak.translucency` -> **EXPERIMENTAL** translucency support  

## Credits

[KiKaraage](https://github.com/KiKaraage/ArcWTF) - ArcWTF

[Shina-SG](https://github.com/Shina-SG/Shina-Fox) - Shina-Fox

[artsyfriedchicken](https://github.com/artsyfriedchicken/EdgyArc-fr) - EdgyArc-fr

[Naezer](https://github.com/Naezr/ShyFox) - ShyFox
