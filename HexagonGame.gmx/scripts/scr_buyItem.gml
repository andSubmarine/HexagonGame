item = argument0;
player_id = global.players.player_id;
buyItem = global.buyItem;
tile = global.markedTile;

global.ressources[player_id,0] -= item.costWood;
global.ressources[player_id,1] -= item.costStone;
global.ressources[player_id,2] -= item.costFood;
global.ressources[player_id,3] -= item.costGold;

if (buyItem == 1) {
    worker = instance_create(tile.x,tile.y,obj_worker);
    with (worker) {
        image_index = other.player_id;
        q = other.tile.q;
        r = other.tile.r;
    }
    len = array_length_2d(global.workers,player_id);
    global.workers[player_id,len] = worker;
} else { 
    
    if (buyItem == 2) {
        village = instance_create(tile.x,tile.y,obj_village);
        with (village) {
            image_index = other.player_id;
            q = other.tile.q;
            r = other.tile.r;
        }
        len = array_length_2d(global.villages,player_id);
        global.villages[player_id,len] = village;
        global.arrayVP[player_id] += 2;
    } else if (buyItem == 3) {
        fortress = instance_create(tile.x,tile.y,obj_fortress);
        with (fortress) {
            image_index = other.player_id;
            q = other.tile.q;
            r = other.tile.r;
        }   
        len = array_length_2d(global.fortresses,player_id);
        global.fortresses[player_id,len] = fortress;
        global.arrayVP[player_id] += 5;
    }
}
