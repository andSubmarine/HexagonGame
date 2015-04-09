minQ = argument0;
minR = argument1;

w = room_width;
h = room_height;

// Creates first tile bottom-left with q = 0 and r = 0
tile0 = instance_create(0,h-43,obj_tile_par);
with (tile0) {
    q = 0; r = 0;
}
global.tileArray[0,0] = tile0;

// Creates the other tiles using the first tile
for (q = 0; q < minQ; q++) {
    for (r = 0; r < minR; r++) {
        xt = q * 75 + tile0.x;
        yt = r * -86 + tile0.y + 43 * q;
        if (xt <= w && yt <= h) {
            tile = instance_create(xt,yt,obj_tile_par);
            with (tile) {
                q = other.q; 
                r = other.r;
            }
        }
    }
}

