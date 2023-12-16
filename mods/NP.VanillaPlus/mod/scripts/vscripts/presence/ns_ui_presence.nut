untyped
#if VANILLA
// because we want Northstar to do its thing 
// only run if in vanilla compatibility

globalize_all_functions

// these structs are taken from cl_northstar_client_init
// otherwise, this file is directly the same as 
// the one from Northstar.Client

global struct UIPresenceStruct {
    int gameState
}

global enum eDiscordGameState
{
    LOADING = 0
    MAINMENU
    LOBBY
    INGAME
}

UIPresenceStruct function DiscordRPC_GenerateUIPresence( UIPresenceStruct uis )
{
	if ( uiGlobal.isLoading )
		uis.gameState = eDiscordGameState.LOADING;
	else if ( uiGlobal.loadedLevel == "" )
		uis.gameState = eDiscordGameState.MAINMENU;
	else if ( IsLobby() || uiGlobal.loadedLevel == "mp_lobby" )
		uis.gameState = eDiscordGameState.LOBBY;
	else
		uis.gameState = eDiscordGameState.INGAME;

	return uis
}
#endif