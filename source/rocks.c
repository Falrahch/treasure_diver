// ***************************************************************************
// game
// ***************************************************************************

#include <vectrex.h>
#include "utils/menu.h"
#include "rocks.h"

// ---------------------------------------------------------------------------
// constant data for square rock_1t, one tile

const struct packet_t vectors_rock_1t[] =
{	
	{DRAW, {  20,    0}},
	{DRAW, {   0,   20}},
	{DRAW, { -20,    0}},
	{DRAW, {   0,  -20}},
	{STOP, {   0,    0}}
};

// ---------------------------------------------------------------------------
// constant data for rock_1t vector list

const struct vector_list_t shape_rock_1t =
{
	.type = PACKET,
	.size = 5,
	.vectors = &vectors_rock_1t
};

// ---------------------------------------------------------------------------
// global variable for rock_1t sprites

struct sprite rock_1t_1 =
{
	.y = 63,
	.x = -128,
	.scale = 150,
	.shape = &shape_rock_1t
};

struct sprite rock_1t_2 =
{
	.y = 90,
	.x = -128,
	.scale = 150,
	.shape = &shape_rock_1t
};

struct sprite rock_1t_3 =
{
	.y = 90,
	.x = -101,
	.scale = 150,
	.shape = &shape_rock_1t
};

struct sprite rock_1t_4 =
{
	.y = 63,
	.x = -101,
	.scale = 150,
	.shape = &shape_rock_1t
};





// ---------------------------------------------------------------------------
// constant data for horizontal rock_2t_h, two tiles

const struct packet_t vectors_rock_2t_h[] =
{	
	{DRAW, {  20,    0}},
	{DRAW, {   0,   40}},
	{DRAW, { -20,    0}},
	{DRAW, {   0,  -40}},
	{MOVE, {   0,   20}},
	{DRAW, {  20,    0}},
	{STOP, {   0,    0}}
};

// ---------------------------------------------------------------------------
// constant data for rock_2t vector list

const struct vector_list_t shape_rock_2t_h =
{
	.type = PACKET,
	.size = 7,
	.vectors = &vectors_rock_2t_h
};

// ---------------------------------------------------------------------------
// global variable for rock_2t sprites

struct sprite rock_2t_h =
{
	.y = -70,
	.x = -128,
	.scale = 150,
	.shape = &shape_rock_2t_h
};







// ---------------------------------------------------------------------------
// constant data for horizontal rock_3t_h, three tiles

const struct packet_t vectors_rock_3t_h[] =
{	
	{DRAW, {  20,    0}},
	{DRAW, {   0,   60}},
	{DRAW, { -20,    0}},
	{DRAW, {   0,  -60}},
	{MOVE, {   0,   20}},
	{DRAW, {  20,    0}},
	{MOVE, {   0,   20}},
	{DRAW, { -20,    0}},
	{STOP, {   0,    0}}
};

// ---------------------------------------------------------------------------
// constant data for rock_3t_h vector list

const struct vector_list_t shape_rock_3t_h =
{
	.type = PACKET,
	.size = 9,
	.vectors = &vectors_rock_3t_h
};

// ---------------------------------------------------------------------------
// global variable for rock_3t_h sprites

struct sprite rock_3t_h =
{
	.y = 0,
	.x = 127,
	.scale = 150,
	.shape = &shape_rock_3t_h
};










// ---------------------------------------------------------------------------
// constant data for corner rock_3t_c, three tiles

const struct packet_t vectors_rock_3t_c[] =
{	
	{DRAW, {  20,    0}},
	{DRAW, {   0,   40}},
	{DRAW, {  20,    0}},
	{DRAW, {   0,  -20}},
	{DRAW, { -40,    0}},
	{MOVE, {  20,   20}},
	{DRAW, { -20,    0}},
	{DRAW, {   0,  -40}},
	{STOP, {   0,    0}}
};

// ---------------------------------------------------------------------------
// constant data for rock_3t_c vector list

const struct vector_list_t shape_rock_3t_c =
{
	.type = PACKET,
	.size = 9,
	.vectors = &vectors_rock_3t_c
};

// ---------------------------------------------------------------------------
// global variable for rock_3t_c sprites

struct sprite rock_3t_c =
{
	.y = 0,
	.x = 12,
	.scale = 150,
	.shape = &shape_rock_3t_c
};











