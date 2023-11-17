# VanillaPlus
Patch for Northstar.Client to enable client-side mods on official servers.

If you're having issues with the mod, please read [FAQ.md](FAQ.md) as most of the common issues can be found there.

# THIS HAS A NON-STANDARD INSTALL PROCESS!

# Installation

## If you installed an older version of the mod, delete it before installing the new one! If you still have a version with `Northstar.Client` installed in the `mods` directory, delete that too!

1.) [Install Northstar](https://r2northstar.gitbook.io/r2northstar-wiki/installing-northstar/basic-setup) if you don't already have it

2.) Create a folder in your [Titanfall2 Directory](https://r2northstar.gitbook.io/r2northstar-wiki/installing-northstar/troubleshooting#game-location) called `R2Titanfall`

3.) Inside of that folder, create a folder called `packages`

4.) Place the unzipped Thunderstore download of VanillaPlus in the `packages` folder

5.) It should look like this
```
Titanfall2
  R2Titanfall
    packages
      NanohmProtogen-VanillaPlus-2.3.0
```

Note that the folder in `packages` is NOT a `.zip` file

6.) There are multiple ways you can launch this profile. You only need to do one of these, and it's recommend you do 6a.

6a.) Add `-northstar -norestrictservercommands -profile=R2Titanfall` as [launch options](https://r2northstar.gitbook.io/r2northstar-wiki/installing-northstar/troubleshooting#launch-opts) to Titanfall 2 on Steam or EA, then launch Titanfall 2 from Steam or EA (recommended, as this will count hours and achievements, where as a `.bat` won't)

6b.)
- Create a file called `R2Titanfall.txt` in your `Titanfall2` folder, then put the following text in:
```
start NorthstarLauncher.exe -norestrictservercommands -profile=R2Titanfall
```
- Now save it and rename it to `R2Titanfall.bat`

- Double click `R2Titanfall.bat` to launch the Vanilla+ profile we just made. Open the EA App first if you use this method, otherwise it most likely won't work

# Installing additional mods

An easy way to install mods can be done by simply downloading a mod off of Thunderstore, unzipping the downloaded file, then placing that folder inside the `R2Titanfall/packages` directory. Create it if it doesn't exist.

Alternatively, you can follow the [guide for installing mods in the `mods` directory](https://r2northstar.gitbook.io/r2northstar-wiki/installing-northstar/manual-installation#installing-northstar-mods-manually).

For both ways, remember to also download dependencies listed in the mod page (ignore `Mod Settings` if it's listed)

# Install (Easier Alternative Method)

1.) Download the [latest GitHub Release](https://github.com/Zayveeo5e/NP.VanillaPlus/releases/latest) and unzip it, then put the files from that zip in your `Titanfall2` folder (where the `Titanfall2.exe` is)

2.) Double click `R2Titanfall.bat` to play Vanilla+. Open the EA App first if you use this method, otherwise it most likely won't work
