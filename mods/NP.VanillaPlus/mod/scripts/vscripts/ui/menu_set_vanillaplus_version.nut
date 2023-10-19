untyped
#if !HAS_CLIENT && !HAS_CUSTOM && !HAS_CUSTOMSERVERS
// because if we have core mods we wanna have Northstar do its version

global function VP_SetVersionLabel

void function VP_SetVersionLabel()
{
        var mainMenu = GetMenu( "MainMenu" ) //Gets main menu element
        var versionLabel = GetElementsByClassname( mainMenu, "nsVersionClass" )[0] //Gets the label from the mainMenu element.
        Hud_SetText( versionLabel, NSGetModVersionByModName("VanillaPlus")) //Sets the label text (Getting version from VanillaPlus)
}
#endif