module arrow(thickness, length, size, height)
{
    translate([thickness,-thickness/2])cube([length-thickness, thickness, height]);
    rotate([0,0,37])translate([0,-3*thickness/4])cube([size, thickness, height]);
    rotate([0,0,-37])translate([0,-thickness/4])cube([size, thickness, height]);
}

//arrow(0.7, 20, 4.5, 1);