// Calculates the center point based on the highest tile
/* global.tileArray[q,r] */
lenH = array_height_2d(global.tileArray) - 1;
len = array_length_2d(global.tileArray,lenH)-1;

cq = lenH / 2;
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

// Creates terrain based on the size of the map:

