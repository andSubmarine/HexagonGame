viewSelection = global.viewSize;
if (viewSelection == 1) {
    w = 1080; h = 960;
} else {
    w = 640; h = 480;
}

view_wview[0] = w; //view_wport[0] = w;
view_hview[0] = h; //view_hport[0] = w;
xw = (room_width/2)-(w/2); view_xview[0] = xw; //view_xport[0] = xw;
yh = (room_height/2)-(h/2); view_yview[0] = yh; //view_yport[0] = yh;
