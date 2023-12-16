untyped
#if VANILLA
// because we want Northstar to do its thing 
// only run if in vanilla compatibility

globalize_all_functions

// this struct is taken from cl_northstar_client_init
// otherwise, this file is directly the same as 
// the one from Northstar.Client

global struct GameStateStruct {

    string map
    string mapDisplayname

    string playlist
    string playlistDisplayname

    int currentPlayers
    int maxPlayers
    int ownScore
    int otherHighestScore
    int maxScore
    float timeEnd
}

GameStateStruct function DiscordRPC_GenerateGameState( GameStateStruct gs )
{
    int highestScore = 0
    int secondHighest = 0

    foreach ( player in GetPlayerArray() )
    {
        if ( GameRules_GetTeamScore( player.GetTeam() ) >= highestScore )
        {
            highestScore = GameRules_GetTeamScore( player.GetTeam() )
        }
        else if ( GameRules_GetTeamScore( player.GetTeam() ) > secondHighest )
        {
            secondHighest = GameRules_GetTeamScore( player.GetTeam() )
        }
    }

    gs.map = GetMapName()
    gs.mapDisplayname = Localize(GetMapDisplayName(GetMapName()))

    gs.playlist = GetCurrentPlaylistName()
    gs.playlistDisplayname = Localize(GetCurrentPlaylistVarString("name", GetCurrentPlaylistName()))

    gs.currentPlayers = GetPlayerArray().len()
    gs.maxPlayers = GetCurrentPlaylistVarInt( "maxPlayers", -1 )

    if ( IsValid( GetLocalClientPlayer() ) )
		gs.ownScore = GameRules_GetTeamScore( GetLocalClientPlayer().GetTeam() )

    gs.otherHighestScore = gs.ownScore == highestScore ? secondHighest : highestScore

    gs.maxScore = IsRoundBased() ? GetCurrentPlaylistVarInt( "roundscorelimit", 0 ) : GetCurrentPlaylistVarInt( "scorelimit", 0 )

	if ( GetServerVar( "roundBased" ) )
		gs.timeEnd = expect float(level.nv.roundEndTime - Time())
	else
		gs.timeEnd = expect float(level.nv.gameEndTime - Time())
    return gs
}
#endif