// ***************************************************************************
// game
// ***************************************************************************

#include <vectrex.h>
#include "utils/menu.h"
#include "crab.h"

// ---------------------------------------------------------------------------
// constant data for square crab_1, one tile
// 7 3 3 7
const struct packet_t vectors_crab[] =
{	
	{DRAW, {   5,    7}},
	{DRAW, {  -2,    3}},
	{DRAW, {   2,    3}},
	{DRAW, {  -5,    7}},

	{DRAW, {   7,   -5}},
	{DRAW, {   3,    2}},
	{DRAW, {   3,   -2}},
	{DRAW, {   7,    5}},

	{DRAW, {  -5,   -7}},
	{DRAW, {   2,   -3}},
	{DRAW, {  -2,   -3}},
	{DRAW, {   5,   -7}},

	{DRAW, {  -7,    5}},
	{DRAW, {  -3,   -2}},
	{DRAW, {  -3,    2}},
	{DRAW, {  -7,   -5}},

	{STOP, {   0,    0}}
};

// ---------------------------------------------------------------------------
// constant data for crab_1 vector list

const struct vector_list_t shape_crab_1 =
{
	.type = PACKET,
	.size = 17,
	.vectors = &vectors_crab
};

// ---------------------------------------------------------------------------
// global variable for crab_1 sprites

struct sprite crab_1 =
{
	.y = -42,
	.x = -128,
	.scale = 150,
	.shape = &shape_crab_1
};


// ---------------------------------------------------------------------------
// constant global array holding (constant) pointers to all crabs
// sorted from upper left to lower right corner (cf. level design sheet)

struct sprite* const crabs[] =
{
	&crab_1
};

// ---------------------------------------------------------------------------
// move crabs across the screen

void move_crabs()
{
	unsigned int i;
	
	// for each crab
	for (i = 0; i < get_num_option(); ++i)
	{
		// update x coordinate
		//crabs[i]->x += ((int) i - 1);
		
		// here, 
		// crab0 will move left:  x += -1;
		// crab1 will not move:	x += 0;
		// crab2 will move right:	x += 1;
	}
}

// ---------------------------------------------------------------------------
// draw crabs on screen

void draw_crabs()
{
	unsigned int i;
	
	// for each crab
	for (i = 0; i < 1; ++i)
	{
		draw_sprite(crabs[i]);
	}
}

// ***************************************************************************
// end of file
// ***************************************************************************

