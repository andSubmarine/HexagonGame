w = room_width;
h = room_height;
d = sqrt(w^2+h^2);

// Creates first tile bottom-left with q = 0 and r = 0
tile0 = instance_create(0,h-43,obj_tile_par);
with (tile0) {
    q = 0; r = 0;
}
global.tileArray[0,0] = tile0;

// Creates the other tiles using the first tile
for (q = 0; q < 15; q++) {
    xt = q * 75 + tile0.x;
    if (q mod 2 == 0) {
        for(r = 0; r < 10; r++) {
            yt = r * -86 + tile0.y + 43;
            tile = instance_create(xt,yt,obj_tile_par);
            with (tile) {
                q = other.q; 
                r = other.r;
            }
            global.tileArray[tile.q,tile.r] = tile;
        }
    } else {
        for(r = 0; r < 11; r++) {
            yt = r * -86 + tile0.y;
            tile = instance_create(xt,yt,obj_tile_par);
            with (tile) {
                q = other.q; 
                r = other.r;
            }
            global.tileArray[tile.q,tile.r] = tile; 
        }   
    }
}

/*
global.tileArray[0]=cp;
ID = 1;
for(q = -5; q <= 5; q++) {
    xt = cp.x + q * 150;
    for(r = -5; r <= 5; r++) {
        yt = cp.y + r * 86;
        global.tileArray[ID] = instance_create(xt,yt,obj_tile_par);
        with (global.tileArray[ID]) {
            q = other.q;
            r = other.r;
            ID = other.ID
        }
        ID++;
    }
}
*/

/*
// Creates a columm near the center point (with q = 0)
for (i = -5; i <= 5; i++) {
    tile1 = instance_create(cp.x,cp.y+86*i,obj_tile_par);
    with (tile1) {
        q = 0;
        r = -other.i;
    }
    global.tileArray[tile1.q,tile1.r] = tile1;
}

// Creates the rest of the columms
for (q = -3; q <= 3; q++) {
    xt = cp.x + q * 150;
    for (r = -5; r <= 5 and q != 0; r++) {
        yt = cp.y + 86 * r;
        tile1 = instance_create(xt,yt, obj_tile_par);  
        with (tile1) {
            q = other.q;
            r = -other.r;
        }      
        global.tileArray[tile1.q,tile1.r] = tile1;
    }
} */
