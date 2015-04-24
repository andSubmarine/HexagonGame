tile = argument0;

with(tile) {
    // Determines terrain type
    randNr = random_range(0,100);
    if (randNr <= 30) {   
        terrain = 0;    // grasslands
    } else if (randNr <= 60) {
        terrain = 1;    // rocklands
    } else if (randNr <= 70) {
        terrain = 2;    // swamplands
    } else if (randNr <= 100) {
        terrain = 3;    // woodlands
    }

        /*show_message(string(randNr))*/
    // Determine terrain multiplier
    randMult = irandom(5);     // Returns a number from 0 to 5 (6 possible)   
    multiplier = instance_create(x,y,obj_multiplier);
    with (multiplier) {
        image_index = other.randMult;
    }
    multiplier = randMult;
}
