// ***************************************************************************
// game
// ***************************************************************************

#include <vectrex.h>
#include "utils/menu.h"
#include "ether.h"

unsigned int position = 1;
unsigned int frame_cnt = 0;
unsigned int cycle_cnt = 0;

// ---------------------------------------------------------------------------
// constant data for square ether_1t, one tile
// 7 3 3 7
const struct vector_t vectors_ether[] =
{	
	{   6,    3},
	{   6,   -3},
	{  -6,   -3},
	{  -6,    3}
};

// ---------------------------------------------------------------------------
// constant data for ether_1t vector list

const struct vector_list_t shape_ether =
{
	.type = DIFFY,
	.size = 4,
	.vectors = &vectors_ether
};

// ---------------------------------------------------------------------------
// global variable for ether_1t sprites

struct sprite ether_1 =
{
	.y = 10,
	.x = -110,
	.scale = 150,
	.shape = &shape_ether
};

struct sprite ether_2 =
{
	.y = 20,
	.x = -90,
	.scale = 150,
	.shape = &shape_ether
};

struct sprite ether_3 =
{
	.y = 10,
	.x = -70,
	.scale = 150,
	.shape = &shape_ether
};

struct sprite ether_4 =
{
	.y = 20,
	.x = -50,
	.scale = 150,
	.shape = &shape_ether
};


// ---------------------------------------------------------------------------
// constant global array holding (constant) pointers to all ether
// sorted from upper left to lower right corner (cf. level design sheet)

struct sprite* const ether[] =
{
	&ether_1,
	&ether_2,
	&ether_3,
	&ether_4,
};

// ---------------------------------------------------------------------------
// move ether across the screen

void animate_ether()
{
	unsigned int i;
	
	if(cycle_cnt == 10)
	{
		if(position)
		{
			frame_cnt++;
			// for each ether
			for (i = 0; i < 4; ++i)
			{
				ether[i]->y += 1;
			}
			if(frame_cnt == 5)
				position = 0;
		}
		else
		{
			frame_cnt--;
			// for each ether
			for (i = 0; i < 4; ++i)
			{
				ether[i]->y -= 1;
			}
			if(frame_cnt == 0)
				position = 1;
		}

		cycle_cnt = 0;
	}
	else
		cycle_cnt += 1;
}

// ---------------------------------------------------------------------------
// draw ether on screen

void draw_ether()
{
	unsigned int i;
	
	// for each ether
	for (i = 0; i < no_of_ether; ++i)
	{
		if(ether[i]->scale == 150)
			draw_sprite(ether[i]);
	}
}


// ---------------------------------------------------------------------------
// reset ether to be drawn again
void reset_ether()
{
	unsigned int i;
	
	// for each ether
	for (i = 0; i < no_of_ether; ++i)
	{
		ether[i]->scale = 150;
	}
}

// ***************************************************************************
// end of file
// ***************************************************************************

