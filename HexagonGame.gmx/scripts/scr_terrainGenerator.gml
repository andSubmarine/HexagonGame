// Calculates the center point based on the highest tile
/* global.tileArray[q,r] */
lenQ = array_height_2d(global.tileArray) - 1;
len = array_length_2d(global.tileArray,lenQ)-1;

cq = lenQ / 2;
cr = len / 2;

// Creates a new center point tile object on the position of the center tile (replacement)
cx = global.tileArray[cq,cr].x;
cy = global.tileArray[cq,cr].y;
cTile = instance_create(cx,cy,obj_tile_cp);
with(cTile) {
    self.q = other.cq;
    self.r = other.cr;   
}
global.tileArray[cq,cr] = cTile;

// Creates terrain based on the size of the land:
landsize = floor(cq / 2) * 100;
i = 0;
for (q = 0; q <= lenQ - 1; q++) {
    lenR = array_length_2d(global.tileArray,q);
    for (r = 0; r <= lenR - 1; r++) {
        tile = global.tileArray[q,r];
        dist = point_distance(cx,cy,tile.x,tile.y);
        if (dist + 10 < landsize) {
            if (dist > 10) {
                tTile = instance_create(tile.x,tile.y,obj_tile_terrain);
                with(tTile) {
                    self.q = other.q;
                    self.r = other.r;   
                }
                global.tileArray[q,r] = tTile;
            }
            i++;
        }
    }
}
show_message(string(i));
