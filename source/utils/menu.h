// ***************************************************************************
// game selection menu
// ***************************************************************************

#pragma once
#include <vectrex.h>

// ---------------------------------------------------------------------------
// game menu for selecting the desired number of players and the game option

static inline void game_menu(unsigned int max_players, unsigned int max_option)
{
	Select_Game(max_players, max_option);
}

// ---------------------------------------------------------------------------
// get selected number of players after game menu call

static inline unsigned int get_num_players()
{
	return Vec_Num_Players;
}

// ---------------------------------------------------------------------------
// get selected option number after game menu call

static inline unsigned int get_num_option()
{
	return Vec_Num_Game;
}

// ***************************************************************************
// end of file
// ***************************************************************************
