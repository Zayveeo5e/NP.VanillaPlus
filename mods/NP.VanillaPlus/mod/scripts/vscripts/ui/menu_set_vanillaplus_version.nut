untyped
#if VANILLA
// because we want Northstar to do its thing 
// only run if in vanilla compatibility

global function VP_SetVersionLabel

void function VP_SetVersionLabel()
{
        var mainMenu = GetMenu( "MainMenu" ) //Gets main menu element
        var versionLabel = GetElementsByClassname( mainMenu, "nsVersionClass" )[0] //Gets the label from the mainMenu element.
        Hud_SetText( versionLabel, NSGetModVersionByModName("VanillaPlus")) //Sets the label text (Getting version from VanillaPlus)
}
#endif