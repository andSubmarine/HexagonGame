hTile = argument0;
i = argument1;

wq = hTile.q;
wr = hTile.r;

if (i == 0) {
    tile = global.tileArray[wq+1,wr];
} else if (i == 1) {
    tile = global.tileArray[wq+1,wr+1];
} else if (i == 2) {
    tile = global.tileArray[wq-1,wr];
} else if (i == 3) {
    tile = global.tileArray[wq-1,wr-1];
} else if (i == 4) {
    tile = global.tileArray[wq,wr+1];
} else if (i == 5) {
    tile = global.tileArray[wq,wr-1];
}

return tile;
