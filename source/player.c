// ***************************************************************************
// player
// ***************************************************************************

#include <vectrex.h>

#include "utils/sprites.h"
#include "utils/controller.h"
#include "utils/menu.h"

#include "player.h"
#include "rocks.h"
#include "crab.h"
#include "ether.h"

// ---------------------------------------------------------------------------
// constant data for the player's vectors
// 5 5 10 15 (x) 10 5 5

const struct packet_t vectors_player[] =
{
	{DRAW, {   5,   10}},
	{DRAW, {  10,    5}},
	{DRAW, {   0,    5}},
	{DRAW, {  15,    0}},
	{DRAW, {   0,   -5}},
	{DRAW, {  10,   -5}},
	{DRAW, {   5,  -10}},
	{DRAW, {   5,    0}},
	{DRAW, {   0,  -15}},
	{DRAW, {  -5,    0}},
	{DRAW, {  -5,  -10}},
	{DRAW, { -10,   -5}},
	{DRAW, {   0,   -5}},
	{DRAW, { -15,    0}},
	{DRAW, {   0,    5}},
	{DRAW, { -10,    5}},
	{DRAW, {  -5,   10}},
	{DRAW, {   0,   15}},
	{MOVE, {  16,    2}},
	{DRAW, {  11,    0}},
	{DRAW, {   4,   -4}},
	{DRAW, {   0,  -11}},
	{DRAW, {  -4,   -4}},
	{DRAW, { -11,    0}},
	{DRAW, {  -4,    4}},
	{DRAW, {   0,   11}},
	{DRAW, {   4,    4}},
	{STOP, {   0,    0}}
};

// ---------------------------------------------------------------------------
// constant data for the player's vector list

const struct vector_list_t shape_player =
{
	.type = PACKET,
	.size = 28,
	.vectors = &vectors_player
};

// ---------------------------------------------------------------------------
// global variable for the player's sprite

struct sprite player =
{
	.y = 0,
	.x = 0,
	.scale = 0,
	.shape = &shape_player
};

// ---------------------------------------------------------------------------
// global variable for the player's actual and second last position



// ---------------------------------------------------------------------------
// set random position at game start

void init_player()
{
	player.y = (int) 100;
	player.x = (int) 0;
	player.scale = 50;
}

// ---------------------------------------------------------------------------
// control player with joystick 1

void move_player()
{
	// read joystick values
	check_joysticks();
	
	// x movement
	if (joystick_1_left())
	{
		if(check_rock_collision() && player.x >= -120)
			player.x -= 2;
		else
			player.x += 2;
	}
	else if (joystick_1_right())
	{
		if(check_rock_collision() && player.x <= 125)
			player.x += 2;
		else
			player.x -= 2;
	}
	
	// y movement
	if (joystick_1_up())
	{
		if(check_rock_collision() && player.y <= 100)
			player.y += 2;
		else
			player.y -= 2;
	}
	else if (joystick_1_down())
	{
		if(check_rock_collision() && player.y >= -126)
			player.y -= 2;
		else
			player.y += 2;
	}
	
	// read buttons
	check_buttons();
	
	// just some fun, rotate player with buttons 3 + 4
	if (button_1_4_held())
	{
		;
	}
	else if (button_1_3_held())
	{
		;
	}

	// just some fun, scale player with buttons 1 + 2
	if (button_1_2_held())
	{
		;
	}
	else if (button_1_1_held())
	{
		;
	}
}

// ---------------------------------------------------------------------------
// draw player on screen

void draw_player()
{
	draw_sprite(&player);
}

// ---------------------------------------------------------------------------
// throw grappling hook
void throw_grappling_hook()
{
	unsigned int i;

	for(i = 1; i <= 30; ++i)
	{
		
	}
}

// ---------------------------------------------------------------------------
// check for ether collisions

void check_ether_pickup()
{
	unsigned int i;
	
	// for all ehter
	for (i = 0; i < no_of_ether; ++i)
	{
		// check is player coordinates are within ether range
		if (((player.x - 22) < (ether[i]->x + 3)) &&
			((player.x +  8) > (ether[i]->x - 3)) && 
			((player.y - 13) < (ether[i]->y + 12)) &&
			((player.y + 25) > (ether[i]->y)))
		{
			ether[i]->scale = 0;
		}				
	}
}

// ---------------------------------------------------------------------------
// check for collisions with crabs, which would kill

int check_enemy_collision()
{
	unsigned int i;
	
	// for all crabs
	for (i = 0; i < 1; ++i)
	{
		// check is player coordinates are within crab range
		if (((player.x - 23) < (crabs[i]->x + 20)) &&
			((player.x +  8) > (crabs[i]->x)) && 
			((player.y - 10) < (crabs[i]->y + 20)) &&
			((player.y + 22) > (crabs[i]->y)))
		{
			// collision
			return 0;
		}				
	}
	// no collision
	return 1;
}

// ---------------------------------------------------------------------------
// check for collisions with rocks

int check_rock_collision()
{
	unsigned int i;
	
	// for all crabs
	for (i = 0; i < no_of_rocks; ++i)
	{
		// check is player coordinates are within crab range
		if (((player.x - 26) < (rocks[i]->x + 20)) &&
			((player.x + 12) > (rocks[i]->x)) && 
			((player.y - 10) < (rocks[i]->y + 20)) &&
			((player.y + 22) > (rocks[i]->y)))
		{
			// collision
			return 0;
		}				
	}
	// no collision
	return 1;
}
	
// ***************************************************************************
// end of file
// ***************************************************************************

