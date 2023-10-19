untyped
#if !HAS_CLIENT && !HAS_CUSTOM && !HAS_CUSTOMSERVERS

globalize_all_functions

// this struct is taken from cl_northstar_client_init
// otherwise, this file is directly the same as 
// the one from Northstar.Client

struct UIPresenceStruct {
	bool isLoading
	bool isLobby
	string loadingLevel
	string loadedLevel
}

void function NorthstarCodeCallback_GenerateUIPresence() {
	UIPresenceStruct uis

	uis.isLoading = uiGlobal.isLoading
	uis.isLobby = IsLobby()
	uis.loadingLevel = uiGlobal.loadingLevel
	uis.loadedLevel = uiGlobal.loadedLevel
	NSPushUIPresence(uis)
}
#endif