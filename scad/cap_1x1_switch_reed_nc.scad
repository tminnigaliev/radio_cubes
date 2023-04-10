use <cap_1x1.scad>
use <sym_switch_reed_nc.scad>
include <settings.scad>

// nc = normally closed
module cap_1x1_switch_reed_nc(width, height, thickness)
{
    difference()
    {
        cap_1x1(width, height, thickness, 0); //3
        translate([0,width/2,-0.01]) switch_reed_nc(width, width/3, glyph_thickness, glyph_depth);
    }
}

cap_1x1_switch_reed_nc(cap_width, cap_height, cap_thickness);
