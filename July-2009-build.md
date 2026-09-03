---
layout: page
title: July 2009 Build
---

## Nikolan's 852_0 patcher
Nikolan123 has created a wonderful tool that sets extracts and patches this build fully automatically. Check it out [here](https://github.com/nikolan123/portal2-852_0-patcher).

## Extracting
You will need the following files from the leak to extract this build:

> blobs/  
> &emsp;852_0_90b0fe8e_3a6ea6546058bfe1a396d5167a869f626e26b9118eee9c95594d08e2b87c169f.blob  
> dats/  
> &emsp;852_0_678f4a6a_ae227e4c03f23bf10cd2dc3032dd5007c699f761aec9acc63989a95787f22276.dat  
> extractor/  
> &emsp;extractor.exe  

> [!NOTE]
> On Linux you'll need to compile the extractor yourself.

After you have those files, open cmd.exe in the directory you downloaded to. You can run this command to extract:  
`extractor.exe blobs/ dats/ 852 0`

The build should be in a folder named "852_0" after extracting.
## Running
Running hl2.exe directly will NOT work. You need to run it with a few extra arguments.  

**Windows**  
The easiest way to do this on Windows is with a batch script.  
Open Notepad and paste the following in:  
```batch
@echo off
set VGame=%~dp0
set VContent=%~dp0

hl2.exe -game portal2 -tempcontent -console
```
Save the file as "launch.bat" (not txt) right next to hl2.exe, and run the bat file to launch the game.

***

**Linux**  
The easiest way to launch on Linux is to add it as a Non-Steam Game, so that you can run it with Proton. You'll need to add `-game portal2 -tempcontent -console` to the launch options

***

It's recommended to read the rest of this page to see what patches you may need.
## Patches

***
### High CPU Thread Patch
If your CPU has more than 32 threads, the game will fail to launch with an error. This can be fixed by using a [wrapper program](https://mikes.software/threadfix/).  
Place "hl2.wrap.exe" next to "hl2.exe", and make sure to update your "launch.bat" to point to the wrapper file instead.

***

### GLADoS Voice Patch
By default, GLADoS will not have voice lines. This can be fixed by adding this [mapspawn.nut](/The-Brickler/p2-gigaleak-wiki/blob/main/files/July2009/mapspawn.nut) file to portal2/scripts/vscripts/  
(Thanks to ny.bd on Discord for the patch)

***

### Restore missing HL2 Assets
This build does not come with any assets from Half-Life 2, yet the build attempts to use those assets. This results in a lot of missing textures, error models, and especially a lot of "Oh fiddlesticks, what now?"  

The fix for this is to copy over the assets from your copy of HL2 into this build's hl2 folder.  
See [Extracting Assets from HL2](https://github.com/The-Brickler/p2-gigaleak-wiki/wiki/Extracting-Assets-from-HL2) for information on how to do this.

***

### Multiplayer Patches
> [!CAUTION]
> There is inherent risk to playing multiplayer on an old unmaintained build of the Source Engine. Proceed with caution.

There is an excellent guide on setting up multiplayer by KabanFriends, that can be found [here](https://gist.github.com/KabanFriends/0f8d266d8f41a366e53795ba617b16df).

***

### Getting Hammer and HLMV Running
There is an excellent guide on setting up Hammer/HLMV by nikolan, that can be found [here](https://gist.github.com/nikolan123/84be972003eceb3cf4a81caba7857f85).
