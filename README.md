# fls-rich-presence
Discord Rich Presence for FL Studio 12, ~~totally not adapted from [cemu-discord-rich-presence](https://github.com/RedDuckss/cemu-discord-rich-presence)~~

![](https://sayakaisbaka.s-ul.eu/vzEJx3bb.png)

## Requirements

- git (https://git-scm.com)
- Node.js (https://nodejs.org/)
- npm (should be included with Node.js)
- Discord and FL Studio (do I really have to say why)

## Setup

```bash
git clone https://github.com/SayakaIsBaka/fls-rich-presence
cd fls-rich-presence
npm install
```
Then, open run.vbs in a text editor and change `path/to/project/index.js` to the path to index.js.

You can run FL Studio with Rich Presence by dragging the FL Studio shortcut or executable to the VBS script, or you can make a shortcut of the VBS script: it takes the path to the FL executable as an argument. You can also modify existing FL Studio shortcuts by adding `path\to\project\folder\run.vbs` before the path to the executable.
Finally, you can just run `node index.js` if FL Studio is already running to have Rich Presence for this session only.

## To do

- Somehow fix the VBS script so you don't have to change the path manually