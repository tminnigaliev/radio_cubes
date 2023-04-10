use <cap_1x1.scad>
use <sym_transistor_npn.scad>
include <settings.scad>

module cap_1x1_npn_transistor_flipped(width, height, thickness)
{
    translate([width, 0,0]) mirror([1,0,0]) difference()
    {
        cap_1x1(width, height, thickness, 0); //14
        translate([width/2,width/2,-0.01])mirror([0,1,0]) transistor_npn(25, glyph_thickness, glyph_depth);
    }
}

cap_1x1_npn_transistor_flipped(cap_width, cap_height, cap_thickness);
