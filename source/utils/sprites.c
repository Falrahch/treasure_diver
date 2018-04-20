// ***************************************************************************
// sprites
// ***************************************************************************

#include <vectrex.h>
#include "sprites.h"
#include "utils.h"

// ---------------------------------------------------------------------------
// scale factor used for all absolute sprite coordinates

const unsigned int grid_scale = 110;

// ---------------------------------------------------------------------------
// position vector beam at absolute sprite coordinates

/*static inline void position_beam(int y, int x)
{
	reset_beam();
	move_beam(y, x, grid_scale);
}*/

// ---------------------------------------------------------------------------
// draw sprite on screen

void draw_sprite(const struct sprite* s) 
{
	position_beam(s->y, s->x);

	switch(s->shape->type)
	{
	case PACKET:
		Draw_VLp_b(s->scale, s->shape->vectors);
		break;
	case DIFFY:
		Draw_VL_ab(s->shape->size - 1, s->scale, s->shape->vectors);
		break;
	default:
		Mov_Draw_VL_ab(s->shape->size - 1, s->scale, s->shape->vectors);
	}
}

// ***************************************************************************
// end of file
// ***************************************************************************