// ---------------------------------------------------------------------------
// constant data for square rock, four tiles

const struct packet_t vectors_rock4t_s[] =
{	
	{DRAW, {  40,    0}},
	{DRAW, {   0,   40}},
	{DRAW, { -40,    0}},
	{DRAW, {   0,  -40}},
	{MOVE, {  20,    0}},
	{DRAW, {   0,   40}},
	{MOVE, {  20,  -20}},
	{DRAW, { -40,    0}},
	{STOP, {   0,    0}}
};

// ---------------------------------------------------------------------------
// constant data for rock0 vector list

const struct vector_list_t shape_rock4t_s =
{
	.type = PACKET,
	.size = 9,
	.vectors = &vectors_rock4t_s
};

// ---------------------------------------------------------------------------
// global variable for rock0 sprite

struct sprite rock4t_s =
{
	.y = 70,
	.x = -128,
	.scale = 150,
	.shape = &shape_rock4t_s
};












// ---------------------------------------------------------------------------
// constant data for reverse L-shaped rock, four tiles

const struct packet_t vectors_rock_4t_L[] =
{	
	{DRAW, {  20,    0}},
	{DRAW, {   0,   20}},
	{DRAW, {  40,    0}},
	{DRAW, {   0,   20}},
	{DRAW, { -60,    0}},
	{DRAW, {   0,  -40}},
	{MOVE, {   0,   20}},
	{DRAW, {  20,    0}},
	{DRAW, {   0,   20}},
	{MOVE, {  20,    0}},
	{DRAW, {   0,  -20}},
	{STOP, {   0,    0}}
};

// ---------------------------------------------------------------------------
// constant data for rock_4t_L vector list

const struct vector_list_t shape_rock_4t_L =
{
	.type = PACKET,
	.size = 12,
	.vectors = &vectors_rock_4t_L
};

// ---------------------------------------------------------------------------
// global variable for rock_4t_L sprite

struct sprite rock_4t_L =
{
	.y = 0,
	.x = 0,
	.scale = 150,
	.shape = &shape_rock_4t_L
};










// ---------------------------------------------------------------------------
// constant data for big rock, five tiles

const struct packet_t vectors_rock_5t[] =
{	
	{DRAW, {   0,   40}},
	{DRAW, {  40,    0}},
	{DRAW, {   0,  -60}},
	{DRAW, { -20,    0}},
	{DRAW, {   0,   60}},
	{MOVE, {  20,  -20}},
	{DRAW, { -40,    0}},
	{MOVE, {   0,  -20}},
	{DRAW, {  40,    0}},
	{STOP, {   0,    0}}
};

// ---------------------------------------------------------------------------
// constant data for rock_5t vector list

const struct vector_list_t shape_rock_5t =
{
	.type = PACKET,
	.size = 10,
	.vectors = &vectors_rock_5t
};

// ---------------------------------------------------------------------------
// global variable for rock_5t sprite

struct sprite rock_5t =
{
	.y = -30,
	.x = 50,
	.scale = 150,
	.shape = &shape_rock_5t
};










// ---------------------------------------------------------------------------
// constant global array holding (constant) pointers to all rocks
// sorted from upper left to lower right corner (cf. level design sheet)

struct sprite* const rocks[] =
{
	//&rock4t_s,
	&rock_1t_1,
	&rock_1t_2,
	&rock_1t_3,
	&rock_1t_4,
	&rock_2t_h,
	&rock_5t
};

// ---------------------------------------------------------------------------
// move rocks across the screen

void move_rocks()
{
	unsigned int i;
	
	// for each rock
	for (i = 0; i < get_num_option(); ++i)
	{
		// update x coordinate
		//rocks[i]->x += ((int) i - 1);
		
		// here, 
		// rock0 will move left:  x += -1;
		// rock1 will not move:	x += 0;
		// rock2 will move right:	x += 1;
	}
}

// ---------------------------------------------------------------------------
// draw rocks on screen

void draw_rocks()
{
	unsigned int i;
	
	// for each rock
	for (i = 0; i < no_of_rocks; ++i)
	{
		draw_sprite(rocks[i]);
	}
}

// ***************************************************************************
// end of file
// ***************************************************************************

