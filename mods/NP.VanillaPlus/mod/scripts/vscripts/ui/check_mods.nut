untyped

global function CheckModsVanillaPlus_Init

// All of the mod checking/error dialog is taken from halo announcer, shoutout to diqhedd

void function CheckModsVanillaPlus_Init()
{
    // this is just to wait a frame so the game doesn't get upset
    thread CheckForMods()
}

void function CheckForMods()
{
    WaitFrame()

    if (!VANILLA) {
        // Prints an error if the user isn't in vanilla compatibilty mode
        // Mostly to be used with Spectre log reading later (hence the 0)
        printt("VanillaPlus Error 0: Not in vanilla compatibility mode")
        if (GetConVarInt("core_remind") == 1) CoreMods()
    }

    else if (HAS_MORESKINS || HAS_FRAMEWORK) {
        OtherMods()
    }
}

void function OtherMods()
{
    DialogData warnDiag
    warnDiag.header = "Some mods you have installed don't work with VanillaPlus!"

    if (HAS_MORESKINS) {
        ClientCommand("mod_remind 1")
        warnDiag.message = "You have moreskins installed!\n\nThis won't break VanillaPlus, but it won't work on vanilla! Your skins equipped using it will automatically unequip"
    }

    if (HAS_FRAMEWORK) {
        ClientCommand("mod_remind 1")
        warnDiag.message = "You have Titan Framework installed!\n\nIt relies on settings that Northstar has, and requires the server you join to have it, which Respawn's (Vanilla's) never will! Having it enabled WILL break Vanilla!"
    }

    warnDiag.image = $"ui/menu/common/dialog_error"

	AddDialogButton(warnDiag, "OK", void function(){ClientCommand("uiscript_reset"); ClientCommand("mod_remind 0")})
    warnDiag.noChoiceWithNavigateBack = true
    if (GetConVarInt("mod_remind") == 1) {
        OpenDialog(warnDiag)
    }
}

void function CoreMods()
{    
    DialogData coreModWarnDiag
    coreModWarnDiag.header = "Not using vanilla compatibiltiy mode!"

    coreModWarnDiag.message = "You aren't using Northstar's vanilla compatibility mode!\n\nVanillaPlus requires that you follow it's instructions properly to install it!\n\nIgnoring will continue to Northstar servers!"

    coreModWarnDiag.image = $"ui/menu/common/dialog_error"
    AddDialogButton(coreModWarnDiag, "Go to instructions", void function(){
        LaunchExternalWebBrowser("https://northstar.thunderstore.io/package/NanohmProtogen/VanillaPlus/", WEBBROWSER_FLAG_FORCEEXTERNAL); ClientCommand("uiscript_reset"); ClientCommand("core_remind 0")

    })
	AddDialogButton(coreModWarnDiag, "Continue to Northstar servers", void function(){ClientCommand("uiscript_reset"); ClientCommand("core_remind 0")})
    OpenDialog(coreModWarnDiag)
}