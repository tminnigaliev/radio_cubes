module arrow(thickness, length, size, height)
{
    if (length > 0)
    {
        translate([thickness,-thickness/2,0])cube([length-thickness, thickness, height]);
        rotate([0,0,37])translate([0,-3*thickness/4])cube([size, thickness, height]);
        rotate([0,0,-37])translate([0,-thickness/4])cube([size, thickness, height]);
    }
    else
    {
        translate([0,-thickness/2, 0])cube([-length-thickness, thickness, height]);
        translate([-length,0,0]) mirror([1,0,0]) rotate([0,0,30])translate([0,-3*thickness/4,0])cube([size, thickness, height]);
        translate([-length,0,0]) mirror([1,0,0])rotate([0,0,-30])translate([0,-thickness/4])cube([size, thickness, height]);
    }
}

arrow(0.7, -20, 4.5, 1);