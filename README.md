# fls-rich-presence
Discord Rich Presence for FL Studio 12, ~~totally not adapted from [cemu-discord-rich-presence](https://github.com/RedDuckss/cemu-discord-rich-presence)~~

![](https://sayakaisbaka.s-ul.eu/vzEJx3bb.png)

## Requirements

- git (https://git-scm.com) (Optional)
- Node.js 8 (https://nodejs.org/)
- npm (should be included with Node.js)
- Discord and FL Studio (do I really have to say why)
- Powershell (to create the shortcuts, should be installed by default if you use Windows 7 SP1 or higher)

## Setup

```bash
git clone https://github.com/SayakaIsBaka/fls-rich-presence (or download the repo and extract it)
cd fls-rich-presence
npm install
```

Then, run `create_shortcut.bat` to create shortcuts to run FL Studio with Rich Presence; they will be placed on your Desktop and don't replace your existing shortcuts.

(Technical note: I used a batch script to run the Powershell script to be able to bypass the execution policy, which is set to Restricted by default (Restricted mode doesn't let you run scripts))

## Issues

- Rich Presence may stop displaying after some time

If you encounter any issues during installation or after, please contact me at **Sayaka / 黒皇帝#9053** on Discord (I don't guarantee that I'll be able to help but I'll still try my best!)

## Credits

- winprocess by Zysen: https://github.com/Zysen/node-winprocess
- discord-rpc by snek: https://github.com/discordjs/RPC
