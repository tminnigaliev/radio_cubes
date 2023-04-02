use <sym_inductor.scad>
include <settings.scad>

module transformer_1_1(height, depth, thickness)
{
    sym_inductor(height, depth, thickness);
    translate([height/2.5,0,0]) cube([2*thickness, height, depth]);
    translate([0.87*height,0,0])mirror([1,0,0])sym_inductor(height, depth, thickness);
}

//sym_inductor(30, 0.5, 1);
transformer_1_1(30, 0.5, 1);
