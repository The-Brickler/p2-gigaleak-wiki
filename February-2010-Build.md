---
layout: page
title: February 2010 Build
---

## Extracting
You will need the following files from the leak to extract this build:

> blobs/  
> &emsp;841_0_83ced978_8f590c17de5bd8219b6f714a2f2bf5501afe178d3b66fbf295f784196bed2198.blob  
> dats/  
> &emsp;841_0_c29b19b3_881d278ec9e08e76ffff0819538e41cd8cd5721508899d8bf5171e2da496cc51.dat  
> extractor/  
> &emsp;extractor.exe  

> [!NOTE]
> On Linux you'll need to compile the extractor yourself.

After you have those files, open cmd.exe in the directory you downloaded to. You can run this command to extract:  
`extractor.exe blobs/ dats/ 841 0 --blobcrc 83ced978`

The build should be in a folder named "841_0" after extracting.
## Running
For whatever reason, the Feb 2010 build does not come with a hl2.exe file. You'll need to supplement it with your own. You can use any hl2.exe, such as [this one](/The-Brickler/p2-gigaleak-wiki/blob/main/files/Feb2010/hl2.exe). (Taken from retail Portal 1)

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
### High CPU Thread Patch
If your CPU has more than 32 threads, the game will fail to launch with an error. This can be fixed by using a [wrapper program](https://mikes.software/threadfix/).  
Place "hl2.wrap.exe" next to "hl2.exe", and make sure to update your "launch.bat" to point to the wrapper file instead.
