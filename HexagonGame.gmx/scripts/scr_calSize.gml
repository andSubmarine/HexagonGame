mode = argument0;
w = argument1;
h = argument2;
minq = argument3;
minr = argument4;

if (mode == 1) {
    minq = w / 75 + 1;   
    minr = 0;
} else if (mode == 2) {
    w = 75 * q - 75;
    
}
