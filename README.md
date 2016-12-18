# Factorio Screenshot Mod

##Instructions

1. Place `control.lau` and `info.json` in `\factorio\mods\screenshot_0.1.1\`

2. Replace `\factorio\mods\mod-list.json`

3. `\factorio\bin\x64\factorio --load-game <path to game save>.zip`

4. Run `combine_images.sh` in `\factorio\script-output\` to render the final output

##Notes

Game save must have been loaded before

Mod will take a tiled screenshot at the dimensions specified in the top of control.lua on game launch

I'm using Factorio version 13.20
