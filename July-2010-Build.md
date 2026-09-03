---
layout: page
title: July 2010 Build
---

## Extracting
You will need the following files from the leak to extract this build:

> blobs/  
> &emsp;852_0_90b0fe8e_3a6ea6546058bfe1a396d5167a869f626e26b9118eee9c95594d08e2b87c169f.blob  
> &emsp;852_1_a01c39f7_da7550cef6a7712548aa9fae4b6e04ba0c32597b61b0250882eb8598a5299fda.blob  
> &emsp;852_2_e42966d6_9b1b19edd62f2b03cdba4be3d4b58026185dc833a98666e9100f48e3eb46e2bd.blob  
> dats/  
> &emsp;852_0_678f4a6a_ae227e4c03f23bf10cd2dc3032dd5007c699f761aec9acc63989a95787f22276.dat  
> &emsp;852_1_c1dbae3f_a0a232a33bab2fc8fefcfaa002a4a8f8a4c228d30d17cd8b47c1157de19d49cf.dat  
> &emsp;852_2_e1598c3a_b2cf29ea55a63308ab6f283f2aa9e2c613672cf291ad56cd182e30142869fe4f.dat  
> extractor/  
> &emsp;extractor.exe  

> [!NOTE]
> On Linux you'll need to compile the extractor yourself.

After you have those files, open cmd.exe in the directory you downloaded to. You can run this command to extract:  
`extractor.exe blobs/ dats/ 852 2`

The build should be in a folder named "852_2" after extracting.
## Running
Running hl2.exe directly will NOT work. You need to run it with a few extra arguments.  

**Windows**  
The easiest way to do this on Windows is with a batch script.  
Open Notepad and paste the following in:  
```batch
hl2.exe -game portal2 -tempcontent -console
```
Save the file as "launch.bat" (not txt) right next to hl2.exe, and run the bat file to launch the game.

***

**Linux**  
The easiest way to launch on Linux is to add it as a Non-Steam Game, so that you can run it with Proton. You'll need to add `-game portal2 -tempcontent -console` to the launch options

***

> [!TIP]
> The title screen will say "NO STEAM" and won't let you start a new game. This can be easily bypassed by running `map sp_intro_01` in console.

## Patches
### High CPU Thread Patch
If your CPU has more than 32 threads, the game will fail to launch with an error. This can be fixed by using a [wrapper program](https://mikes.software/threadfix/).  
Place "hl2.wrap.exe" next to "hl2.exe", and make sure to update your "launch.bat" to point to the wrapper file instead.

***
### Missing assets fix
Some maps have missing assets. You can use [this](https://github.com/The-Brickler/p2-gigaleak-wiki/blob/main/files/July2010/portal2julybuildpatch.zip) patch by bruno to fix most of those missing assets.

***
