use <cap_1x1.scad>
use <sym_transistor_npn.scad>
include <settings.scad>

module cap_1x1_npn_transistor(width, height, thickness)
{
    difference()
    {
        cap_1x1(width, height, thickness, 14);
        translate([3*width/8-0.5,width/2,-0.01])
        translate([-width/25,0,-0.01])mirror([0,1,0]) transistor_npn(25, glyph_thickness, glyph_depth);
    }
}

cap_1x1_npn_transistor(cap_width, cap_height, cap_thickness);
