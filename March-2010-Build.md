---
layout: page
title: March 2010 Build
---

## Extracting
You will need the following files from the leak to extract this build:

> blobs/  
> &emsp;852_0_90b0fe8e_3a6ea6546058bfe1a396d5167a869f626e26b9118eee9c95594d08e2b87c169f.blob  
> &emsp;852_1_a01c39f7_da7550cef6a7712548aa9fae4b6e04ba0c32597b61b0250882eb8598a5299fda.blob  
> dats/  
> &emsp;852_0_678f4a6a_ae227e4c03f23bf10cd2dc3032dd5007c699f761aec9acc63989a95787f22276.dat  
> &emsp;852_1_c1dbae3f_a0a232a33bab2fc8fefcfaa002a4a8f8a4c228d30d17cd8b47c1157de19d49cf.dat  
> extractor/  
> &emsp;extractor.exe  

> [!NOTE]
> On Linux you'll need to compile the extractor yourself.

After you have those files, open cmd.exe in the directory you downloaded to. You can run this command to extract:  
`extractor.exe blobs/ dats/ 852 1`

The build should be in a folder named "852_1" after extracting.
## Running
> [!WARNING]
> This build is particularly unstable, and will require some patches to get working. You should also expect crashes and unbeatable chambers.  

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

## Patches
### Missing startup_loading.vtf
The game will fail to launch due to a missing startup_loading.vtf file. To fix, navigate to portal2/materials/console, create a copy of background01_widescreen.vtf, and rename it to startup_loading.vtf

***
### Missing tempcontent
This build does not come with a portal2_tempcontent folder, which will cause a lot of missing asset issues (especially when paint is involved). You will need to copy the portal2_tempcontent folder over from [February 2010](https://github.com/The-Brickler/p2-gigaleak-wiki/wiki/February-2010-Build) to get it working.

***
### High CPU Thread Patch
If your CPU has more than 32 threads, the game will fail to launch with an error. This can be fixed by using a [wrapper program](https://mikes.software/threadfix/).  
Place "hl2.wrap.exe" next to "hl2.exe", and make sure to update your "launch.bat" to point to the wrapper file instead.

***
### Paint Gun Material Fix
> [!NOTE]
> If you copied over February 2010's tempcontent folder in a previous step, this is unnecessary.

While the Paint Gun exists in this build, it does not have any textures. Extract [this](https://github.com/The-Brickler/p2-gigaleak-wiki/blob/main/files/Mar2010/Weaponizer%20Fix.rar) to the build to restore the textures. (Assets taken from February 2010 build, packaged by ellieredpanda)

***
### Missing Paint Particles
> [!NOTE]
> If you copied over February 2010's tempcontent folder in a previous step, this is unnecessary.

This build by default is missing the particles for paint. This causes it to show up as a bunch of red Xs, that can very easily overload and crash the game.

The easiest fix is to just turn off particles by running `r_drawparticles 0` in console.

To fix it permanently without disabling particles, copy over February 2010's tempcontent folder.
