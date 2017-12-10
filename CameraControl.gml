//find distance to enemy
with(obj_Player){
    distance2 = distance_to_object(obj_NPC_Enemy_Collision);
}
    
//zoom in and adjust for zoom
if(obj_Player.distance2 < 600){
    if(view_hview[0] > 720){
        tween2 = 0; //reseting zoom out
        if (view_hview[0] <= 834) {tween -= 0.28;}
        else if (view_hview[0] > 834 && view_hview[0] < 986) tween = 8;
        else if (view_hview[0] >= 986) {tween += 0.28;}
        if( tween < 0) tween = 0; //dont drop below 0
        view_hview[0] -= tween; //zooms in the y direction
        view_wview[0] = (view_hview[0] * aspectRatio); //zooms in the x direction
        view_yview[0] += (tween/2);   //adjust y camera position
        view_xview[0] += (tween/2) * aspectRatio;    //adjust x camera position
    }
}
//zoom out and adjust for zoom
else if(obj_Player.distance2 >= 600){
    if(view_hview[0] < 1100){
        tween = 0; //ressetting zoom in
        if (view_hview[0] <= 834) {tween2 += 0.28;}
        else if (view_hview[0] > 834 && view_hview[0] < 986) tween2 = 8;
        else if (view_hview[0] >= 986) {tween2 -= 0.28;}
        if(tween2 < 0) tween2 = 0; //don't drop below 0
        view_hview[0] += tween2; //zooms out in the y direction
        view_yview[0] -= (tween2/2);   //adjust y
        view_wview[0] = (view_hview[0] * aspectRatio); //zooms out in the x direction
        view_xview[0] -= (tween2/2) * aspectRatio;    //adjust x
    }
}
