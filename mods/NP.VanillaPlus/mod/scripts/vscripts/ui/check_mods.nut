untyped

global function CheckModsVanillaPlus_Init

// All of the mod checking/error dialog is taken from halo announcer, shoutout to diqhedd

void function CheckModsVanillaPlus_Init()
{
    thread CheckForMods()
}

void function CheckForMods()
{
    WaitFrame()

    if (HAS_CLIENT || HAS_CUSTOM || HAS_CUSTOMSERVERS) {
        if(GetConVarInt("core_remind") == 1) {
            CoreMods()
        }
        else return
    }

    else if (HAS_MORESKINS || HAS_DTFOV || HAS_FRAMEWORK) {
        OtherMods()
    }
}

void function OtherMods()
{
    DialogData warnDiag
    warnDiag.header = "Some mods you have installed don't work with VanillaPlus!"

    if (HAS_DTFOV) {
        ClientCommand("mod_remind 1")
        warnDiag.message = "You have Double Take FOV installed!\n\nDouble Take FOV simply doesn't get changed on Vanilla. It won't stop the game from working, but it won't do anything"
    }

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
    coreModWarnDiag.header = "Northstar core mods installed!"

    coreModWarnDiag.message = "You have core mods installed!\n\nVanillaPlus requires that you follow it's instructions properly to install it!\n\nIgnoring will continue to Northstar servers!"

    coreModWarnDiag.image = $"ui/menu/common/dialog_error"
    AddDialogButton(coreModWarnDiag, "Go to instructions", void function(){
        LaunchExternalWebBrowser("https://northstar.thunderstore.io/package/NanohmProtogen/VanillaPlus/", WEBBROWSER_FLAG_FORCEEXTERNAL); ClientCommand("uiscript_reset"); ClientCommand("core_remind 0")

    })
	AddDialogButton(coreModWarnDiag, "No thanks", void function(){ClientCommand("uiscript_reset"); ClientCommand("core_remind 0")})
    OpenDialog(coreModWarnDiag)
}