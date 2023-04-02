module ground(length, width, thickness, height)
{
    translate([0,-thickness/2,0])cube([length/2, thickness, height]);
    
    translate([length/2,-width/2, 0])cube([thickness, width, height]);
}

ground(30, 12, 1, 1);