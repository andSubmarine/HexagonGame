// Loop to run through all players workers:
for (i = 0; i < global.players.nr_of_players;i++) { // i is used as the player_id
    len = array_length_2d(global.workers,i);
    for (j = 0; j < len; j++) {  // j is used as the worker_id
        worker = global.workers[i,j];
        wTile = global.tileArray[worker.q,worker.r];
        if (wTile.terrain == 0) {   // Grasslands
            global.ressources[i,2] += wTile.multiplier + 1;     // Food
        } else if (wTile.terrain == 1) { // Rocky Lands
            global.ressources[i,1] += wTile.multiplier + 1;     // Stone
        } else if (wTile.terrain == 2) { // Swamps
            global.ressources[i,2] += (wTile.multiplier +1 ) / 2; // Food with halved yield
        } else if (wTile.terrain == 3) { // Forest
            global.ressources[i,0] += wTile.multiplier + 1;     // Wood
        }
    }
}
