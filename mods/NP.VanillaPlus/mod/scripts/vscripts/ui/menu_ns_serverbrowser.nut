untyped
// Only way to get Hud_GetPos(sliderButton) working was to use untyped

global function AddNorthstarServerBrowserMenu

// Stop peeking

const int BUTTONS_PER_PAGE = 15 // Number of servers we show
const float DOUBLE_CLICK_TIME_MS = 0.4 // Max time between clicks for double click registering 

// Stores mouse delta used for scroll bar
struct {
	int deltaX = 0
	int deltaY = 0
} mouseDeltaBuffer

// Filters
struct {
	bool hideFull = false
	bool hideEmpty = false
	bool hideProtected = false
	bool useSearch = false
	string searchTerm
	array<string> filterMaps
	string filterMap
	array<string> filterGamemodes
	string filterGamemode
} filterArguments


enum sortingBy
{
	NONE,
	DEFAULT,
	NAME,
	PLAYERS,
	MAP,
	GAMEMODE,
	REGION
}

// Column sort direction, only one of these can be aplied at once
struct {
	// true = alphabeticaly false = reverse
	bool serverName = true
	bool serverPlayers = true
	bool serverMap = true
	bool serverGamemode = true
	bool serverRegion = true
	// 0 = none; 1 = default; 2 = name; 3 = players; 4 = map; 5 = gamemode; 6 = region
	int sortingBy = 1
} filterDirection

struct serverStruct {
	int serverIndex
	bool serverProtected
	string serverName
	int serverPlayers
	int serverPlayersMax
	string serverMap
	string serverGamemode
	string serverRegion
}

struct {
	// UI state vars
	var menu
	int focusedServerIndex = 0
	int scrollOffset = 0
	bool serverListRequestFailed = false
	float serverSelectedTime = 0
	float serverSelectedTimeLast = 0
	int serverButtonFocusedID = 0
	bool shouldFocus = true
	bool cancelConnection = false
	
	// filtered array of servers
	array<serverStruct> serversArrayFiltered

	array<ServerInfo> filteredServers
	ServerInfo& focusedServer
	ServerInfo& lastSelectedServer
	
	// UI references
	array<var> serverButtons
	array<var> serversName
	array<var> playerCountLabels
	array<var> serversProtected
	array<var> serversMap
	array<var> serversGamemode
	array<var> serversRegion

	array< void functionref( ServerInfo ) > connectCallbacks
} file



bool function FloatsEqual( float arg1, float arg2, float epsilon )
{
	if ( fabs( arg1 - arg2 ) < epsilon ) return true
	
	return false
}


////////////////////////////
// Init
////////////////////////////
void function AddNorthstarServerBrowserMenu()
{
	return
}
