// Calculates the center point based on the highest tile
/* global.tileArray[q,r] */
lenQ = array_height_2d(global.tileArray) - 1;
len = array_length_2d(global.tileArray,lenQ)-1;

global.cq = lenQ / 2;
global.cr = len / 2;

// Creates a new center point tile object on the position of the center tile (replacement)
cx = global.tileArray[global.cq,global.cr].x;
cy = global.tileArray[global.cq,global.cr].y;
cTile = instance_create(cx,cy,obj_tile_cp);
with(cTile) {
    self.q = global.cq;
    self.r = global.cr;   
}
global.tileArray[global.cq,global.cr] = cTile;
global.IDtileArray[global.cq,global.cr] = cTile.id;

// Creates terrain tiles based on the size of the land:
landsize = floor(global.cq / 2) * 100;
// i = 0;
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
                    
                    scr_terrainRandomizer(self);
                }
                global.tileArray[q,r] = tTile;              
                global.IDtileArray[q,r] = tTile.id;
            }
        }
    }
}
// show_message(string(i));

