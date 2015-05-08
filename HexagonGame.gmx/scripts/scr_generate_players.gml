nPlayers = argument0;

if (nPlayers <= 4) {
    global.players = instance_create(room_width/2,room_height/2,obj_player_par);
    with (global.players) {
        nr_of_players = other.nPlayers;
        
        // Creates array for storage of ressources
        for (i = 0; i < nr_of_players;i++) {
            global.ressources[i,0] = 0;    // Wood
            global.ressources[i,1] = 0;    // Stone
            global.ressources[i,2] = 0;    // Food
            global.ressources[i,3] = 0;    // Gold
        }
        
        // Creates array for storage of victory points
        for (i = 0; i < nr_of_players;i++) {
            global.arrayVP[i] = 0;
        }
        
        // Creates array for storage of workers
        for (i = 0; i < nr_of_players;i++) {
             iWorker = instance_create(room_width/2-10,room_height/2+20,obj_worker);
             with (iWorker) {
                player_id = other.i;
                image_index = other.i;
                offsetx = 20;
                x = x + offsetx * other.i;
                q = global.cq;
                r = global.cr;
             }
             global.workers[i,0] = iWorker;
        }
        
        // Creates array for storage of villages
        for (i = 0; i < nr_of_players;i++) {
            global.villages[i,0] = 0;
        }
        
        // Creates array for storage of fortresses
        for (i = 0; i < nr_of_players;i++) {
            global.fortresses[i,0] = 0;
        }
    }
} else {
    show_message("Too many players - the game currently supports max 4")
}
