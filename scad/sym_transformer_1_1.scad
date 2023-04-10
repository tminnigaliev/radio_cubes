use <sym_inductor.scad>
include <settings.scad>

module transformer_1_1(height, depth, thickness)
{
    sym_inductor(1.135*height, depth, thickness, 45);
    
    translate([height/2-thickness,height/5,0]) cube([2*thickness, 3*height/5, depth]);
    
    translate([height,0,0])mirror([1,0,0])sym_inductor(1.135*height, depth, thickness, 45);
}

//sym_inductor(30, 0.5, 1);
transformer_1_1(30, 0.5, 1);
