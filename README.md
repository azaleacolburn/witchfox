# PotatoFox

![Firefox with Custom CSS applied](Media/Screenshot0.png)

## Compatibility

Tested on Linux, MacOS, and Windows. 

## Features

- collapsing vertical tabs using Sidebery 
- pop-up arc-like urlbar
- option to hide the navbar for a ultra-minimal experience 
- general visual enhancements  
- custom SVG icons for some extensions
- support for vertical tabs on the left or right

## Screenshots

![](./Media/Screenshot1.png)

![](./Media/Screenshot2.png)

![](./Media/Screenshot3.png)

## Install Instructions

Extension:

* [Sidebery](https://addons.mozilla.org/en-US/firefox/addon/sidebery)
* [Userchrome Toggle Extended](https://addons.mozilla.org/en-US/firefox/addon/userchrome-toggle-extended)
* [Firefox Color](https://addons.mozilla.org/en-US/firefox/addon/firefox-color) (optional)

Open the [releases tab](https://codeberg.org/awwpotato/PotatoFox/releases) and download the correct release for your version of Firefox (Urlbar > about:support > Application Basics > Version). Then copy the chrome directory and user.js file into your Firefox profiles directory (about:support > Application Basics > Profile Directory), then restart Firefox.

<details><summary>Advanced (cli) install</summary>

#### Using git
```bash
git clone https://codeberg.org/awwpotato/potatofox.git
cd potatofox
ln -sr user.js chrome ~/.mozilla/firefox/<profile> # Linux
ln -sr user.js chrome ~/Library/Application Support/Firefox/Profiles/<profile> # MacOS 
```
#### Using [Nyoom](https://github.com/ryanccn/nyoom)
```bash
nyoom profile <profile-dir>
nyoom add codeberg:awwpotato/potatofox
nyoom switch potatofox
```
> [!NOTE]
> Make sure to install the required extensions.

</details>

## Post Install

- Press `ctrl+shift+1` or `cmd+shift+1` -> toggle sidebar collapsing
- Press `ctrl+shift+2` or `cmd+shift+2` -> toggle floating navbar 
- Import Sidebery config (Sidebery Settings > Help > Import addon data)
- Import Firefox Color [Theme](https://color.firefox.com/?theme=XQAAAAJIBAAAAAAAAABBqYhm849SCicxcUcPX38oKRicm6da8pEgvcP7a7pcFmVHMnKGm6jV5QPQYrQANhzR11O9Tw1fRvJo5eh5ZmuCGQ8xI22lVcVIhk_XhmurMN0RGDTu_du33lCrsCoX6eXxppKvAcVUBgIrHly78zplSpBiU8Zsa8ZYOk_q92-qmCqlOorFLBmLbpUCl_0HNP99sepSocL7671kbzcmuDP4r2vYcxyQ8NUnR3CYVKGLnIZFXQax_EebWKf5z6zfgknh-VZfnH72sLG9URo022MJMy4kjrHgk1CC1PxqBhOw7sR7CKPFsn8zgHmkgsg6ZrNIrrA_PmiqPgKJ89_WIadSwUppQ9_bJ73DdLr2qyqEJp4Fs1mFVp7le4tDPnSlioTi0cFirhMaZS0RDe71FRJ1slINQT7Vji435P2dLlyn6UnAt_OMXbkvbtz2-uYN2DDn2qZZ_e2cW8RuYbTfyZuvlLanh86dSF_H8OFeEVOayhn3nbmlX2Gw4il7gm-8bgLOCEAbumetDFg12Mkt4bnlOo5NwUaCqIQA5hDlch0Z5oR5W016FDWaeIMDpm5ClqT-8Cep) (Optional)
- about:addons (url) > Userchrome Toggle Extended preferences > General settings > allow multiple styles to be active together, apply changes 


### about:config tweaks 

* `uc.tweak.sidebar-header` -> show sidebar header
* `uc.tweak.sidebar-full-collapse` -> make sidebar fully hidden when collapse (like the hidden navbar)
* `sidebar.position_start` -> whether the sidebar is on the left or right
* `uc.tweak.sidebery-top-navbar` -> move the Sidebery navbar thingy from the bottom to the top
* `uc.tweak.no-window-controls` -> hide window controls
* `uc.tweak.regular-search` -> return urlbar to original state
* `uc.tweak.no-panel-hint` -> hide the small bars showing location of hidden panels
* `uc.tweak.translucency` -> **EXPERIMENTAL** translucency support
* `browser.tabs.allow_transparent_browser` -> allow tab contents to have transparent bg (requires `uc.tweak.translucency`)

## Credits

[KiKaraage](https://github.com/KiKaraage/ArcWTF) - ArcWTF

[Shina-SG](https://github.com/Shina-SG/Shina-Fox) - Shina-Fox

[artsyfriedchicken](https://github.com/artsyfriedchicken/EdgyArc-fr) - EdgyArc-fr

[Naezer](https://github.com/Naezr/ShyFox) - ShyFox
