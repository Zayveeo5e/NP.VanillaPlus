# NP.VanillaPlus
Patch for Northstar.Client to enable client-side mods on official servers.

# THIS HAS A NON-STANDARD INSTALL PROCESS!

# Install

1.) Create a folder in your `Titanfall2 Directory` called `R2Titanfall`

2.) Inside of that folder, create another one called `mods`

3.) Place the `NP.VanillaPlus` folder inside of that folder

4.) Download the latest release of Northstar and unzip it

5.) Navigate into `Northstar/R2Northstar/mods` and copy `Northstar.Client` from there into the `mods` folder of the `R2Titanfall` folder we created earlier

6.) It should look like this
```
Titanfall2
  +R2Titanfall
    +mods
      +Northstar.Client
      +NP.VanillaPlus
```

7.) There are multiple ways you can launch this profile, the most convenient of which will be gone over. You only need to do one of these.

7a.) Add `-northstar -norestrictservercommands -profile=R2Titanfall` as launch options to Titanfall 2 on Steam, then launch Titanfall 2 from Steam (recommended, as this will count hours and achievements, where as a `.bat` won't)

7b.)
- Create a file called `R2Titanfall.txt` in your `Titanfall2` folder, then put the following text in:
```
start NorthstarLauncher.exe -norestrictservercommands -profile=R2Titanfall
```
- Now save it and rename it to `R2Titanfall.bat`

- Double click `R2Titanfall.bat` to launch the Vanilla+ Profile we just made

# Installing mods

An easy way to install mods can be done by simply downloading a mod off of Thunderstore, unzipping the downloaded file, then placing that folder inside the `R2Titanfall/packages` directory. Create it if it doesn't exist.

Alternatively, you can follow the [guide for installing mods in the `mods` directory](https://r2northstar.gitbook.io/r2northstar-wiki/installing-northstar/manual-installation#installing-northstar-mods-manually).

For both ways, remember to also download dependencies listed in the mod page (ignore `Mod Settings` if it's listed)

# Install (Easier Alternative Method)

1.) Download the [latest Release](https://github.com/Zayveeo5e/NP.VanillaPlus/releases/tag/v1.3.2_ns-1.18.2) and unzip it, then put the files from that zip in your `Titanfall2` folder (where the `Titanfall2.exe` is)

2.) Double click `R2Titanfall.bat` to play Vanilla+
