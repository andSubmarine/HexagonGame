item = argument0;
player_id = global.players.player_id;

buyable = true;
if (global.ressources[player_id,0] < item.costWood) {
    show_message("Wood"+string(global.ressources[player_id,0])+string(item.costWood));
    buyable = false;
} else if (global.ressources[player_id,1] < item.costStone) {
    show_message("Stone"+string(global.ressources[player_id,1])+string(item.costStone));
    buyable = false;
} else if (global.ressources[player_id,2] < item.costFood) {
    show_message("Food"+string(global.ressources[player_id,2])+string(item.costFood));
    buyable = false;
} else if (global.ressources[player_id,3] < item.costGold) {
    show_message("Gold"+string(global.ressources[player_id,3])+string(item.costGold));
    buyable = false;
} 

return buyable;
