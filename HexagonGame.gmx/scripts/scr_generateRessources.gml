// Loop to run through all players workers:
for (i = 0; i < global.players.nr_of_players;i++) { // i is used as the player_id
    len = array_length_2d(global.workers,i);
    for (j = 0; j < len; j++) {  // j is used as the worker_id
        worker = global.workers[i,j];
        wTile = global.tileArray[worker.q,worker.r];
        if (wTile.terrain == 0) {   // Grasslands
            global.ressources[i,2] += wTile.multiplier + 1;         // Food
        } else if (wTile.terrain == 1) { // Rocky Lands
            global.ressources[i,1] += wTile.multiplier + 1;         // Stone
        } else if (wTile.terrain == 2) { // Swamps
            global.ressources[i,2] += (wTile.multiplier +1 ) / 2;   // Food with halved yield
        } else if (wTile.terrain == 3) { // Forest
            global.ressources[i,0] += wTile.multiplier + 1;         // Wood
        }
    }
}

// Loop to run through all players villages
for (i = 0; i < global.players.nr_of_players;i++) { // i is used as the player_id
    len = array_length_2d(global.villages,i);
    for (j = 1; j < len; j++) {  // j is used as the village_id
        village = global.villages[i,j];
        wTile = global.tileArray[village.q,village.r];
        if (wTile.terrain == 0) {   // Grasslands
            global.ressources[i,2] += wTile.multiplier + 1;         // Food
        } else if (wTile.terrain == 1) { // Rocky Lands
            global.ressources[i,1] += wTile.multiplier + 1;         // Stone
        } else if (wTile.terrain == 2) { // Swamps
            global.ressources[i,2] += (wTile.multiplier +1 ) / 2;   // Food with halved yield
        } else if (wTile.terrain == 3) { // Forest
            global.ressources[i,0] += wTile.multiplier + 1;         // Wood
        }
        global.ressources[i,3] += 2;    // Add 5 gold pr. village
    }
}

// Loop to run through all players fortresses
for (i = 0; i < global.players.nr_of_players;i++) { // i is used as the player_id
    len = array_length_2d(global.fortresses,i);
    for (j = 1; j < len; j++) {  // j is used as the fortress_id
        fortress = global.fortresses[i,j];
        wTile = global.tileArray[fortress.q,fortress.r];
        if (wTile.terrain == 0) {   // Grasslands
            global.ressources[i,2] += wTile.multiplier + 1;         // Food
        } else if (wTile.terrain == 1) { // Rocky Lands
            global.ressources[i,1] += wTile.multiplier + 1;         // Stone
        } else if (wTile.terrain == 2) { // Swamps
            global.ressources[i,2] += (wTile.multiplier +1 ) / 2;   // Food with halved yield
        } else if (wTile.terrain == 3) { // Forest
            global.ressources[i,0] += wTile.multiplier + 1;         // Wood
        }
        global.ressources[i,3] += 5;    // Add 5 gold pr. fortress
    }
}
