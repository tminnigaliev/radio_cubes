use <sym_switch.scad>

module switch_reed(length, width, thickness, height)
{
    switch(length, width, thickness, height);
    radius = width/1.15;
    translate([2*length/4+thickness/2,0,0]) difference()
    {
        cylinder(r=radius, h=height, $fn=64);
        translate([0,0,-thickness/2])cylinder(r=(radius-thickness), h=(height+thickness), $fn=64);
    }
}

switch_reed(30, 10, 1, 0.5);