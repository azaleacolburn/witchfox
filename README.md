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

Extension:

* [Sidebery](https://addons.mozilla.org/en-US/firefox/addon/sidebery)
* [Userchrome Toggle](https://addons.mozilla.org/en-US/firefox/addon/userchrome-toggle/)
* [Firefox Color](https://addons.mozilla.org/en-US/firefox/addon/firefox-color) or [Firefox Theme](https://addons.mozilla.org/en-US/firefox/themes/) 

Download and move the chrome folder and user.js into your profiles root directory (about:profiles > default-release > Root Directory > Open Folder)

## Post Install

- Press ctrl+shift+1 -> toggle sidebar collapsing. 
- Import Sidebery config ( Sidebery Settings > Help > Import addon data )
- Import Firefox Color [Theme](https://color.firefox.com/?theme=XQAAAAJIBAAAAAAAAABBqYhm849SCicxcUcPX38oKRicm6da8pG5gi-DrbS7fiEFLUzDsWXWyUHMSkHZ2PpRK_LvZGTF44fp7VnVXujpkKMjvOWQSIhdK22u1ZG2EgdMyNMx_0oKJ3H9Aulj_W-sLqp3C7P9xxbnSMyQXGvfNmFAc8Mw6b7sZVymuhR0izERZjptFUVqlI0Zglmvbx7Aqqf1yCNtF2ljYjJBJ2zeQ3SGqmjknTFkU7hkVMy3aRrVafVheQXSAb6urDunQ8LZD2shNDvg5bN-ozZG255xn3hB1gfB1yVOKWNg9jJYn6DntzqTwzgEmwpEgPB4NyBczypZzFqtS5oB-cT0e_lH4lrI8tO01TfXk0UUp6n29KfQU8nu5zesYpVUZThdOvZPqE6CpFbMooJ1cL6fU-TdtOGpTkrgd2fzHgwJX6a54v0tN0aHaAQD3jj-0fqNVcm4Lg-8eyxZ09ItqMLD48JaDU9OFPtiCyyvpsoYYfuZf9osapMO72ZS-AfpMq9oF6ZHatA6Xvt7B8-XGebHGtdzq0PHgpkZPu-zwq2PPoCCFGzjkUZVjpBGQm7UXoevFP_2oiQt) (Optional)

### about:config tweaks

`uc.tweak.sidebar-full-collapse` -> arc like fully hidden sidebar when not hovered over

`uc.tweak.sidebar-header` -> show sidebar header

`uc.tweak.wider-sidebar-collapse` -> sidebar is wider when collapsed

`uc.tweak.no-window-controls` -> hide window controls

`uc.tweak.regular-search` -> return url-bar to original state

`uc.tweak.extra-thin-nav-bar` -> make nav-bar extra thin (28px) (requires uidensity=compact)

`uc.tweak.regular-extension-menu` -> bring regular extension menu back

`uc.tweak.translucency` -> **EXPERIMENTAL** blur support  

## Credits

[DatGuyPiko](https://github.com/datguypiko/Firefox-Mod-Blur/tree/master/EXTRA%20MODS/Compact%20extensions%20menu) - compact extensions menu

[KiKaraage](https://github.com/KiKaraage/ArcWTF) - ArcWTF

[Shina-SG](https://github.com/Shina-SG/Shina-Fox) - Shina-Fox

[artsyfriedchicken](https://github.com/artsyfriedchicken/EdgyArc-fr) - EdgyArc-fr
