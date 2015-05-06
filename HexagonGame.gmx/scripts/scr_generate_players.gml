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
    }
} else {
    show_message("Too many players - the game currently supports max 4")
}
