// ***************************************************************************
// game
// ***************************************************************************

#include <vectrex.h>

#include "utils/menu.h"
#include "utils/controller.h"
#include "utils/print.h"

#include "player.h"
#include "rocks.h"
#include "crab.h"
#include "ether.h"

// ---------------------------------------------------------------------------
// game menu where the number of players and the game option can be selected

void game_options()
{
	// specify maximum values and call system menu
	game_menu(1 /* max_players */, 3 /* max_options */);
	
	// in this example, the option number will determine the number of obstacles
}

// ---------------------------------------------------------------------------
// game setup, things which need to be done once at the beginning of each game

void game_init()
{
	// activate first joystick, switch of second joystick
	enable_controller_1_x();
	enable_controller_1_y();
	disable_controller_2_x();
	disable_controller_2_y();
	
	// initialize data
	init_player();
	//init_rocks();
	
	// show start up message for 1.5 seconds
	unsigned int t = 75;
	while(--t > 0)
	{
		Wait_Recal();
		Reset0Ref();
		print_str(0, -60, "GET READY");
	}
}

// ---------------------------------------------------------------------------
// main game loop, this is where the action happens

void game_loop()
{
	int player_alive = 1;
	
	// as long as player is alive
	while(player_alive)
	{
		// synchronize loop
		Wait_Recal();	
		
		// compute movements
		move_player();
		move_rocks();
		
		// draw everything
		draw_player();
		draw_rocks();
		draw_crabs();
		draw_ether();

		// animation
		animate_ether();

		// pickup
		check_ether_pickup();
		
		// check fpr collisions
		player_alive = check_enemy_collision();

		Intensity_5F();
	}
}

// ---------------------------------------------------------------------------
// R.I.P.

void game_over()
{
	// show good bye message for 3 seconds
	unsigned int t = 150;
	while(--t > 0)
	{
		Wait_Recal();
		Reset0Ref();
		print_str(0, -70, "GAME OVER");
		reset_ether();
	}
}

// ---------------------------------------------------------------------------
// game cycle

int game()
{
	//game_options();
	game_init();
	game_loop();
	game_over();
	return 0;	
}

// ***************************************************************************
// end of file
// ***************************************************************************
