---
layout: page
title: Extracting Assets from HL2
---


## Why do I need to do this?
Some builds, especially older ones, utilize a lot of assets from Half-Life 2. These assets are not bundled in with any of the builds, so they show up as ERROR models, missing textures, and the dreaded "Oh fiddlesticks, what now?"

Importing these assets from your own copy of HL2 or Portal can restore most of these missing assets.

> [!TIP]
> Portal contains all of HL2's assets, so you can use either one for this guide.

## Prerequisites
You will need the following to follow this guide:
* [Half-Life 2](https://store.steampowered.com/app/220/HalfLife_2/) OR [Portal](https://store.steampowered.com/app/400/Portal/)
* [VPKEdit](https://github.com/craftablescience/VPKEdit/releases)

## Extraction
Most Source games after the SteamPipe update store their assets in [VPK](https://developer.valvesoftware.com/wiki/VPK_(file_format)) files. You can think of these like ZIP files containing all the assets, and VPKEdit is the tool used to extract them.

Since all of these builds predate the SteamPipe update, they are incapable of reading these VPK files so they must be extracted.

Navigate to your source game's directory. This can be done easily by right-clicking the game in your Steam library, and clicking "Manage > Browse local files". Open the `hl2` directory, and you should see a bunch of files. 

There are three files you need to extract using VPKEdit:
* hl2_misc_dir.vpk
* hl2_sound_misc_dir.vpk
* hl2_textures_dir.vpk

After extracting, you should be left with something like this:

![An example image of the extracted HL2 assets](https://github.com/The-Brickler/p2-gigaleak-wiki/blob/main/files/WikiAssets/hl2_extracted.png)

If you instead have folders named things like "hl2_misc" or "hl2_textures", make sure to move everything out of those folders and next to each other.

Finally, copy these extracted files over to your desired build's hl2 folder.

> [!NOTE]
> You probably want to copy over the `scripts` folder from HL2/Portal as well

## Mounting the HL2 Assets
Even if you mount the files, they game still might not see them. You'll have to tell the game where to find them. In your build, open the `portal2` folder, and edit GameInfo.txt.

Below the line that says `Game				|gameinfo_path|.`, add a new line that says `Game				hl2`

### Updating `game_sounds_manifest.txt`
Open `hl2/scripts/game_sounds_manifest.txt`, and copy everything between the curly braces `{}`. Now open `portal2/scripts/game_sounds_manifest.txt` and paste everything you copied at the end of the file, but before the closing brace `}`.

Finally, open the game and run `snd_rebuildaudiocache`, and you _should_ be done!


(Thanks to cocoelacanth on Discord for figuring this out)
